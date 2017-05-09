package js.three;

import js.html.*;

@:native("THREE.MeshDepthMaterialParameters")
extern interface MeshDepthMaterialParameters extends MaterialParameters
{
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
}