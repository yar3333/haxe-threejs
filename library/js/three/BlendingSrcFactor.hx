package js.three;

import js.html.*;

// custom blending src factors
@:native("THREE")
extern enum BlendingSrcFactor
{
	DstColorFactor;
	OneMinusDstColorFactor;
	SrcAlphaSaturateFactor;
}