Nearly empty golang project with a passing and a failing test!
===

This has been created using go modules; to run the tests, just execute:

```bash
go test -mod vendor -race -cover -coverprofile=coverage.txt -covermode=atomic ./...
```

or (using make):

```bash
make test
```

The Makefile also supports other commands, such as:

```bash
make lint
```
