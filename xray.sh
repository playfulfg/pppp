#!/bin/sh
if [ ! -f UUID ]; then
  UUID="29dcca08-125a-4dfb-9989-561cb43d9826"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

