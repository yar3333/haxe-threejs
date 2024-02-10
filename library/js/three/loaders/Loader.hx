package js.three.loaders;

import js.lib.*;

/**
 * Base class for implementing loaders.
 */
@:native("THREE.Loader")
extern class Loader<TData = Dynamic, TUrl = String>
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
	function load(url:TUrl, onLoad:TData->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:Dynamic->Void) : Void;
	function loadAsync(url:TUrl, ?onProgress:js.html.ProgressEvent->Void) : Promise<TData>;
	function setCrossOrigin(crossOrigin:String) : Loader<TData, TUrl>;
	function setWithCredentials(value:Bool) : Loader<TData, TUrl>;
	function setPath(path:String) : Loader<TData, TUrl>;
	function setResourcePath(resourcePath:String) : Loader<TData, TUrl>;
	function setRequestHeader(requestHeader:Dynamic<String>) : Loader<TData, TUrl>;
}