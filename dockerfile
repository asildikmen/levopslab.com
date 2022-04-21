FROM nginx:1.21.6-alpine
COPY levopslab.com.conf /etc/nginx/conf.d/
WORKDIR /etc/nginx
RUN mkdir certs
WORKDIR /
COPY fullchain.pem /etc/nginx/certs
COPY privkey.pem /etc/nginx/certs