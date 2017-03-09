#!/bin/sh

if [ "$ACCESS_KEY" == "" ]; then ACCESS_KEY=changeme; fi
if [ "$SECRET_KEY" == "" ]; then SECRET_KEY=changeme; fi

sed -i.bak "s/^access_key.*$/access_key = ${ACCESS_KEY}/g" /root/.s3cfg
sed -i.bak "s/^secret_key.*$/secret_key = ${SECRET_KEY}/g" /root/.s3cfg

s3cmd $@
