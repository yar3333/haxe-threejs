package js.three.renderers.webgl;

typedef WebGLCapabilitiesParameters =
{
	@:optional var precision : haxe.extern.EitherType<String, {}>;
	@:optional var logarithmicDepthBuffer : haxe.extern.EitherType<Bool, {}>;
}