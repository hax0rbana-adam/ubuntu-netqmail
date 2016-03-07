# /etc/cron.d/update_tmprsadh: crontab fragment for qmail -> update_tmprsadh
#  update the temporary RSA/DH files daily

1 1 * * * root [ -x /var/lib/qmail/bin/update_tmprsadh ] && /var/lib/qmail/bin/update_tmprsadh > /dev/null 2>&1
