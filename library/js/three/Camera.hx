package js.three;

// Deprecated? If so, replace with "interface Camera"
@:native("THREE.Camera")
extern class Camera extends Object3D
{
	function new() : Void;
	var matrixWorldInverse : Matrix4;
	var projectionMatrix : Matrix4;
	var projectionMatrixInverse : Matrix4;
	// override function lookAt(v:Vector3) : Void;
}
