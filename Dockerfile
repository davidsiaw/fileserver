FROM nginx:1.30.6-alpine
LABEL maintainer="David Siaw <davidsiaw@gmail.com>"

# The upstream nginx image is only rebuilt every so often, so Alpine security
# fixes can sit unapplied for days. Pick them up at build time.
RUN apk upgrade --no-cache

ENV VIRTUAL_HOST=example.example.com
ENV VIRTUAL_PORT=8080

RUN mkdir -p /var/www/static/

COPY default.conf.template /default.conf.template
COPY nginx.conf.template /nginx.conf.template
COPY start.sh /start.sh

EXPOSE 8080

CMD ["sh", "/start.sh"]
