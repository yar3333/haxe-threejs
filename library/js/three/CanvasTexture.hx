package js.three;

import js.html.*;

// Textures /////////////////////////////////////////////////////////////////////
@:native("THREE.CanvasTexture")
extern class CanvasTexture extends Texture
{
	function new(
		canvas: js.html.ImageElement | HTMLCanvasElement | HTMLVideoElement,
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