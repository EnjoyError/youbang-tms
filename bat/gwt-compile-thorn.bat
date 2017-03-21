@echo off

%~d0
cd %~dp0
cd ..

echo [INFO] Start GWT compile to JavaScript...

set JAVA_OPTS=-server -Xms512m -Xmx512m -XX:PermSize=512m -XX:MaxPermSize=512m

echo [INFO] GWT jars...
set GWT_HOME=%MAVEN_REPO%\gwt\jars
set validation-api=%GWT_HOME%\validation-api-1.0.0.GA-sources.jar;
set gwt-user=%GWT_HOME%\gwt-user-2.1.1.jar;
set gwt-dev=%GWT_HOME%\gwt-dev-2.1.1.jar;
set gwt-crypto=%GWT_HOME%\gwt-crypto-1.0.3.jar;
set gwtext=%GWT_HOME%\gwtext-2.0.5.jar;

set GWT_JAR=%validation-api%%gwt-user%%gwt-dev%%gwt-crypto%%gwtext%;

echo [INFO] THORN SRC...
set THORN_HOME=%~dp0\..\..
set thorn-client=%THORN_HOME%\thorn5-client\src\main\java;%THORN_HOME%\thorn5-client\target\classes;
set thorn-rule=%THORN_HOME%\thorn5-rule\src\main\java;%THORN_HOME%\thorn5-rule\target\classes;
set thorn-rmc=%THORN_HOME%\thorn5-rmc\src\main\java;%THORN_HOME%\thorn5-rmc\target\classes;

set THORN_JAR=%thorn-client%%thorn-rule%%thorn-rmc%;

echo [INFO] Current Project
set CURRENT_PROJECT=src\main\java;target\tms\classes;

set ALL_JARS=%GWT_JAR%%THORN_JAR%%CURRENT_PROJECT%

java %JAVA_OPTS% -cp "%ALL_JARS%" com.google.gwt.dev.Compiler -war "www" %* com.vtradex.tms.TMS
if errorlevel 1 goto error

goto end
:error
echo [ERROR] check error log, please...
:end
pause