package js.three.textures;

/**
 * Represents the data {@link Source} of a texture.
 * @see {@link https://threejs.org/docs/index.html#api/en/textures/Source | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/Source.js | Source}
 */
@:jsRequire("three", "Source")
@:native("THREE.Source")
extern class Source
{
	/**
	 * Flag to check if a given object is of type {@link Source}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isSource(default, null) : Bool;
	var id(default, null) : Int;
	/**
	 * The actual data of a texture.
	 * @remarks The type of this property depends on the texture that uses this instance.
	 */
	var data : Dynamic;
	/**
	 * This property is only relevant when {@link .needsUpdate} is set to `true` and provides more control on how
	 * texture data should be processed.
	 * When `dataReady` is set to `false`, the engine performs the memory allocation (if necessary) but does not
	 * transfer the data into the GPU memory.
	 * @default true
	 */
	var dataReady : Bool;
	/**
	 * {@link http://en.wikipedia.org/wiki/Universally_unique_identifier | UUID} of this object instance.
	 * @remarks This gets automatically assigned and shouldn't be edited.
	 */
	var uuid : String;
	/**
	 * This starts at `0` and counts how many times {@link needsUpdate | .needsUpdate} is set to `true`.
	 * @remarks Expects a `Integer`
	 * @defaultValue `0`
	 */
	var version : Float;

	/**
	 * Represents the data {@link Source} of a texture.
	 * @see {@link https://threejs.org/docs/index.html#api/en/textures/Source | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/Source.js | Source}
	 */
	function new(data:Dynamic) : Void;
	/**
	 * Convert the data {@link Source} to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	 */
	function toJSON(?meta:haxe.extern.EitherType<String, {}>) : {};
}