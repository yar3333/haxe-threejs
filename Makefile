library: library/js

library/js: raw
	haxelib run refactor extract raw *.hx library/js split_haxe.rules
	haxelib run refactor reindent library/js *.hx 4 4 4 4 -4
	haxelib run refactor convert library/js *.hx library/js /// postprocess.rules
	mv library/js/threejs library/js/three

raw: native
	haxelib run refactor convert --exclude-string-literals native *.ts raw /[.]ts$/.hx/ ts_to_haxe.rules
	haxelib run refactor convert --exclude-string-literals --exclude-comments raw *.hx raw /// beauty_haxe.rules

native:
	git init native
	cd native && \
	git remote add origin https://github.com/borisyankov/DefinitelyTyped.git && \
	git config core.sparsecheckout true && \
	echo threejs/three.d.ts>> .git/info/sparse-checkout && \
	git pull origin master && \
	rm -rf .git

clean:
	rm -rf raw
	rm -rf native
