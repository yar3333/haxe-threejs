package js.three;

import js.lib.*;

@:native("THREE.WebGLTextures")
extern class WebGLTextures
{
	function new(gl:WebGLRenderingContext, extensions:WebGLExtensions, state:WebGLState, properties:WebGLProperties, capabilities:WebGLCapabilities, utils:WebGLUtils, info:WebGLInfo) : Void;
	function allocateTextureUnit() : Void;
	function resetTextureUnits() : Void;
	function setTexture2D(texture:Dynamic, slot:Float) : Void;
	function setTexture2DArray(texture:Dynamic, slot:Float) : Void;
	function setTexture3D(texture:Dynamic, slot:Float) : Void;
	function setTextureCube(texture:Dynamic, slot:Float) : Void;
	function setupRenderTarget(renderTarget:Dynamic) : Void;
	function updateRenderTargetMipmap(renderTarget:Dynamic) : Void;
	function updateMultisampleRenderTarget(renderTarget:Dynamic) : Void;
	function safeSetTexture2D(texture:Dynamic, slot:Float) : Void;
	function safeSetTextureCube(texture:Dynamic, slot:Float) : Void;
}