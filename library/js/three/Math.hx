package js.three;

@:native("THREE.Math")
extern class Math
{
	static function clamp(x:Float, a:Float, b:Float) : Float;
	static function clampBottom(x:Float, a:Float) : Float;
	static function mapLinear(x:Float, a1:Float, a2:Float, b1:Float, b2:Float) : Float;
	static function smoothstep(x:Float, min:Float, max:Float) : Float;
	static function smootherstep(x:Float, min:Float, max:Float) : Float;
	static function random16() : Float;
	static function randInt(low:Int, high:Int) : Int;
	static function randFloat(low:Float, high:Float) : Float;
	static function randFloatSpread(range:Float) : Float; // <-range/2, range/2> interval
	static function sign(x:Float) : Int;
	static function degToRad(degrees:Float) : Float;
	static function radToFloat(radians:Float) : Float;
}
