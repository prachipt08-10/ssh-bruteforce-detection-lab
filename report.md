Incident Report: SSH Failed Logins
Date: 2026-10-07
Victim: ubuntu-victim (10.0.2.4)
Attacker: Kali (10.0.2.15)
What happened: Multiple failed SSH logins using invalid and valid usernames, plus an nmap scan showing only port 22 open.
First failure: 07:26:26 UTC
Usernames tried: fakeuser (invalid), vboxuser (valid)
Total failed attempts: 6
  - 3 against invalid user fakeuser
  - 3 against valid user vboxuser
Recommended actions: block attacker IP, disable password login and use SSH keys, install fail2ban, monitor auth logs.
## Evidence
![Kali attack](01-kali-attack.png)
![Ubuntu logs](02-ubuntu-logs.png)
![Script output](03-script-output.png)
