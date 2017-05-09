package js.three;

import js.html.*;

@:native("THREE.WireframeGeometry")
extern class WireframeGeometry extends BufferGeometry
{
	function new(geometry:haxe.extern.EitherType<Geometry, BufferGeometry>) : Void;
}