#!/usr/bin/env bash
URL=${1:-http://localhost:4499}
TIMEOUT=5
LOGFILE=${LOGFILE:-/tmp/app_checker.log}

timestamp() { date +"%Y-%m-%d %H:%M:%S"; }
log() { echo "[$(timestamp)] $*" | tee -a "$LOGFILE"; }

HTTP_CODE=$(curl -m $TIMEOUT -s -o /dev/null -w "%{http_code}" -k "$URL")
if [[ $HTTP_CODE -ge 200 && $HTTP_CODE -lt 400 ]]; then
  log "UP: $URL (HTTP $HTTP_CODE)"
else
  log "DOWN: $URL (HTTP $HTTP_CODE)"
fi

