TAG = r84

JS_GIT = https://github.com/mrdoob/three.js.git
TS_GIT = https://github.com/DefinitelyTyped/DefinitelyTyped.git
TS_SRC = types/three

build: native-ts
	haxelib run refactor dts_to_haxe --out-dir library --root-package js.three --native-namespace THREE --log-level warn --import js.html.* --type-mapper fix_types.rules native-ts
	haxelib run refactor override library
	#haxelib run refactor process library/js *.hx postprocess.rules
	cp -r manual/* library

native-ts:
	git init native-ts
	cd native-ts && \
	git remote add origin $(TS_GIT) && \
	git config core.sparsecheckout true && \
	echo $(TS_SRC)>> .git/info/sparse-checkout && \
	git pull origin master

native-js:
	git init native-js
	cd native-js && \
	git remote add origin $(JS_GIT) && \
	git pull origin master --tags && \
	git checkout tags/$(TAG)

clean:
	rm -rf library/js

rebuild: clean build
