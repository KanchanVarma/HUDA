FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -y wget

ENV MINIO_ACCESS_KEY=aaa \
    MINIO_SECRET_KEY=deadbeef

RUN wget https://dl.minio.io/server/minio/release/linux-amd64/minio

RUN chmod 777 minio

CMD ["./minio", "server", "/mnt/minio"]
