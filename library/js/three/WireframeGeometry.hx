package js.three;

import js.lib.*;

@:native("THREE.WireframeGeometry")
extern class WireframeGeometry extends BufferGeometry
{
	@:overload(function(geometry:haxe.extern.EitherType<Geometry,BufferGeometry>):Void{})
	function new() : Void;
}