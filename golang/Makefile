#                                 __                 __
#    __  ______  ____ ___  ____ _/ /____  ____  ____/ /
#   / / / / __ \/ __ `__ \/ __ `/ __/ _ \/ __ \/ __  /
#  / /_/ / /_/ / / / / / / /_/ / /_/  __/ /_/ / /_/ /
#  \__, /\____/_/ /_/ /_/\__,_/\__/\___/\____/\__,_/
# /____                     matthewdavis.io, holla!
#
SHELL 			:= /bin/bash
SHA256_CMD  	:= sha256sum
GO_VERSION  	?= 1.9.3
GO_TAR_FILENAME := go$(GO_VERSION).linux-amd64.tar.gz
GO_TAR          := go.tar.gz
GO_TAR_SHA256   := a4da5f4c07dfda8194c4621611aeb7ceaab98af0b38bfb29e1be2ebb04c3556c
GO_ROOT			:= /usr/local/go
export PATH		:= $(PATH):$(GO_ROOT)/bin

install: $(GO_TAR) check /usr/local/go path

	@go version

$(GO_TAR):

	curl -o $(GO_TAR) https://storage.googleapis.com/golang/$(GO_TAR_FILENAME)

/usr/local/go:

	sudo tar -C /usr/local -xf $(GO_TAR)
	sudo chmod 755 $(GO_ROOT)

check:

	@echo "$(GO_TAR_SHA256) $(GO_TAR)" | sha256sum -c

path:

	@echo "export PATH=\"\$$PATH:$(GO_ROOT)/bin\"" >> ~/.profile

clean:

	rm -rf $(GO_TAR)

uninstall:

	rm -rf $(GO_ROOT)
