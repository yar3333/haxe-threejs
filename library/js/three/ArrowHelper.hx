package js.three;

@:native("THREE.ArrowHelper")
extern class ArrowHelper extends Object3D
{
	function new(dir:Vector3, origin:Vector3, ?length:Float, hex:Int) : Void;
	function setDirection(dir:Vector3) : Void;
	function setLength(length:Float) : Void;
	function setColor(hex:Int) : Void;
}
