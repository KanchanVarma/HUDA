FROM alpine:3.12

RUN apk update

RUN apk add tar

RUN apk add curl

RUN apk add wget

RUN apk add gcc

RUN apk add make

RUN apk add libc-dev

RUN apk add linux-headers

RUN curl -O http://download.redis.io/redis-stable.tar.gz

RUN tar -xvzf redis-stable.tar.gz

WORKDIR /redis-stable

RUN make distclean

RUN make

WORKDIR /redis-stable/src

COPY redis.conf /redis-stable/redis.conf

EXPOSE 6379

CMD ["./redis-server", "/redis-stable/redis.conf"]
