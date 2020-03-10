.PHONY: help
help:
	@echo "Targets"
	@echo "- help: The thing you are reading right now"
	@echo "- test: Run basic testing"

.PHONY: get-validator
get-validator:
	wget https://github.com/coreos/ignition/releases/download/v0.35.0/ignition-validate-x86_64-linux
	mv ignition-validate-x86_64-linux ignition-validate
	chmod a+x ignition-validate

.PHONY: test
test:
	./test/test.sh
