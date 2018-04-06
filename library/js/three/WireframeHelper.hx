package js.three;

import js.html.*;

/**
 * @deprecated Use {@link WireframeGeometry THREE.WireframeGeometry} instead.
 */
@:native("THREE.WireframeHelper")
extern class WireframeHelper extends LineSegments
{
	/**
	 * @deprecated Use {@link WireframeGeometry THREE.WireframeGeometry} instead.
	 */
	@:overload(function(object:Object3D,?hex:Int):Void{})
	function new() : Void;
}