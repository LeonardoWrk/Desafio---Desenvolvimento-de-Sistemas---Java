@echo off
setlocal

echo === Checando WildFly em C:\ ===

set "WILDFLY_DIR=C:\wildfly-preview-26.1.3.Final"
set "SOURCE_DIR=%~dp0wildfly-preview-26.1.3.Final"

rem Se a pasta já existir, só executa o standalone.bat
if exist "%WILDFLY_DIR%" (
    echo WildFly ja existe em %WILDFLY_DIR%
    echo Iniciando standalone.bat...
    call "%WILDFLY_DIR%\bin\standalone.bat"
    goto :EOF
)

rem Se nao existir, copia a pasta e depois executa o standalone.bat
echo Copiando WildFly para %WILDFLY_DIR%...
xcopy "%SOURCE_DIR%" "%WILDFLY_DIR%\" /E /H /C /I /Y

echo Copia concluida.
echo Iniciando standalone.bat...

call "%WILDFLY_DIR%\bin\standalone.bat"

endlocal
pause
