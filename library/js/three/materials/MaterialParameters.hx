package js.three.materials;

import js.three.math.Plane;
import js.three.math.ColorRepresentation;
import haxe.extern.EitherType;

typedef MaterialParameters =
{
	@:optional var alphaHash : Bool;
	@:optional var alphaTest : Float;
	@:optional var alphaToCoverage : Bool;
	@:optional var blendAlpha : Float;
	@:optional var blendColor : ColorRepresentation;
	@:optional var blendDst : BlendingDstFactor;
	@:optional var blendDstAlpha : Float;
	@:optional var blendEquation : BlendingEquation;
	@:optional var blendEquationAlpha : Float;
	@:optional var blending : Blending;
	@:optional var blendSrc : EitherType<BlendingSrcFactor, BlendingDstFactor>;
	@:optional var blendSrcAlpha : Float;
	@:optional var clipIntersection : Bool;
	@:optional var clippingPlanes : Array<Plane>;
	@:optional var clipShadows : Bool;
	@:optional var colorWrite : Bool;
	@:optional var defines : Dynamic;
	@:optional var depthFunc : DepthModes;
	@:optional var depthTest : Bool;
	@:optional var depthWrite : Bool;
	@:optional var name : String;
	@:optional var opacity : Float;
	@:optional var polygonOffset : Bool;
	@:optional var polygonOffsetFactor : Float;
	@:optional var polygonOffsetUnits : Float;
	@:optional var precision : Precision;
	@:optional var premultipliedAlpha : Bool;
	@:optional var forceSinglePass : Bool;
	@:optional var dithering : Bool;
	@:optional var side : Side;
	@:optional var shadowSide : Side;
	@:optional var toneMapped : Bool;
	@:optional var transparent : Bool;
	@:optional var vertexColors : Bool;
	@:optional var visible : Bool;
	@:optional var format : PixelFormat;
	@:optional var stencilWrite : Bool;
	@:optional var stencilFunc : StencilFunc;
	@:optional var stencilRef : Float;
	@:optional var stencilWriteMask : Float;
	@:optional var stencilFuncMask : Float;
	@:optional var stencilFail : StencilOp;
	@:optional var stencilZFail : StencilOp;
	@:optional var stencilZPass : StencilOp;
	@:optional var userData : Dynamic;
}