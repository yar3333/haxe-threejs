package js.three;

import js.html.*;

@:native("THREE.DDSLoader")
extern class DDSLoader extends CompressedTextureLoader
{
	@:overload(function():Void{})
	function new(?manager:LoadingManager) : Void;
	function parse(buffer:String, loadMipmaps:Bool) : Dds;
}