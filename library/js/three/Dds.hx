package js.three;

import js.lib.*;

extern interface Dds
{
	var mipmaps : Array<ImageData>;
	var width : Float;
	var height : Float;
	var format : CompressedPixelFormat;
	var mipmapCount : Float;
}