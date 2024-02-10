package js.three.geometries;

import js.three.extras.core.Curve;
import js.three.math.Vector3;

extern interface ExtrudeGeometryOptions
{
	/**
	 * Number of points on the curves.
	 * Expects a `Integer`.
	 * @defaultValue `12`
	 */
	@:optional var curveSegments : haxe.extern.EitherType<Float, {}>;
	/**
	 * Number of points used for subdividing segments along the depth of the extruded spline.
	 * @defaultValue `1`
	 */
	@:optional var steps : haxe.extern.EitherType<Float, {}>;
	/**
	 * Depth to extrude the shape.
	 * @defaultValue `1`
	 */
	@:optional var depth : haxe.extern.EitherType<Float, {}>;
	/**
	 * Turn on bevel. Applying beveling to the shape.
	 * @defaultValue `true`
	 */
	@:optional var bevelEnabled : haxe.extern.EitherType<Bool, {}>;
	/**
	 * How deep into the original shape the bevel goes.
	 * Expects a `Float`.
	 * @defaultValue `0.2`
	 */
	@:optional var bevelThickness : haxe.extern.EitherType<Float, {}>;
	/**
	 * Distance from the shape outline that the bevel extends
	 * Expects a `Float`.
	 * @defaultValue `bevelThickness - 0.1`
	 */
	@:optional var bevelSize : haxe.extern.EitherType<Float, {}>;
	/**
	 * Distance from the shape outline that the bevel starts.
	 * Expects a `Float`.
	 * @defaultValue `0`
	 */
	@:optional var bevelOffset : haxe.extern.EitherType<Float, {}>;
	/**
	 * Number of bevel layers/segments.
	 * Expects a `Integer`.
	 * @defaultValue `3`
	 */
	@:optional var bevelSegments : haxe.extern.EitherType<Float, {}>;
	/**
	 * A 3D spline path along which the shape should be extruded.
	 * @remarks Bevels not supported for path extrusion.
	 */
	@:optional var extrudePath : haxe.extern.EitherType<Curve<Vector3>, {}>;
	/**
	 * A object that provides UV generator functions.
	 */
	@:optional var UVGenerator : haxe.extern.EitherType<UVGenerator, {}>;
}