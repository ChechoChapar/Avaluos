#Este bash shell hace el llamado a el comando de encripcion pgp
#con el modificador -e para encriptar el archivo, con el  +force para sobreescribir
#archivos existentes y finalmente con el nombre de la llave: asobancaria
#La maquina en la cual se ejecute ya debera haber importado la llave de asobancaria.asc
#a su llavero asi como marcar esta llave como confiable, estos permisos de encripcion
#los debe tener el usuario desde el cual ejecuta el servidor de aplicacines, actualmente Weblogic
/usr/bin/pgp -e $1 +force asobancaria