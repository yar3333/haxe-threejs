package js.three;

import js.html.*;

@:native("THREE.DodecahedronGeometry")
extern class DodecahedronGeometry extends Geometry
{
	var parameters : { var radius : Float; var detail : Float; };

	function new(radius:Float, detail:Float) : Void;
}