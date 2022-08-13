FROM alpine:3.15

EXPOSE 3306

RUN adduser -D -g 'mysql' mysql

STOPSIGNAL SIGQUIT

COPY . /

WORKDIR /conf

RUN chmod +x setup.sh && ./setup.sh

USER mysql

CMD ["mysqld"]
