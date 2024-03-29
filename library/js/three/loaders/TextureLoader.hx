package js.three.loaders;

import js.three.textures.Texture;

/**
 * Class for loading a texture.
 * Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
 */
@:jsRequire("three", "TextureLoader")
@:native("THREE.TextureLoader")
extern class TextureLoader extends Loader<Texture>
{
	/**
	 * Class for loading a texture.
	 * Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
	 */
	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:Texture->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:Dynamic->Void) : Texture;
}