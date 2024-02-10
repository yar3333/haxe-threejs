package js.three.loaders;
import js.lib.BufferSource;

extern interface LoaderUtils
{
	function decodeText(array:BufferSource) : String;
	function extractUrlBase(url:String) : String;
	function resolveURL(url:String, path:String) : String;
}