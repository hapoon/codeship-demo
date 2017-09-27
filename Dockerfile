FROM golang:alpine

RUN mkdir /go/src/app \
    && apk add --no-cache bash \
        curl \
        gcc \
        make
WORKDIR /go/src/app

COPY . .

CMD ["printenv"]
