package js.three;

import js.lib.*;
import js.three.Constants;

typedef MeshDepthMaterialParameters =
{>MaterialParameters,
	@:optional var map : Texture;
	@:optional var alphaMap : Texture;
	@:optional var depthPacking : DepthPackingStrategies;
	@:optional var displacementMap : Texture;
	@:optional var displacementScale : Float;
	@:optional var displacementBias : Float;
	@:optional var wireframe : Bool;
	@:optional var wireframeLinewidth : Float;
}