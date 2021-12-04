@echo off
set groupId=%1
set artifactId=%2
set version=%3
set filePath=%4

mvn install:install-file ^
-DgroupId=%groupId% ^
-DartifactId=%artifactId% ^
-Dversion=%version% ^
-Dfile=%filePath% ^
-Dpackaging=jar ^
-DgeneratePom=true ^
-DlocalRepositoryPath=. ^
-DcreateChecksum=true