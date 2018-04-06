package js.three;

import js.html.*;

/**
 * @deprecated Use {@link BoxHelper THREE.BoxHelper} instead.
 */
@:native("THREE.BoundingBoxHelper")
extern class BoundingBoxHelper extends Mesh
{
	var object : Object3D;
	var box : Box3;

	/**
	 * @deprecated Use {@link BoxHelper THREE.BoxHelper} instead.
	 */
	@:overload(function(?object:Object3D,?hex:Int):Void{})
	function new() : Void;
	function update() : Void;
}