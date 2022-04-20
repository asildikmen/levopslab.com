FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y nginx
COPY ./default.conf /etc/nginx/sites-available/default.conf
RUN nginx -t
RUN service nginx restart
RUN apt-get update
RUN apt-get install python3-certbot-nginx -y
RUN certbot certonly --webroot -w /tmp/acme_challenge -d levopslab.com -d www.levopslab.com--text --agree-tos --email faikasil.dikmen@gmail.com --rsa-key-size 4096 --verbose --keep-until-expiring --preferred-challenges=http
RUN certbot renew --dry-run
