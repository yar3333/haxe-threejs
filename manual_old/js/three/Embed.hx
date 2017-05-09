package js.three;

class Embed
{
	static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/three/three.js");
	}
}
