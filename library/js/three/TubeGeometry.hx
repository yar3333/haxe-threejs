package js.three;

import js.html.*;

@:native("THREE.TubeGeometry")
extern class TubeGeometry extends Geometry
{
	var parameters : { var path : Curve<Vector3>; var segments : Float; var radius : Float; var radialSegments : Float; var closed : Bool; var taper : Float->Float; };
	var tangents : Array<Vector3>;
	var normals : Array<Vector3>;
	var binormals : Array<Vector3>;

	function new(path:Curve<Vector3>, ?segments:Int, ?radius:Float, ?radiusSegments:Int, ?closed:Bool, ?taper:Float->Float) : Void;
	static function NoTaper(u:Float) : Float;
	static function SinusoidalTaper(u:Float) : Float;
	static function FrenetFrames(path:Path, segments:Int, closed:Bool) : Void;
}