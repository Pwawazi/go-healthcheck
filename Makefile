DOMAIN_NAME := $(shell read -p "Enter the domain name(e.g. google.com): " domain_name && echo $$domain_name)

build:
	@go build -o bin/go-healthcheck
	@GOOS=linux go build -o bin/go-healthcheck-linux
	@GOOS=darwin go build -o bin/go-healthcheck-darwin
	@GOOS=windows go build -o bin/go-healthcheck-windows

run: build
	@echo;
	@echo "Checking status of '$(DOMAIN_NAME)'... "; \
	echo;

	@./bin/go-healthcheck --domain $(DOMAIN_NAME)

	@echo; \

test:
	@go test -v ./...

help:
	@./bin/go-healthcheck --help