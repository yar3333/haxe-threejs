package js.three;

import js.html.*;

@:native("THREE.ShapeUtils")
extern class ShapeUtils
{
	static function area(contour:Array<Float>) : Float;
	static function triangulate(contour:Array<Float>, indices:Bool) : Array<Float>;
	static function triangulateShape(contour:Array<Float>, holes:Array<Dynamic>) : Array<Float>;
	static function isClockWise(pts:Array<Float>) : Bool;
	static function b2(t:Float, p0:Float, p1:Float, p2:Float) : Float;
	static function b3(t:Float, p0:Float, p1:Float, p2:Float, p3:Float) : Float;
}