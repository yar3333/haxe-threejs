package js.three;

import js.lib.*;

extern interface RaycasterParameters
{
	var Mesh : Dynamic;
	var Line : { var threshold : Float; };
	@:optional var Line2 : { var threshold : Float; };
	var LOD : Dynamic;
	var Points : { var threshold : Float; };
	var Sprite : Dynamic;
}