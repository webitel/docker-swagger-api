#!/bin/sh

curl -so /app/swagger.json https://raw.githubusercontent.com/navrotskyj/webitel_sdk/master/swagger/api.json

/usr/share/nginx/run.sh
