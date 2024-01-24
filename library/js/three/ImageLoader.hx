package js.three;

import js.lib.*;

/**
 * A loader for loading an image.
 * Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
 */
@:native("THREE.ImageLoader")
extern class ImageLoader
{
	var manager : LoadingManager;
	var crossOrigin : String;
	var withCredentials : String;
	var path : String;

	/**
	 * A loader for loading an image.
	 * Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
	 */
	function new(?manager:LoadingManager) : Void;
	/**
	 * Begin loading from url
	 */
	function load(url:String, ?onLoad:js.html.ImageElement->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:js.html.ErrorEvent->Void) : js.html.ImageElement;
	function setCrossOrigin(crossOrigin:String) : ImageLoader;
	function setWithCredentials(value:String) : ImageLoader;
	function setPath(value:String) : ImageLoader;
}