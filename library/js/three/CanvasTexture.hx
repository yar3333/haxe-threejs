package js.three;

import js.html.*;

// Textures /////////////////////////////////////////////////////////////////////
@:native("THREE.CanvasTexture")
extern class CanvasTexture extends Texture
{
	function new(
		canvas: haxe.extern.EitherType<haxe.extern.EitherType<ImageElement, CanvasElement>, VideoElement>,
		?mapping:Mapping,
		?wrapS:Wrapping,
		?wrapT:Wrapping,
		?magFilter:TextureFilter,
		?minFilter:TextureFilter,
		?format:PixelFormat,
		?type:TextureDataType,
		?anisotropy:Int
	) : Void;

	//var needsUpdate : Bool;
}