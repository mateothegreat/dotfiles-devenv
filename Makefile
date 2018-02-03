#                                 __                 __
#    __  ______  ____ ___  ____ _/ /____  ____  ____/ /
#   / / / / __ \/ __ `__ \/ __ `/ __/ _ \/ __ \/ __  /
#  / /_/ / /_/ / / / / / / /_/ / /_/  __/ /_/ / /_/ /
#  \__, /\____/_/ /_/ /_/\__,_/\__/\___/\____/\__,_/
# /____                     matthewdavis.io, holla!
#

SHELL := /bin/bash


install-golang:

	echo $@

	$(MAKE) -C golang install

install-hub: install-golang hub

	$(MAKE) -C hub install prefix=/usr/local

hub:

	@test ! -d $(TARGET_DIR) && git clone --single-branch --depth 1 https://github.com/github/hub.git

install-sdkman: install-golang

	echo $@
	$(MAKE) -C sdkman install
