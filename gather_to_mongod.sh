#! /bin/sh

SCRIPT_DIR=$(dirname "$0")
cd "$SCRIPT_DIR" || exit 1

if [ "$1" = "venv" ]; then
	. venv/bin/activate
fi

if [ -r gather_to_mongod.env ]; then
	. gather_to_mongo.env
fi

while :; do
	python3 -u gather_to_mongo.py
	sleep 60
done
