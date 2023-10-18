FROM golang:1.21.3-alpine

RUN mkdir /app

ADD ../microservices /app/

WORKDIR /app

RUN go install github.com/cosmtrek/air@latest

RUN go mod download

CMD ["air", "-c", ".air.toml"]