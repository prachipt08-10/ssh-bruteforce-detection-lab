**Related project:** [Wazuh SIEM Lab](https://github.com/prachipt08-10/wazuh-siem-lab) — the same attack detected and classified automatically by a real SIEM.

# SSH Brute-Force Detection Lab

A beginner SOC analyst lab where I attack my own virtual machines,
investigate the evidence in the logs, and respond automatically.

## Lab Setup
- VirtualBox with a NAT Network (isolated lab)
- Attacker: Kali Linux (10.0.2.15)
- Victim: Ubuntu Server 26.04 LTS (10.0.2.4)

## What I Did
1. Simulated failed SSH logins (invalid and valid usernames)
2. Ran an nmap port scan
3. Investigated logs with journalctl and grep
4. Wrote a Bash script to automate failed-login detection
5. Configured fail2ban to automatically ban the attacker
6. Documented the incident in a report

## Files
- `report.md`: incident report
- `failcheck.sh`: detection script
- `01` to `06` .png files: evidence screenshots

## Skills Practiced
Linux, log analysis, SSH, nmap, Bash scripting, fail2ban,
incident reporting

## Next Steps
- Build a Wazuh dashboard
- Test fail2ban against hydra
