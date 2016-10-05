@setlocal
cd %CD%
del config.properties
copy config.properties.prod config.properties
@endlocal