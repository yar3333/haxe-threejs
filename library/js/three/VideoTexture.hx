package js.three;

import js.lib.*;

@:native("THREE.VideoTexture")
extern class VideoTexture extends Texture
{
	@:overload(function(video:js.html.VideoElement,?mapping:Mapping,?wrapS:Wrapping,?wrapT:Wrapping,?magFilter:TextureFilter,?minFilter:TextureFilter,?format:PixelFormat,?type:TextureDataType,?anisotropy:Int):Void{})
	function new() : Void;
}