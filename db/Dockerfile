FROM postgres:14.5
ENV TZ=America/Sao_Paulo

COPY init.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_USER admin
ENV POSTGRES_PASSWORD 123456
ENV POSTGRES_DB horus
