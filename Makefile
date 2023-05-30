fmt:
	go fmt ./...

run: fmt
	go run ./cmd/api
