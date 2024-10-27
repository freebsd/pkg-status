#! /bin/sh

if [ -z "$MONGO_URI" ]; then
	echo "The MONGO_URI variable is not set."
	exit 1
fi

if [ "$1" = "venv" ]; then
	. venv/bin/activate
fi

if [ -r gather_to_mongod.env ]; then
	. gather_to_mongo.env
fi

while :; do
	python3 gather_to_mongo.py
	sleep 60
done
