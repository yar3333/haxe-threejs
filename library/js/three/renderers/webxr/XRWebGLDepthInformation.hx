package js.three.renderers.webxr;

import js.html.webgl.WebGLTexture;
import js.lib.*;

extern interface XRWebGLDepthInformation
{
	var texture(default, null) : WebGLTexture;
	var depthNear(default, null) : Float;
	var depthFar(default, null) : Float;
}