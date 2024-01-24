package js.three;

import js.lib.*;

typedef MeshDepthMaterialParameters =
{>MaterialParameters,
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
}