@setlocal
cd %CD%
del config.properties
copy config.properties.local config.properties
@endlocal