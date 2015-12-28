package js.three;

import js.html.*;

@:native("THREE.WireframeGeometry")
extern class WireframeGeometry extends BufferGeometry
{
	function new(geometry:Geometry | BufferGeometry) : Void;
}