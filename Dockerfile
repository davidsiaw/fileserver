FROM nginx:1.13.1-alpine
MAINTAINER David Siaw davidsiaw@gmail.com

ENV VIRTUAL_HOST example.example.com
ENV VIRTUAL_PORT 8080

RUN mkdir -p /var/www/static/

COPY default.conf.template /default.conf.template
COPY nginx.conf.template /nginx.conf.template
COPY start.sh /start.sh

EXPOSE 8080

CMD ["sh", "/start.sh"]
