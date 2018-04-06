TAG = r91

JS_GIT = https://github.com/mrdoob/three.js.git
TS_GIT = https://github.com/DefinitelyTyped/DefinitelyTyped.git
TS_SRC = types/three

build: native-ts
	rm -rf library/js
	haxelib run refactor dts_to_haxe --out-dir library \
	                                 --root-package js.three \
	                                 --native-namespace THREE \
	                                 --log-level warn \
	                                 --import js.html.* \
	                                 --type-mapper fix_types.rules \
	                                 --typedef-file fix_force_typedefs.list \
	                                 native-ts
	haxelib run refactor override library
	
	haxelib run refactor processFile library/js/three/Vector4.hx postfixes/Vector4.rules
	haxelib run refactor processFile library/js/three/CatmullRomCurve3.hx postfixes/CatmullRomCurve3.rules
	haxelib run refactor processFile library/js/three/CubicBezierCurve3.hx postfixes/CubicBezierCurve3.rules
	haxelib run refactor processFile library/js/three/CurvePath.hx postfixes/CurvePath.rules
	haxelib run refactor processFile library/js/three/LineCurve3.hx postfixes/LineCurve3.rules
	haxelib run refactor processFile library/js/three/QuadraticBezierCurve3.hx postfixes/QuadraticBezierCurve3.rules
	haxelib run refactor processFile library/js/three/PerspectiveCamera.hx postfixes/PerspectiveCamera.rules
	
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
	rm -rf native-ts
	rm -rf native-js


rebuild: clean build
