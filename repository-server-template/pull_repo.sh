#!/usr/bin/env bash
service nginx start && service cron start
cd /var/www/html && git clone https://github.com/wojiaocilbeng/jiajt-repo.git
echo '*/5 * * * * www-data cd /var/www/html && git clone https://github.com/wojiaocilbeng/jiajt-repo.git' >> /etc/crontab
tail -f /dev/null