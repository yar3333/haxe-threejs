package js.three;

import js.html.*;

// blending modes
@:native("THREE")
extern enum Blending
{
	NoBlending;
	NormalBlending;
	AdditiveBlending;
	SubtractiveBlending;
	MultiplyBlending;
	CustomBlending;
}