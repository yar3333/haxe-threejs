package js.three;

@:native("THREE")
extern class CopyShader 
{
	#if !noEmbedJS
	static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/three/CopyShader.js");
	}
	#end
	
	static var CopyShader : Shader;
}
