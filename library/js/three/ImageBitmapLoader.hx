package js.three;

import js.lib.*;
import js.html.ImageBitmap;

@:native("THREE.ImageBitmapLoader")
extern class ImageBitmapLoader extends Loader<ImageBitmap>
{
	/**
	 * @default { premultiplyAlpha: 'none' }
	 */
	var options : Dynamic;
	
    var isImageBitmapLoader(default, null) : Bool;

	function new(?manager:LoadingManager) : Void;
	
    function load(url:String, ?onLoad:ImageBitmap->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:Dynamic->Void) : Void;
	
    function setOptions(options:Dynamic) : ImageBitmapLoader;
}