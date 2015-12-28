package js.three;

import js.html.*;

// deprecated.
@:native("THREE.ImageUtils")
extern class ImageUtils
{
	static var crossOrigin : String;

	// deprecated.
	static function loadTexture(url:String, ?mapping:Mapping, ?onLoad:Texture->Void, ?onError:String->Void) : Texture;

	// deprecated.
	static function loadTextureCube(array:Array<String>, ?mapping:Mapping, ?onLoad:Texture->Void, ?onError:String->Void) : Texture;

	// deprecated.
	static function getNormalMap(image:js.html.ImageElement, ?depth:Float) : js.html.CanvasElement;

	// deprecated.
	static function generateDataTexture(width:Float, height:Float, color:Color) : DataTexture;
}