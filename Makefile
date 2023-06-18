.PHONY: fmt
fmt:
	go fmt ./...

.PHONY: check
check:
	@echo "running the vet"
	go vet ./...

.PHONY: run
run: fmt
	@echo "running fmt"
	go run ./cmd/api

.PHONY: build
build: fmt check
	@echo "building"
	go build ./cmd/api
