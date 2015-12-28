package js.three;

import js.html.*;

typedef MeshNormalMaterialParameters =
{
	>MaterialParameters,

	@:optional var opacity : Float;
	@:optional var shading : Shading;
	@:optional var blending : Blending;
	@:optional var depthTest : Bool;
	@:optional var depthWrite : Bool;

	/** Render geometry as wireframe. Default is false (i.e. render as smooth shaded). */
	@:optional var wireframe : Bool;
	/** Controls wireframe thickness. Default is 1. */
	@:optional var wireframeLinewidth : Float;
}