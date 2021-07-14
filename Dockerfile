FROM golang:latest

RUN adduser --disabled-password --gecos '' api
USER api

WORKDIR /go/src/app
COPY search-api .

RUN go build -o /build/app -v .

CMD "/bin/app"