@setlocal

cd %CD%

del messaging-config.xml
copy messaging-config.xml.prod 	messaging-config.xml

del proxy-config.xml
copy proxy-config.xml.prod 		proxy-config.xml

del remoting-config.xml
copy remoting-config.xml.prod 	remoting-config.xml

del services-config.xml
copy services-config.xml.prod 	services-config.xml

@endlocal