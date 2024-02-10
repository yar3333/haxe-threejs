package js.three.renderers.webgl;

import js.lib.ArrayBufferView;
import js.html.webgl.Framebuffer;
import js.three.Constants;
import js.three.materials.Material;
import js.three.math.Vector4;

@:native("THREE.WebGLState")
extern class WebGLState
{
	var buffers : { var color : WebGLColorBuffer; var depth : WebGLDepthBuffer; var stencil : WebGLStencilBuffer; };

	function new(gl:js.html.webgl.RenderingContext, extensions:WebGLExtensions, capabilities:WebGLCapabilities) : Void;
	function enable(id:Int) : Void;
	function disable(id:Int) : Void;
	function bindFramebuffer(target:Float, framebuffer:Framebuffer) : Void;
	function drawBuffers(renderTarget:WebGLRenderTarget, framebuffer:Framebuffer) : Void;
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
	overload function texImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Int, type:Int, pixels:ArrayBufferView) : Void;
	overload function texImage2D(target:Float, level:Float, internalformat:Float, format:Int, type:Int, source:Dynamic) : Void;
	function texImage3D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Int, type:Int, pixels:Dynamic) : Void;
	function scissor(scissor:Vector4) : Void;
	function viewport(viewport:Vector4) : Void;
	function reset() : Void;
}