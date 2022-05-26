# levopslab.com 

**WHAT IS THIS REPOSITORY ABOUT?**

  This was a task assigned to me to solidify my learnings. The main objective of this repository is setting up a pihole internet tracker blocking application with a nginx reverse proxy and obtain wildcard ssl certificate in Docker mostly unattended.

- **Requirements**

  - Host machine (I preferred Ubuntu 20.04 in this project)
  - A domain you own and a DNS provider which is supported by Certbot ( This is because we will use Certbot’s DNS plugins for this project ) You can check your DNS provider from the list if they have supported by Certbot for plugins.
  https://eff-certbot.readthedocs.io/en/stable/using.html#dns-plugins
  - Docker and docker-compose installed. If you did not installed Docker yet, simply visit; https://docs.docker.com/engine/install/

**How to use it?**

- Clone this repository where ever you want:

   ```https://github.com/asildikmen/levopslab.com.git```

- Change your information in files such as domain name, email, environment variables etc.
- And simply run the docker-compose command.

   ```docker-compose up```

**What to change?**

- In docker-compose.yml file change your domain and mail address sections.
  
  ```
  command: certbot certonly --non-interactive --dns-digitalocean --dns-digitalocean-credentials /.secrets/certbot/digitalocean.ini -d yourdomain.com -d '*.yourdomain.com' --email yourmail@mail.com --agree-tos
  ```

- In levopslab.com.conf file change your server name sections and rename this file as yourdomain.conf.

  ```
     server {

     listen 443;
     server_name yourdomain.com *.yourdomain.com;
  ```   

- In .env.example file fill your environment variables for pihole and remove .example extension.
  ``` 
  #ENTER YOUR ENVIRONMENT VARIABLES HERE SUCH AS WEB INTERFACE PASSWORD OR TIMEZONE#

  TZ=Europe/London
  WEBPASSWORD=yourpassword
  ```
- In .ini.example file fill your apikey which you obtain from your dns provider and remove .example extension.
  ```
  dns_digitalocean_token = <ENTER YOUR API KEY HERE>
  ```

