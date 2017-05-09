package js.three;

import js.html.*;

@:native("THREE.WebGLCapabilitiesParameters")
extern interface WebGLCapabilitiesParameters
{
	@:optional var precision : Dynamic;
	@:optional var logarithmicDepthBuffer : Dynamic;
}