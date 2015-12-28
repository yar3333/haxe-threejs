package js.three;

import js.html.*;

@:native("THREE.CubeTexture")
extern class CubeTexture extends Texture
{
	function new(
		images: Array<Dynamic>,// HTMLImageElement or HTMLCanvasElement
		?mapping:Mapping,
		?wrapS:Wrapping,
		?wrapT:Wrapping,
		?magFilter:TextureFilter,
		?minFilter:TextureFilter,
		?format:PixelFormat,
		?type:TextureDataType,
		?anisotropy:Int
	) : Void;

	var images : Array<Dynamic>;

	@:overload(function(source:CubeTexture):CubeTexture{})
	override function copy(source:Texture) : Texture;
}