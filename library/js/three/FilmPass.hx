package js.three;

import js.html.*;

@:native("THREE.FilmPass")
extern class FilmPass extends Pass
{
	var scene : Scene;
	var camera : Camera;
	var uniforms : IUniform;
	var material : Material;
	var quad : Mesh;

	function new(noiseIntensity:Float, scanlinesIntensity:Float, scanlinesCount:Float, grayscale:Bool) : Void;
}