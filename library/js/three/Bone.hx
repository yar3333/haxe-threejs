package js.three;

import js.html.*;

@:native("THREE.Bone")
extern class Bone extends Object3D
{
	function new(skin:SkinnedMesh) : Void;

	var skin : SkinnedMesh;

	@:overload(function():Bone{})
	override function clone(?recursive:Bool) : Object3D;
	@:overload(function(source:Bone):Bone{})
	override function copy(source:Object3D, ?recursive:Bool) : Object3D;
}