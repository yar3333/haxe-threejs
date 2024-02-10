package js.three.loaders;

@:jsRequire("three", "Cache")
@:native("THREE.Cache")
extern class Cache
{
	/**
	 * @default false
	 */
	static var enabled : Bool;
	/**
	 * @default {}
	 */
	static var files : Dynamic;
}