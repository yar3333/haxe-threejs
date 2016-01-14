# Three.js externs for Haxe  #

The aim of this library - fully automated (regex-based) conversion from TypeScript to Haxe.

 * For conversion used [refactor](http://lib.haxe.org/p/refactor) haxe library.
 * Original typescript code: [three.d.ts](https://github.com/DefinitelyTyped/DefinitelyTyped/blob/master/threejs/three.d.ts).

### How to update library ###

```shell
# install refactor library:
haxelib install refactor

# run in the root repo's folder (in my case I use MinGW on Windows):
make
```

### Project structure

Folders:

 * native-ts - original typescript files (automatically downloaded if not exist - git must be installed);
 * raw - one big haxe file - result of the conversion TypeScript->Haxe;
 * manual - manually created files (copied to library at final step);
 * unused - files from [labe-me](https://github.com/labe-me/haxe-three.js) project, which not exists in current externs (need to check them in future);
 * documentator - C# application to help writing documentation and fix typescript;
 * native-js - original three.js files (used by documentator only).

Files:

 * postprocess.rules - edit this to fix Float->Int;
 * extract_classes.rules - regexs to find classes/interfaces (used to split raw haxe file to separate class files);
 * extract_vars.rules - regexs to find & save exported vars;
 * postprocess_vars.rules - regexs to process exported vars files.

### Embedding

By default, main `three.js` file does not embedded.
Small external files (placed in the `example` folder of the original ThreeJS) embedded automatically on imports.

You can control embedding:

 * to embed main uncompressed `three.js` file: `import js.three.Embed;`
 * to embed main minified `three-min.js` file: `import js.three.EmbedMin;`
 * to stop auto embedding small files use compiler option: `-D threejs-noEmbed`
