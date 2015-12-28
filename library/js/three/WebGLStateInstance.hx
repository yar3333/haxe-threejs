package js.three;

import js.html.*;

@:native("THREE.WebGLStateInstance")
extern interface WebGLStateInstance
{
	function new(gl:Dynamic, extensions:Dynamic, paramThreeToGL:Dynamic) : Void;
	function init() : Void;
	function initAttributes() : Void;
	function enableAttribute(attribute:String) : Void;
	function enableAttributeAndDivisor(attribute:String, meshPerAttribute:Dynamic, extension:Dynamic) : Void;
	function disableUnusedAttributes() : Void;
	function enable(id:String) : Void;
	function disable(id:String) : Void;
	function getCompressedTextureFormats() : Dynamic;
	function setBlending(blending:Float, blendEquation:Float, blendSrc:Float, blendDst:Float, blendEquationAlpha:Float, blendSrcAlpha:Float, blendDstAlpha:Float) : Void;
	function setDepthFunc(func:Dynamic) : Void;
	function setDepthTest(depthTest:Float) : Void;
	function setDepthWrite(depthWrite:Float) : Void;
	function setColorWrite(colorWrite:Float) : Void;
	function setFlipSided(flipSided:Float) : Void;
	function setLineWidth(width:Float) : Void;
	function setPolygonOffset(polygonoffset:Float, factor:Float, units:Float) : Void;
	function setScissorTest(scissorTest:Bool) : Void;
	function activeTexture(webglSlot:Dynamic) : Void;
	function bindTexture(webglType:Dynamic, webglTexture:Dynamic) : Void;
	function compressedTexImage2D() : Void;
	function texImage2D() : Void;
	function reset() : Void;
}