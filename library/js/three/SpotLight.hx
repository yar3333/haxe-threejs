package js.three;

import js.html.*;

/**
 * A point light that can cast shadow in one direction.
 */
@:native("THREE.SpotLight")
extern class SpotLight extends Light
{
	function new(?hex:Int, ?intensity:Float, ?distance:Float, ?angle:Float, ?exponent:Float, ?decay:Float) : Void;

	/**
	 * Spotlight focus points at target.position.
	 * Default position — (0,0,0).
	 */
	var target : Object3D;

	/**
	 * Light's intensity.
	 * Default — 1.0.
	 */
	var intensity : Float;

	/**
	 * If non-zero, light will attenuate linearly from maximum intensity at light position down to zero at distance.
	 * Default — 0.0.
	 */
	var distance : Float;

	/*
	 * Maximum extent of the spotlight, in radians, from its direction.
	 * Default — Math.PI/2.
	 */
	var angle : Float;

	/**
	 * Rapidity of the falloff of light from its target direction.
	 * Default — 10.0.
	 */
	var exponent : Float;

	var decay : Float;

	var shadow : LightShadow;

	@:overload(function(?recursive:Bool):SpotLight{})
	override function clone(?recursive:Bool) : Object3D;
	@:overload(function(source:PointLight):SpotLight{})
	override function copy(source:Object3D, ?recursive:Bool) : Object3D;
}