#!/bin/bash

# If
#   (not within Vagrant Guest OS) and (not within Travis)
# then
#    exit 1

if [ `facter virtual` == "virtualbox" ];
then
    BASEDIR=/vagrant
elif [ `whoami` == "travis" ];
then
    BASEDIR=`pwd`
else
    echo The command should be executed within the guest OS!
    exit 1
fi

WHOAMI=`whoami`

echo "Initialize WHOAMI: ${WHOAMI}"
echo "Initialize BASEDIR: ${BASEDIR}"

sudo mkdir -p /app/symfony2app/app/cache
sudo mkdir -p /app/symfony2app/app/logs
sudo mkdir -p /app/symfony2app/app/cache/sessions
sudo mkdir -p /app/symfony2app/vendor

sudo chmod -R 0777 /app/symfony2app
sudo chown -R "${WHOAMI}:${WHOAMI}" /app/symfony2app
