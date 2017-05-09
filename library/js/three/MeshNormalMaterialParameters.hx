package js.three;

import js.html.*;

@:native("THREE.MeshNormalMaterialParameters")
extern interface MeshNormalMaterialParameters extends MaterialParameters
{
	/**
	 * Render geometry as wireframe. Default is false (i.e. render as smooth shaded). 
	 */
	@:optional var wireframe : Bool;
	/**
	 * Controls wireframe thickness. Default is 1. 
	 */
	@:optional var wireframeLinewidth : Float;
	@:optional var morphTargets : Bool;
}