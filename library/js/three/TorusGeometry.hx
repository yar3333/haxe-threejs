package js.three;

import js.html.*;

@:native("THREE.TorusGeometry")
extern class TorusGeometry extends Geometry
{
	var parameters : { var radius : Float; var tube : Float; var radialSegments : Float; var tubularSegments : Float; var arc : Float; };

	function new(?radius:Float, ?tube:Float, ?radialSegments:Int, ?tubularSegments:Float, ?arc:Float) : Void;
}