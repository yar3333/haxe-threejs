package js.three;

import js.html.*;

// Pixel formats
@:native("THREE")
extern enum PixelFormat
{
	AlphaFormat;
	RGBFormat;
	RGBAFormat;
	LuminanceFormat;
	LuminanceAlphaFormat;
	RGBEFormat;
}