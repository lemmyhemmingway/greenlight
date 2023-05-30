FROM golang:1.20
WORKDIR /app
COPY . /app

RUN go mod tidy

CMD ["go run ./cmd/api"]