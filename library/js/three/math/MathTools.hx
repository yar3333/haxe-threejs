package js.three.math;

import js.lib.Int8Array;
import js.lib.Int16Array;
import js.lib.Int32Array;
import js.lib.Uint8Array;
import js.lib.Uint16Array;
import js.lib.Uint32Array;
import js.lib.Float32Array;

/**
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/math/MathUtils.js|src/math/MathUtils.js}
 */
@:jsRequire("three")
@:native("THREE")
extern class MathTools
{
	static var DEG2RAD(default, null) : Float;
	static var RAD2DEG(default, null) : Float;
	
    static function generateUUID() : String;
	
    /**
	 * Clamps the x to be between a and b.
	 */
    static function clamp(value:Float, min:Float, max:Float) : Float;
	
    static function euclideanModulo(n:Int, m:Float) : Float;

	/**
	 * Linear mapping of x from range [a1, a2] to range [b1, b2].
	 */
    static function mapLinear(x:Float, a1:Float, a2:Float, b1:Float, b2:Float) : Float;

	static function inverseLerp(x:Float, y:Float, t:Float) : Float;

	/**
	 * Returns a value linearly interpolated from two known points based
	 * on the given interval - t = 0 will return x and t = 1 will return y.
	 */
    static function lerp(x:Float, y:Float, t:Float) : Float;
    
	/**
	 * Smoothly interpolate a number from x toward y in a spring-like
	 * manner using the dt to maintain frame rate independent movement.
	 */
    static function damp(x:Float, y:Float, lambda:Float, dt:Float) : Float;

	/**
	 * Returns a value that alternates between 0 and length.
	 */
	static function pingpong(x:Float, length:Float) : Float;

    static function smoothstep(x:Float, min:Float, max:Float) : Float;

    static function smootherstep(x:Float, min:Float, max:Float) : Float;

	/**
	 * Random integer from low to high interval.
	 */
	static function randInt(low:Float, high:Float) : Float;

	/**
	 * Random float from low to high interval.
	 */
	static function randFloat(low:Float, high:Float) : Float;

	/**
	 * Random float from - range / 2 to range / 2 interval.
	 */
	static function randFloatSpread(range:Float) : Float;
    
    /**
     * Deterministic pseudo-random float in the interval [ 0, 1 ].
     */
    static function seededRandom(seed:Float) : Float;

    static function degToRad(degrees:Float) : Float;
    static function radToDeg(radians:Float) : Float;

    static function isPowerOfTwo(value:Float) : Bool;
    static function ceilPowerOfTwo(value:Float) : Float;
    static function floorPowerOfTwo(value:Float) : Float;

    static function setQuaternionFromProperEuler(q:Quaternion, a:Float, b:Float, c:Float, order:String) : Void;

    static function denormalize(value:Float, array:haxe.extern.EitherType<Float32Array, haxe.extern.EitherType<Uint32Array, haxe.extern.EitherType<Uint16Array, haxe.extern.EitherType<Uint8Array, haxe.extern.EitherType<Int32Array, haxe.extern.EitherType<Int16Array, Int8Array>>>>>>) : Float;
    static function normalize(value:Float, array:haxe.extern.EitherType<Float32Array, haxe.extern.EitherType<Uint32Array, haxe.extern.EitherType<Uint16Array, haxe.extern.EitherType<Uint8Array, haxe.extern.EitherType<Int32Array, haxe.extern.EitherType<Int16Array, Int8Array>>>>>>) : Float;
}