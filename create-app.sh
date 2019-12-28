#!/bin/bash

#
# host address from output from shipa install -o config.yml
#
HOST="35.223.94.0.nip.io"
APPNAME="new-python-app"

rm -rf $APPNAME

./shipa app-create $APPNAME python --pool=theonepool --team=admin

if [ $? -ne 0 ]; then
	exit 1
fi

git clone ssh://git@$HOST:2222/$APPNAME.git
cp -v template-app/* $APPNAME/ 




