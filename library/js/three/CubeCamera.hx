package js.three;

import js.html.*;

@:native("THREE.CubeCamera")
extern class CubeCamera extends Object3D
{
	var renderTarget : WebGLRenderTargetCube;

	@:overload(function(?near:Float,?far:Float,?cubeResolution:Float):Void{})
	function new() : Void;
	/**
	 * @deprecated Use {@link CubeCamera#update .update()} instead
	 */
	function updateCubeMap(renderer:Renderer, scene:Scene) : Void;
	function update(renderer:Renderer, scene:Scene) : Void;
}