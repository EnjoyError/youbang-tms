@echo off

set MVN=maven
set MAVEN_OPTS=%MAVEN_OPTS% -XX:MaxPermSize=256m

%~d0
cd %~dp0
cd ..

call %MVN% clean jar:jar
if errorlevel 1 goto error

goto end
:error
echo Error Happen...
:end
pause