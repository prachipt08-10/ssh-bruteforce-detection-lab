#!/bin/bash
echo "=== SSH Failed Login Report ==="
echo "Total failed attempts:"
sudo journalctl -u ssh --no-pager | grep -c "Failed password"
echo ""
echo "Attacker IPs and how many times each failed:"
sudo journalctl -u ssh --no-pager | grep "Failed password" | grep -oE "from [0-9.]+" | sort | uniq -c | sort -rn
echo ""
echo "Usernames tried:"
sudo journalctl -u ssh --no-pager | grep "Failed password" | grep -oE "(invalid user )?[a-z0-9_]+ from" | sort | uniq -c