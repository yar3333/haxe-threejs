package js.three;

import js.html.*;

@:native("THREE.Bone")
extern class Bone extends Object3D
{
	var skin : SkinnedMesh;

	function new(skin:SkinnedMesh) : Void;
}