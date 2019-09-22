#!/bin/bash
set -e

rm -f /awesome_interview_scheduler/tmp/pids/server.pid

exec "$@"