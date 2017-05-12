package js.three;

import js.html.*;

@:native("THREE.MeshDepthMaterialParameters")
typedef MeshDepthMaterialParameters =
{>MaterialParameters,
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
}