package js.three;

import js.html.*;

@:native("THREE.ParametricGeometry")
extern class ParametricGeometry extends Geometry
{
	function new(func:Float->Float->Vector3, slices:Int, stacks:Int) : Void;

	var parameters :
	{
		func:Float->Float->Vector3,
		slices: Int,
		stacks: Int
	};
}