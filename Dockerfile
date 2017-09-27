FROM alpine:edge

RUN mkdir /usr/local/demo \
    && apk add --no-cache bash \
        curl
WORKDIR /usr/local/demo

COPY . .

CMD ["printenv"]
