FROM ubuntu:latest
RUN apt update && apt upgrade -y && apt install nginx  cron -y && service cron start && /etc/init.d/nginx start
RUN cd /var/www/html && git clone https://github.com/wojiaocilbeng/jiajt-repo.git
RUN echo '*/5 * * * * www-data cd /var/www/html && git clone https://github.com/wojiaocilbeng/jiajt-repo.git' >> /etc/crontab