FROM ubuntu:20.04
RUN apt update && apt install certbot -y && apt install python3-certbot-dns-digitalocean -y && apt clean