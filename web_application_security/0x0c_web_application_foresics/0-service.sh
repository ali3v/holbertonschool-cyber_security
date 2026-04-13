#!/bin/bash
# Description: Script to identify the service used in web application attacks
# Usage: ./0-service.sh auth.log

grep pam_unix $1 | awk '{print $6, $7}' | sort | uniq -c | sort -nr
