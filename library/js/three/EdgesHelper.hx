package js.three;

import js.html.*;

/**
 * @deprecated Use {@link EdgesGeometry THREE.EdgesGeometry}
 */
@:native("THREE.EdgesHelper")
extern class EdgesHelper extends LineSegments
{
	/**
	 * @deprecated Use {@link EdgesGeometry THREE.EdgesGeometry}
	 */
	@:overload(function(object:Object3D,?hex:Int,?thresholdAngle:Float):Void{})
	function new() : Void;
}