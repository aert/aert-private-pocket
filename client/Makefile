NPM_BIN:=$(shell npm bin)


bootstrap-init:
	pip install nodeenv
	nodeenv -p

bootstrap-final:
	npm install
	npm install -g grunt-cli

bower-install:
	$(NPM_BIN)/bower install

open:
	xdg-open build/index.html
