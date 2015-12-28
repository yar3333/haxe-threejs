package js.three;

import js.html.*;

@:native("THREE.DataTexture")
extern class DataTexture extends Texture
{
	function new(
		data: ImageData,
		width: Int,
		height: Int,
		format: PixelFormat,
		type: TextureDataType,
		mapping: Mapping,
		wrapS: Wrapping,
		wrapT: Wrapping,
		magFilter: TextureFilter,
		minFilter: TextureFilter,
		?anisotropy:Int
	) : Void;

	//var image : { data: ImageData, width:Int, height:Int };
	//var magFilter : TextureFilter;
	//var minFilter : TextureFilter;
	//var flipY : Bool;
	//var generateMipmaps : Bool;
}