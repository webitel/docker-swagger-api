#!/bin/sh

curl -so /app/swagger.json https://raw.githubusercontent.com/webitel/protos/main/swagger/api.json

if [ "$HOST_NAME" ]; then
    sed -i 's/dev.webitel.com/'$HOST_NAME'/g' /app/swagger.json
fi

/usr/share/nginx/run.sh
