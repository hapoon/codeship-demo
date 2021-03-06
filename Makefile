GO_PKGS ?= $(shell go list ./... | grep -vE vendor)

.PHONY: test
test:
	set -e; \
	echo "" > coverage.txt; \
	for d in $(GO_PKGS); do \
		go test -coverprofile=profile.out -covermode=atomic $$d; \
		if [ -f profile.out ]; then \
			cat profile.out >> coverage.txt; \
			rm profile.out; \
		fi \
	done

.PHONY: codecov
codecov: test
	curl -s https://codecov.io/bash | bash -s - -t $(CODECOV_TOKEN)
