package js.three;

import js.lib.*;

typedef WebGLCapabilitiesParameters =
{
	@:optional var precision : haxe.extern.EitherType<String, {}>;
	@:optional var logarithmicDepthBuffer : haxe.extern.EitherType<Bool, {}>;
}