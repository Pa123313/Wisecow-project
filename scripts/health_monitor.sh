#!/usr/bin/env bash
INTERVAL=${1:-60}
LOGFILE=${LOGFILE:-/tmp/health_monitor.log}
CPU_THRESHOLD=80
MEM_THRESHOLD=80
DISK_THRESHOLD=80

timestamp() { date +"%Y-%m-%d %H:%M:%S"; }
log() { echo "[$(timestamp)] $*" | tee -a "$LOGFILE"; }

check_cpu() {
  CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}' | sed 's/,//')
  CPU_USAGE=$(awk "BEGIN {print 100 - $CPU_IDLE}")
  if (( ${CPU_USAGE%.*} >= CPU_THRESHOLD )); then
    log "ALERT: CPU high at $CPU_USAGE%"
  fi
}

check_mem() {
  read total used free <<< $(free -m | awk 'NR==2{print $2" "$3" "$4}')
  MEM_USAGE=$(awk "BEGIN {printf \"%.0f\", ($used/$total)*100}")
  if (( MEM_USAGE >= MEM_THRESHOLD )); then
    log "ALERT: Memory high at $MEM_USAGE% ($used MB / $total MB)"
  fi
}

check_disk() {
  PCT=$(df -h / | awk 'NR==2{gsub(/%/,""); print $5}')
  if (( PCT >= DISK_THRESHOLD )); then
    log "ALERT: Disk high at $PCT%"
  fi
}

main() {
  log "Starting health monitor every $INTERVAL seconds"
  while true; do
    check_cpu
    check_mem
    check_disk
    sleep "$INTERVAL"
  done
}
main

