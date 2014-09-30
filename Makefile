all: native raw library clean

native: FORCE
	rm -rf native
	git init native
	cd native && \
	git remote add origin https://github.com/borisyankov/DefinitelyTyped.git && \
	git config core.sparsecheckout true && \
	echo threejs/three.d.ts>> .git/info/sparse-checkout && \
	git pull origin master && \
	rm -rf .git

raw: FORCE
	rm -rf raw
	cmd //c ts_to_haxe native raw
	cmd //c beauty_haxe raw
	
library: FORCE
	rm -rf library/js
	haxelib run refactor extract raw *.hx library/js split_haxe.rules
	cmd //c refactor reindent library/js *.hx 4 4 4 4 -4
	cmd //c refactor convert library/js *.hx library/js // postprocess.rules
	mv library/js/threejs library/js/three

clean: FORCE
	rm -rf raw
	rm -rf native

FORCE: