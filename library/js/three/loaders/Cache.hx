package js.three.loaders;

import js.lib.*;

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