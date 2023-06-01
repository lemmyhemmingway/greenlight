fmt:
	go fmt ./...

check:
	go vet ./...

run: fmt
	go run ./cmd/api

build: fmt check
	go build ./cmd/api
