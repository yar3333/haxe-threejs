package js.three;

import js.lib.*;

@:native("THREE.CanvasTexture")
extern class CanvasTexture extends Texture
{
	@:overload(function(canvas:haxe.extern.EitherType<js.html.ImageElement,haxe.extern.EitherType<js.html.CanvasElement,js.html.VideoElement>>,?mapping:Mapping,?wrapS:Wrapping,?wrapT:Wrapping,?magFilter:TextureFilter,?minFilter:TextureFilter,?format:PixelFormat,?type:TextureDataType,?anisotropy:Int):Void{})
	function new() : Void;
}