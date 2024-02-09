package js.three;

import js.lib.*;

@:native("THREE.ImageBitmapLoader")
extern class ImageBitmapLoader extends Loader<ImageBitmap>
{
	/**
	 * @default { premultiplyAlpha: 'none' }
	 */
	var options : haxe.extern.EitherType<{}, object>;
	var isImageBitmapLoader(default, null) : Bool;

	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:ImageBitmap->Void, ?onProgress:ProgressEvent->Void, ?onError:unknown->Void) : Void;
	function setOptions(options:object) : ImageBitmapLoader;
}