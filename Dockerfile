FROM alpine:edge

RUN mkdir /usr/local/demo
WORKDIR /usr/local/demo

COPY . .

CMD ["printenv"]
