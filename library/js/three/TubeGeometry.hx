package js.three;

import js.html.*;

@:native("THREE.TubeGeometry")
extern class TubeGeometry extends Geometry
{
	function new(path:Path, ?segments:Int, ?radius:Float, ?radiusSegments:Int, ?closed:Bool, ?taper:Float->Float) : Void;

	var parameters :
	{
		path: Path,
		segments: Int,
		radius: Float,
		radialSegments: Int,
		closed: Bool,
		taper: Float->Float // NoTaper or SinusoidalTaper;
	};
	var tangents : Array<Vector3>;
	var normals : Array<Vector3>;
	var binormals : Array<Vector3>;

	static function NoTaper(?u:Float) : Float;
	static function SinusoidalTaper(u:Float) : Float;
	static function FrenetFrames(path:Path, segments:Int, closed:Bool) : Void;

	@:overload(function():TubeGeometry{})
	override function clone() : Geometry;
}