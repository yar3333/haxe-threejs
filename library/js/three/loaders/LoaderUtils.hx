package js.three.loaders;

import js.lib.BufferSource;

@:jsRequire("three", "LoaderUtils")
@:native("THREE.LoaderUtils")
extern class LoaderUtils
{
	static function decodeText(array:BufferSource) : String;
	static function extractUrlBase(url:String) : String;
	static function resolveURL(url:String, path:String) : String;
}