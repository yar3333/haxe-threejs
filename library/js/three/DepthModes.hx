package js.three;

import js.html.*;

// depth modes
@:native("THREE.DepthModes")
extern enum DepthModes
{
	NeverDepth;
	AlwaysDepth;
	LessDepth;
	LessEqualDepth;
	EqualDepth;
	GreaterEqualDepth;
	GreaterDepth;
	NotEqualDepth;
}