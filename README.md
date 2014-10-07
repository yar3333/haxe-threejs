# Three.js externs for haxe  #

The aim of this library - automated (regex-based) conversion from typescript to haxe.

 * For conversion used "refactor" haxe library.
 * Original typescript code: [https://github.com/borisyankov/DefinitelyTyped/blob/master/threejs/three.d.ts](https://github.com/borisyankov/DefinitelyTyped/blob/master/threejs/three.d.ts).

### How to update library ###

Use make command (in my case I have mingw on Windows):

```
#!shell
make library
```

Project folders:

 * native-js - original three.js files (may not exists - clone manually if you want - used by documentator only - not need if you wand just update);
 * native-ts - original typescript files (to create you may run "make native-ts");
 * raw - one big haxe file - result of the typescript conversion ("make raw");
 * manual - manually created files (copied to library as final step);
 * unused - files from [labe-me](https://github.com/labe-me/haxe-three.js) which not exists in current externs (need to check them in future);
 * documentator - C# application to help writing documentation and fix typescript.

Key project files:

 * postprocess.rules - edit this to fix Float->Int;
 * extract_classes.rules - regexs to find classes/interfaces (used to split raw haxe file to separate class files);
 * extract_vars.rules - regexs to find & save exported vars;
 * postprocess_vars.rules - regexs to process exported vars files.