package js.three;

import js.lib.*;

extern interface MaterialParameters
{
	@:optional var alphaHash : haxe.extern.EitherType<Bool, {}>;
	@:optional var alphaTest : haxe.extern.EitherType<Float, {}>;
	@:optional var alphaToCoverage : haxe.extern.EitherType<Bool, {}>;
	@:optional var blendAlpha : haxe.extern.EitherType<Float, {}>;
	@:optional var blendColor : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var blendDst : haxe.extern.EitherType<BlendingDstFactor, {}>;
	@:optional var blendDstAlpha : haxe.extern.EitherType<Float, {}>;
	@:optional var blendEquation : haxe.extern.EitherType<BlendingEquation, {}>;
	@:optional var blendEquationAlpha : haxe.extern.EitherType<Float, {}>;
	@:optional var blending : haxe.extern.EitherType<Blending, {}>;
	@:optional var blendSrc : haxe.extern.EitherType<BlendingSrcFactor, haxe.extern.EitherType<BlendingDstFactor, {}>>;
	@:optional var blendSrcAlpha : haxe.extern.EitherType<Float, {}>;
	@:optional var clipIntersection : haxe.extern.EitherType<Bool, {}>;
	@:optional var clippingPlanes : haxe.extern.EitherType<Array<Plane>, {}>;
	@:optional var clipShadows : haxe.extern.EitherType<Bool, {}>;
	@:optional var colorWrite : haxe.extern.EitherType<Bool, {}>;
	@:optional var defines : Dynamic;
	@:optional var depthFunc : haxe.extern.EitherType<DepthModes, {}>;
	@:optional var depthTest : haxe.extern.EitherType<Bool, {}>;
	@:optional var depthWrite : haxe.extern.EitherType<Bool, {}>;
	@:optional var name : haxe.extern.EitherType<String, {}>;
	@:optional var opacity : haxe.extern.EitherType<Float, {}>;
	@:optional var polygonOffset : haxe.extern.EitherType<Bool, {}>;
	@:optional var polygonOffsetFactor : haxe.extern.EitherType<Float, {}>;
	@:optional var polygonOffsetUnits : haxe.extern.EitherType<Float, {}>;
	@:optional var precision : haxe.extern.EitherType<js.three.materialparameters.Precision, {}>;
	@:optional var premultipliedAlpha : haxe.extern.EitherType<Bool, {}>;
	@:optional var forceSinglePass : haxe.extern.EitherType<Bool, {}>;
	@:optional var dithering : haxe.extern.EitherType<Bool, {}>;
	@:optional var side : haxe.extern.EitherType<Side, {}>;
	@:optional var shadowSide : haxe.extern.EitherType<Side, {}>;
	@:optional var toneMapped : haxe.extern.EitherType<Bool, {}>;
	@:optional var transparent : haxe.extern.EitherType<Bool, {}>;
	@:optional var vertexColors : haxe.extern.EitherType<Bool, {}>;
	@:optional var visible : haxe.extern.EitherType<Bool, {}>;
	@:optional var format : haxe.extern.EitherType<PixelFormat, {}>;
	@:optional var stencilWrite : haxe.extern.EitherType<Bool, {}>;
	@:optional var stencilFunc : haxe.extern.EitherType<StencilFunc, {}>;
	@:optional var stencilRef : haxe.extern.EitherType<Float, {}>;
	@:optional var stencilWriteMask : haxe.extern.EitherType<Float, {}>;
	@:optional var stencilFuncMask : haxe.extern.EitherType<Float, {}>;
	@:optional var stencilFail : haxe.extern.EitherType<StencilOp, {}>;
	@:optional var stencilZFail : haxe.extern.EitherType<StencilOp, {}>;
	@:optional var stencilZPass : haxe.extern.EitherType<StencilOp, {}>;
	@:optional var userData : haxe.extern.EitherType<Record<String, Dynamic>, {}>;
}