TAG = r161
DEFINITELY_TYPED_COMMIT_HASH = 38ef3fd42f1dea0368aa97a34fcac0535c55874e

JS_GIT = https://github.com/mrdoob/three.js.git
TS_GIT = https://github.com/DefinitelyTyped/DefinitelyTyped.git
TS_SRC = types/three

bypass:
	@echo Please specify a task name.

build: native-ts
	rm -rf library/js

	haxelib run refactor dts_to_haxe --out-dir library \
	                                 --root-package js.three \
	                                 --native-namespace THREE \
	                                 --log-level warn \
	                                 native-ts/types/three/src
	
	haxelib run refactor override library
	
	haxelib run refactor process library/js *.hx postfixes/StringAsType.rules
	haxelib run refactor process library/js *.hx postfixes/IntAsType.rules
	haxelib run refactor process library/js *.hx postfixes/Record.rules

native-ts:
	git init native-ts
	cd native-ts && \
	git remote add origin $(TS_GIT) && \
	git config core.sparsecheckout true && \
	echo $(TS_SRC)>> .git/info/sparse-checkout && \
	git pull origin master && \
	git checkout $(DEFINITELY_TYPED_COMMIT_HASH)
	rm -rf native-ts/.git

native-js:
	git init native-js
	cd native-js && \
	git remote add origin $(JS_GIT) && \
	git pull origin master --tags && \
	git checkout tags/$(TAG)

clean:
	rm -rf native-ts
	rm -rf native-js

rebuild: clean build
