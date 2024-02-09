package js.three;

import js.lib.*;

extern interface XRWebGLDepthInformation
{
	var texture(default, null) : WebGLTexture;
	var depthNear(default, null) : Float;
	var depthFar(default, null) : Float;
}