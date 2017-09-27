FROM alpine:edge

RUN mkdir /usr/local/demo \
    && apk add --no-cache bash
WORKDIR /usr/local/demo

COPY . .

CMD ["printenv"]
