#!/bin/bash

# Create MongoDB user and password on initialized database.
# Uses passed in environmental strings.

set -e

mongoimport -d $MONGO_INITDB_DATABASE -u $MONGO_USER -p $MONGO_PASSWORD -c shifts --file /docker-entrypoint-initdb.d/02-data-shifts.json
