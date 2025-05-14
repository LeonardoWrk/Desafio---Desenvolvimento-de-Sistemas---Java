@echo off
setlocal

:: Nome da pasta do Maven (deve estar no mesmo diretório deste .bat ou fornecer caminho completo)
set MAVEN_FOLDER=apache-maven-3.9.9

:: Caminho de destino
set DEST_DIR=C:\%MAVEN_FOLDER%

:: Verificar se a pasta já existe em C:\
if exist "%DEST_DIR%" (
    echo Pasta %DEST_DIR% ja existe.
) else (
    echo Copiando pasta %MAVEN_FOLDER% para %DEST_DIR%...
    xcopy "%MAVEN_FOLDER%" "%DEST_DIR%" /E /I /H
)

:: Configurar variáveis de ambiente temporariamente
set MAVEN_HOME=%DEST_DIR%
set PATH=%MAVEN_HOME%\bin;%PATH%

echo.
echo Apache Maven %MAVEN_FOLDER% configurado com sucesso.
echo.
echo MAVEN_HOME=%MAVEN_HOME%
echo PATH atualizado temporariamente.

:: Verificar se o Maven foi instalado corretamente
echo.
mvn -v

pause
