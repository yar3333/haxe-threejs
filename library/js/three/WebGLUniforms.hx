package js.three;

import js.lib.*;

@:native("THREE.WebGLUniforms")
extern class WebGLUniforms
{
	function new(gl:WebGLRenderingContext, program:WebGLProgram) : Void;
	function setValue(gl:WebGLRenderingContext, name:String, value:Dynamic, textures:WebGLTextures) : Void;
	function setOptional(gl:WebGLRenderingContext, object:Dynamic, name:String) : Void;
	static function upload(gl:WebGLRenderingContext, seq:Dynamic, values:Array<Dynamic>, textures:WebGLTextures) : Void;
	static function seqWithValue(seq:Dynamic, values:Array<Dynamic>) : Array<Dynamic>;
}