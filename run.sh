#!/bin/sh

curl -so /app/swagger.json https://raw.githubusercontent.com/webitel/engine/to_go/script/api/api.swagger.json

/usr/share/nginx/run.sh
