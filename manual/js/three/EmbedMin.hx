package js.three;

class EmbedMin
{
	static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/three/three.min.js");
	}
}
