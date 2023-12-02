umask go=
sysupgrade -b /tmp/backup-${HOSTNAME}-$(date +%F).tar.gz

BOT_TOKEN='00000000000:000000000000000000000000000' # Your telegram bot token (Get from @BotFather).
CHAT_ID='000000000' # Your Telegram user/chat ID (Get from @userinfobot)

curl -4 -s -S -L -w"\n" -o- \
    -F document=@"/tmp/backup-${HOSTNAME}-$(date +%F).tar.gz" \
    -F parse_mode='Markdown' \
    -F caption="${HOSTNAME}-$(date +%F)" \
    -X POST https://api.telegram.org/bot${BOT_TOKEN}/sendDocument \
    -F chat_id="${CHAT_ID}"
