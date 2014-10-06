library: library/js

library/js: raw
	haxelib run refactor extract raw *.hx library/js extract_classes.rules
	haxelib run refactor extract raw *.hx library/js extract_vars.rules postprocess_vars.rules
	haxelib run refactor reindent library/js *.hx 4 4 4 4 -4
	haxelib run refactor convert library/js *.hx library/js /// postprocess.rules
	haxelib run refactor convert --exclude-string-literals --exclude-comments library/js *.hx library/js /// beauty.rules
	mv library/js/threejs library/js/three
	haxelib run refactor override library
	cp -r manual/* library

raw: native-ts
	haxelib run refactor convert --exclude-string-literals native-ts *.ts raw \\[.]ts$$\\.hx\\ ts_to_haxe.rules
	haxelib run refactor convert --exclude-string-literals --exclude-comments raw *.hx raw /// beauty_haxe.rules

native-ts:
	git init native-ts
	cd native-ts && \
	git remote add origin https://github.com/yar3333/DefinitelyTyped.git && \
	git config core.sparsecheckout true && \
	echo threejs/three.d.ts>> .git/info/sparse-checkout && \
	git pull origin master

clean:
	rm -rf raw
	rm -rf native-ts

rebuild: prepare-rebuild library

prepare-rebuild:
	rm -rf raw
	rm -rf library/js
