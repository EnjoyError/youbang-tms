@echo off
java -Xmx512M -cp "%~dp0\src\main\java;%~dp0\target\youbang-tms\WEB-INF\classes;%MAVEN_REPO%\thorn5\jars\thorn5-client-5.0.1.13.jar;%MAVEN_REPO%\thorn5\jars\thorn5-rmc-5.0.1.13.jar;%MAVEN_REPO%\thorn5\jars\thorn5-rule-5.0.1.13.jar;%MAVEN_REPO%\gwt\jars\gwt-user-2.1.1.jar;%MAVEN_REPO%\gwt\jars\gwt-dev-2.1.1.jar;%MAVEN_REPO%\gwt\jars\gwt-voices-2.0.0.jar;%MAVEN_REPO%/gwt/jars/gwt-crypto-1.0.3.jar;%MAVEN_REPO%\gxt\jars\gwtext-2.0.5.jar" com.google.gwt.dev.GWTCompiler -out "%~dp0\www" %* com.vtradex.tms.TMS
if ERRORLEVEL 1 goto error
if ERRORLEVEL 0 goto exit
:error
pause
:exit
