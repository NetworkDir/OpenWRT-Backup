# OpenWRT-Backup
OpenWRT Daily backup send to telegram

(if you iranian user and telegram blocked in your country you should use passwall or some VPN for bypass)

Installition method:
1. Connect to your router with SSH.
2. ```cd ~ && wget https://raw.githubusercontent.com/ElshanRajabi/OpenWRT-Backup/main/backup.sh```
3. ```chmod +x backup.sh```
4. ```opkg update```
5. ```opkg install nano```
6. ```export VISUAL=nano; crontab -e```
7. add ```0 0 * * * /bin/sh /root/backup.sh >/dev/null 2>&1``` to your crontab config and save. [This cronjob send backup everyday on At 00:00] (You can change it https://crontab.guru/)
9. Done!
