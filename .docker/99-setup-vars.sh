#!/bin/bash

cat > /app/vars.py <<- EOM

ENDPOINT = "${ENDPOINT}"
API_KEY = "${API_KEY}"
LOOP_EVERY = ${LOOP_EVERY:=120}
SERVER_THREADS = ${SERVER_THREADS:=50}
QUEUE_WARN = ${QUEUE_WARN:=1000}
SLOW_WARNING_THRESHOLD = ${SLOW_WARNING_THRESHOLD:=10}
SLOW_CRITICAL_THRESHOLD = ${SLOW_CRITICAL_THRESHOLD:=10}
MAX_TIMEOUT = ${MAX_TIMEOUT:=10}
SSL_DAYS_WARN = ${SSL_DAYS_WARN:=10}
SSL_DAYS_CRIT = ${SSL_DAYS_CRIT:=10}

EOM
echo '----------------------------------------------------------'

cat /app/vars.py

echo '----------------------------------------------------------'