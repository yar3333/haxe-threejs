package js.three;

import js.html.*;

@:native("THREE.LatheGeometry")
extern class LatheGeometry extends Geometry
{
	var parameters : { var points : Array<Vector3>; var segments : Float; var phiStart : Float; var phiLength : Float; };

	function new(points:Array<Vector3>, ?segments:Int, ?phiStart:Float, ?phiLength:Float) : Void;
}