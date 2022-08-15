FROM alpine:3.15

EXPOSE 3306

RUN adduser -D -g 'mysql' mysql

STOPSIGNAL SIGQUIT

COPY . /

WORKDIR /conf

RUN chmod +x run.sh 

RUN chmod +x setup.sh && ./setup.sh

RUN chown -R mysql:mysql /conf

USER mysql

CMD ["sh", "run.sh"]
