DOMAIN_NAME := $(shell read -p "Enter the domain name: " domain_name && echo $$domain_name)

build:
	@go build -o bin/go-healthcheck
	@GOOS=linux go build -o bin/go-healthcheck-linux
	@GOOS=darwin go build -o bin/go-healthcheck-darwin
	@GOOS=windows go build -o bin/go-healthcheck-windows

run: build
	@./bin/go-healthcheck --domain $(DOMAIN_NAME)

test:
	@go test -v ./...