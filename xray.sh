#!/bin/sh
if [ ! -f UUID ]; then
  UUID="fb7aa936-a2c1-4531-bdee-0cd43786dda4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

