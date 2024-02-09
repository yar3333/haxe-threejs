package js.three.loaders;

import js.lib.*;
import js.html.ImageElement;

/**
 * A loader for loading an image.
 * Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
 */
@:native("THREE.ImageLoader")
extern class ImageLoader extends Loader<ImageElement>
{
	/**
	 * A loader for loading an image.
	 * Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
	 */
	function new(?manager:LoadingManager) : Void;
	
    function load(url:String, ?onLoad:ImageElement->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:Dynamic->Void) : ImageElement;
}