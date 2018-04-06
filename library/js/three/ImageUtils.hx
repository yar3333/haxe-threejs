package js.three;

import js.html.*;

@:native("THREE.ImageUtils")
extern class ImageUtils
{
	/**
	 * @deprecated
	 */
	static var crossOrigin : String;

	/**
	 * @deprecated Use {@link TextureLoader THREE.TextureLoader()} instead.
	 */
	static function loadTexture(url:String, mapping:Mapping, onLoad:Texture->Void, onError:String->Void) : Texture;
	/**
	 * @deprecated Use {@link CubeTextureLoader THREE.CubeTextureLoader()} instead.
	 */
	static function loadTextureCube(array:Array<String>, mapping:Mapping, onLoad:Texture->Void, onError:String->Void) : Texture;
}