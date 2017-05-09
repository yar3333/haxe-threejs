package js.three;

import js.html.*;

@:native("THREE.CanvasTexture")
extern class CanvasTexture extends Texture
{
	@:overload(function(canvas:haxe.extern.EitherType<HTMLImageElement,haxe.extern.EitherType<HTMLCanvasElement,HTMLVideoElement>>,?mapping:Mapping,?wrapS:Wrapping,?wrapT:Wrapping,?magFilter:TextureFilter,?minFilter:TextureFilter,?format:PixelFormat,?type:TextureDataType,?anisotropy:Int):Void{})
	override function new() : Void;
}