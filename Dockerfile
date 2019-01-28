FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
    varnish \
    nginx
RUN mkdir /etc/nginx/ssl
COPY privkey.pem /etc/nginx/ssl/
COPY cert.pem /etc/nginx/ssl/
COPY default /etc/nginx/sites-enabled/
COPY /docker-entrypoint.sh /
RUN ["chmod", "+x", "/docker-entrypoint.sh"]
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 443
