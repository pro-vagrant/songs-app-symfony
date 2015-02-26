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

mysql -u root < "${BASEDIR}/00-extra/db/create-empty-database.sql"

php "${BASEDIR}/app/console" cache:clear --env=prod
php "${BASEDIR}/app/console" cache:warmup --env=prod

php "${BASEDIR}/app/console" cache:clear
php "${BASEDIR}/app/console" cache:warmup

php "${BASEDIR}/app/console" doctrine:schema:update --force

sudo chmod -R 0777 /app/symfony2app
sudo chown -R "${WHOAMI}:${WHOAMI}" /app/symfony2app
