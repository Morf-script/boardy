#!/bin/bash
echo "Content-type: text/plain"
echo ""
echo "User-Agent: $HTTP_USER_AGENT"
echo "Your IP: $REMOTE_ADDR"
echo "Method: $REQUEST_METHOD"
echo "Time: $(date)"
