@setlocal

cd %CD%

del messaging-config.xml
copy messaging-config.xml.desa 	messaging-config.xml

del proxy-config.xml
copy proxy-config.xml.desa 		proxy-config.xml

del remoting-config.xml
copy remoting-config.xml.desa 	remoting-config.xml

del services-config.xml
copy services-config.xml.desa 	services-config.xml

@endlocal