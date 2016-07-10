#!/bin/sh

mongo <<EOF
use dashboard
db.createUser({user: "db", pwd: "dbpass", roles: [{role: "readWrite", db: "dashboard"}]})
EOF
