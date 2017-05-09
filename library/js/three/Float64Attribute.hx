package js.three;

import js.html.*;

/**
 * @deprecated THREE.Float64Attribute has been removed. Use new THREE.Float64BufferAttribute() instead.
 */
@:native("THREE.Float64Attribute")
extern class Float64Attribute extends BufferAttribute
{
	/**
	 * @deprecated THREE.Float64Attribute has been removed. Use new THREE.Float64BufferAttribute() instead.
	 */
	function new(array:Dynamic, itemSize:Float) : Void;
}