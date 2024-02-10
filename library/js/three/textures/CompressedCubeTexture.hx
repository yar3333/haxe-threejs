package js.three.textures;

import js.three.Constants;

@:jsRequire("three", "CompressedCubeTexture")
@:native("THREE.CompressedCubeTexture")
extern class CompressedCubeTexture extends CompressedTexture
{
	var isCompressedCubeTexture(default, null) : Bool;
	var isCubeTexture(default, null) : Bool;

	function new(images:Array<{ var width : Float; var height : Float; }>, ?format:CompressedPixelFormat, ?type:TextureDataType) : Void;
}