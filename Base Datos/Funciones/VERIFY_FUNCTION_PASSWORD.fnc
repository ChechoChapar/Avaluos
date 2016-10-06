CREATE OR REPLACE FUNCTION VERIFY_FUNCTION_PASSWORD   (username VARCHAR2,
  PASSWORD VARCHAR2,
  old_password VARCHAR2)
  RETURN BOOLEAN IS
   n BOOLEAN;
   m INTEGER;
   differ INTEGER;
   isdigit BOOLEAN;
   ischar  BOOLEAN;
   ispunct BOOLEAN;
   digitarray VARCHAR2(20);
   punctarray VARCHAR2(25);
   chararray VARCHAR2(52);

BEGIN
   digitarray:= '0123456789';
   chararray:= 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
   punctarray:='!"#$%&()``*+,-/:;<=>?_';

   -- Check if the password is same as the username
   IF NLS_LOWER(PASSWORD) = NLS_LOWER(username) THEN
     RAISE_APPLICATION_ERROR(-20001, 'La clave no puede ser igual al código del usuario');
   END IF;

   -- Check for the minimum length of the password
   IF LENGTH(PASSWORD) < 8 or  LENGTH(PASSWORD) > 16 THEN
      RAISE_APPLICATION_ERROR(-20002, 'La clave debe ser de mínimo 8 y máximo 16 caracteres');
   END IF;

   -- Check if the password is too simple. A dictionary of words may be
   -- maintained and a check may be made so as not to allow the words
   -- that are too simple for the password.
   IF NLS_LOWER(PASSWORD) IN ('welcome', 'database', 'account', 'user', 'password', 'oracle', 'computer', 'abcd') THEN
      RAISE_APPLICATION_ERROR(-20002, 'La clave no puede ser una palabra reservada o muy simple');
   END IF;

   -- Check if the password contains at least one letter, one digit and one
   -- punctuation mark.
   -- 1. Check for the digit
   isdigit:=FALSE;
   m := LENGTH(PASSWORD);
   FOR i IN 1..10 LOOP
      FOR j IN 1..m LOOP
         IF SUBSTR(PASSWORD,j,1) = SUBSTR(digitarray,i,1) THEN
            isdigit:=TRUE;
             GOTO findchar;
         END IF;
      END LOOP;
   END LOOP;
   IF isdigit = FALSE THEN
      RAISE_APPLICATION_ERROR(-20003, 'La clave debe contener al menos un dígito, un signo de puntuación y un caracter');
   END IF;
   -- 2. Check for the character
   <<findchar>>
   ischar:=FALSE;
   FOR i IN 1..LENGTH(chararray) LOOP
      FOR j IN 1..m LOOP
         IF SUBSTR(PASSWORD,j,1) = SUBSTR(chararray,i,1) THEN
            ischar:=TRUE;
             GOTO findpunct;
         END IF;
      END LOOP;
   END LOOP;
   IF ischar = FALSE THEN
      RAISE_APPLICATION_ERROR(-20003, 'La clave debe contener al menos un dígito, un signo de puntuación y un caracter');
   END IF;
   -- 3. Check for the punctuation
   <<findpunct>>
   ispunct:=FALSE;
   /* FOR i IN 1..length(punctarray) LOOP
   FOR j IN 1..m LOOP
       IF substr(password,j,1) = substr(punctarray,i,1) THEN
         ispunct:=TRUE;
          GOTO endsearch;
       END IF;
   END LOOP;
  END LOOP;
  IF ispunct = FALSE THEN
      raise_application_error(-20003, 'Password should contain at least one \
              digit, one character and one punctuation');
  END IF; */

   <<endsearch>>
   -- Check if the password differs from the previous password by at least
   -- 3 letters
   IF old_password IS NOT NULL THEN
     differ := LENGTH(old_password) - LENGTH(PASSWORD);

     IF ABS(differ) < 3 THEN
       IF LENGTH(PASSWORD) < LENGTH(old_password) THEN
         m := LENGTH(PASSWORD);
       ELSE
         m := LENGTH(old_password);
       END IF;

       differ := ABS(differ);
       FOR i IN 1..m LOOP
         IF SUBSTR(PASSWORD,i,1) != SUBSTR(old_password,i,1) THEN
           differ := differ + 1;
         END IF;
       END LOOP;

       IF differ < 3 THEN
         RAISE_APPLICATION_ERROR(-20004, 'La clave debe ser diferente en por lo menos 3 caracteres a la clave anterior');
       END IF;
     END IF;
   END IF;
   -- Everything is fine; return TRUE ;
   RETURN(TRUE);
END;
/


