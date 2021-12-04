#!/bin/bash
groupId=$1
artifactId=$2
version=$3
filePath=$4

mvn install:install-file \
  -DgroupId="$groupId" \
  -DartifactId="$artifactId" \
  -Dversion="$version" \
  -Dfile="$filePath" \
  -Dpackaging=jar \
  -DgeneratePom=true \
  -DlocalRepositoryPath=. \
  -DcreateChecksum=true