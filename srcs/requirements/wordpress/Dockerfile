FROM alpine:3.15

EXPOSE 9000

STOPSIGNAL SIGQUIT

RUN adduser -D -u 4242 -g 'www' www

COPY . /

WORKDIR /conf

RUN chmod +x setup.sh && ./setup.sh

WORKDIR /tmp

RUN wget http://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && rm latest.tar.gz

RUN mv ./wordpress /www

WORKDIR /conf

RUN mv ./wp-config.php /www

RUN chown -R www:www /www

RUN chown -R www:www /var/log/php7

USER www

CMD ["sh", "run.sh"]
