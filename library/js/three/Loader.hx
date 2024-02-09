package js.three;

import js.lib.*;

/**
 * Base class for implementing loaders.
 */
@:native("THREE.Loader")
extern class Loader<TData:Dynamic, unknown:Dynamic, TUrl:Dynamic, string:Dynamic>
{
	/**
	 * @default 'anonymous'
	 */
	var crossOrigin : String;
	/**
	 * @default false
	 */
	var withCredentials : Bool;
	/**
	 * @default ''
	 */
	var path : String;
	/**
	 * @default ''
	 */
	var resourcePath : String;
	var manager : LoadingManager;
	/**
	 * @default {}
	 */
	var requestHeader : Dynamic<String>;
	static var DEFAULT_MATERIAL_NAME : String;

	/**
	 * Base class for implementing loaders.
	 */
	function new(?manager:LoadingManager) : Void;
	function load(url:TUrl, onLoad:TData->Void, ?onProgress:ProgressEvent->Void, ?onError:unknown->Void) : Void;
	function loadAsync(url:TUrl, ?onProgress:ProgressEvent->Void) : Promise<TData>;
	function setCrossOrigin(crossOrigin:String) : Loader;
	function setWithCredentials(value:Bool) : Loader;
	function setPath(path:String) : Loader;
	function setResourcePath(resourcePath:String) : Loader;
	function setRequestHeader(requestHeader:Dynamic<String>) : Loader;
}