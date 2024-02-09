package js.three.textures;

import js.lib.*;

extern interface TextureImageData
{
	var data(default, null) : Uint8ClampedArray;
	var height(default, null) : Float;
	var width(default, null) : Float;
}