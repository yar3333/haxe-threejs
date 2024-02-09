package js.three;

import js.lib.*;

@:native("THREE.WebGLState")
extern class WebGLState
{
	var buffers : { var color : WebGLColorBuffer; var depth : WebGLDepthBuffer; var stencil : WebGLStencilBuffer; };

	function new(gl:WebGLRenderingContext, extensions:WebGLExtensions, capabilities:WebGLCapabilities) : Void;
	function enable(id:Float) : Void;
	function disable(id:Float) : Void;
	function bindFramebuffer(target:Float, framebuffer:WebGLFramebuffer) : Void;
	function drawBuffers(renderTarget:WebGLRenderTarget, framebuffer:WebGLFramebuffer) : Void;
	function useProgram(program:Dynamic) : Bool;
	function setBlending(blending:Blending, ?blendEquation:BlendingEquation, ?blendSrc:BlendingSrcFactor, ?blendDst:BlendingDstFactor, ?blendEquationAlpha:BlendingEquation, ?blendSrcAlpha:BlendingSrcFactor, ?blendDstAlpha:BlendingDstFactor, ?premultiplyAlpha:Bool) : Void;
	function setMaterial(material:Material, frontFaceCW:Bool) : Void;
	function setFlipSided(flipSided:Bool) : Void;
	function setCullFace(cullFace:CullFace) : Void;
	function setLineWidth(width:Float) : Void;
	function setPolygonOffset(polygonoffset:Bool, ?factor:Float, ?units:Float) : Void;
	function setScissorTest(scissorTest:Bool) : Void;
	function activeTexture(webglSlot:Float) : Void;
	function bindTexture(webglType:Float, webglTexture:Dynamic) : Void;
	function unbindTexture() : Void;
	function compressedTexImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, data:ArrayBufferView) : Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, format:Float, type:Float, source:Dynamic):Void{})
	function texImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, pixels:ArrayBufferView) : Void;
	function texImage3D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, pixels:Dynamic) : Void;
	function scissor(scissor:Vector4) : Void;
	function viewport(viewport:Vector4) : Void;
	function reset() : Void;
}