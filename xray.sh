#!/bin/sh
if [ ! -f UUID ]; then
  UUID="08158efe-d2a7-4ada-8bc3-95145a7aca37"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

