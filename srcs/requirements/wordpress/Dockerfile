FROM alpine:3.15

EXPOSE 9000

STOPSIGNAL SIGQUIT

RUN adduser -D -g 'www' www

COPY . /

WORKDIR /conf

RUN chmod +x setup.sh && ./setup.sh

RUN mkdir -p /usr/share/webapps/

WORKDIR /usr/share/webapps/

RUN wget http://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && rm latest.tar.gz

CMD ["php-fpm7"]
