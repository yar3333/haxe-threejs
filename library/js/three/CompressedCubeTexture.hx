package js.three;

import js.lib.*;

@:native("THREE.CompressedCubeTexture")
extern class CompressedCubeTexture extends CompressedTexture
{
	var isCompressedCubeTexture(default, null) : Bool;
	var isCubeTexture(default, null) : Bool;

	@:overload(function(images:Array<{ var width :Float; var height :Float;}>,?format:CompressedPixelFormat,?type:TextureDataType):Void{})
	function new(mipmaps:Array<ImageData>, width:Float, height:Float, format:CompressedPixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?anisotropy:Float, ?colorSpace:ColorSpace) : Void;
}