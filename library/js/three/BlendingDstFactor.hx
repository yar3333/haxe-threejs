package js.three;

import js.html.*;

// custom blending destination factors
@:native("THREE")
extern enum BlendingDstFactor
{
	ZeroFactor;
	OneFactor;
	SrcColorFactor;
	OneMinusSrcColorFactor;
	SrcAlphaFactor;
	OneMinusSrcAlphaFactor;
	DstAlphaFactor;
	OneMinusDstAlphaFactor;
}