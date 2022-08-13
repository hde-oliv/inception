FROM alpine:3.15

EXPOSE 443

STOPSIGNAL SIGQUIT

RUN apk update && apk add nginx

RUN adduser -D -g 'www' www && mkdir /www && chown -R www:www /var/lib/nginx && chown -R www:www /www

COPY . /

WORKDIR /conf

RUN chmod +x setup.sh && ./setup.sh

CMD ["nginx", "-g", "daemon off;"]
