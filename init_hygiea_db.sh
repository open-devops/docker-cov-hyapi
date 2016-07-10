#!/bin/sh

mongo mongo:27017 <<EOF
use dashboard
db.createUser({user: "db", pwd: "dbpass", roles: [{role: "readWrite", db: "dashboard"}]})
EOF
