package js.three.materials;

import js.three.math.Vector3;
import js.three.textures.Texture;

typedef MeshDistanceMaterialParameters =
{>MaterialParameters,
	@:optional var map : Texture;
	@:optional var alphaMap : Texture;
	@:optional var displacementMap : Texture;
	@:optional var displacementScale : Float;
	@:optional var displacementBias : Float;
	@:optional var farDistance : Float;
	@:optional var nearDistance : Float;
	@:optional var referencePosition : Vector3;
}