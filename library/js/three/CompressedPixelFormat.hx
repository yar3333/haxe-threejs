package js.three;

import js.html.*;

// Compressed texture formats
// DDS / ST3C Compressed texture formats
@:native("THREE")
extern enum CompressedPixelFormat
{
	RGB_S3TC_DXT1_Format;
	RGBA_S3TC_DXT1_Format;
	RGBA_S3TC_DXT3_Format;
	RGBA_S3TC_DXT5_Format;
}