package js.three;

import js.html.*;

typedef MaterialParameters =
{
	@:optional var alphaTest : Float;
	@:optional var blendDst : BlendingDstFactor;
	@:optional var blendDstAlpha : Float;
	@:optional var blendEquation : BlendingEquation;
	@:optional var blendEquationAlpha : Float;
	@:optional var blending : Blending;
	@:optional var blendSrc : haxe.extern.EitherType<BlendingSrcFactor, BlendingDstFactor>;
	@:optional var blendSrcAlpha : Float;
	@:optional var clipIntersection : Bool;
	@:optional var clippingPlanes : Array<Plane>;
	@:optional var clipShadows : Bool;
	@:optional var colorWrite : Bool;
	@:optional var depthFunc : DepthModes;
	@:optional var depthTest : Bool;
	@:optional var depthWrite : Bool;
	@:optional var fog : Bool;
	@:optional var lights : Bool;
	@:optional var name : String;
	@:optional var opacity : Float;
	@:optional var overdraw : Float;
	@:optional var polygonOffset : Bool;
	@:optional var polygonOffsetFactor : Float;
	@:optional var polygonOffsetUnits : Float;
	@:optional var precision : js.three.materialparameters.Precision;
	@:optional var premultipliedAlpha : Bool;
	@:optional var dithering : Bool;
	@:optional var flatShading : Bool;
	@:optional var side : Side;
	@:optional var transparent : Bool;
	@:optional var vertexColors : Colors;
	@:optional var visible : Bool;
}