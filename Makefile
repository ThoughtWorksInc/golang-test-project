GOLANGCI_LINT_VERSION    := 1.21.0

default: all

all: lint test

tools/golangci-lint/$(GOLANGCI_LINT_VERSION)/golangci-lint:
	mkdir -p tools/
	curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh| sh -s -- -b tools/golangci-lint/$(GOLANGCI_LINT_VERSION) v$(GOLANGCI_LINT_VERSION)

.PHONY: lint
lint: tools/golangci-lint/$(GOLANGCI_LINT_VERSION)/golangci-lint
	./tools/golangci-lint/$(GOLANGCI_LINT_VERSION)/golangci-lint run ./...

.PHONY: test
test:
	go test -mod vendor -race -cover -coverprofile=coverage.txt -covermode=atomic ./...

.PHONY: vendor-tidy
vendor-tidy:
	@go mod vendor
	@go mod tidy
