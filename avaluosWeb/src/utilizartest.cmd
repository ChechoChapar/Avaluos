@setlocal
cd %CD%
del config.properties
copy config.properties.test config.properties
@endlocal