package js.three;

import js.html.*;

/**
 * A class for displaying particles in the form of variable size points. For example, if using the WebGLRenderer, the particles are displayed using GL_POINTS.
 *
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/objects/ParticleSystem.js">src/objects/ParticleSystem.js</a>
 */
@:native("THREE.Points")
extern class Points extends Object3D
{
	/**
	 * @param geometry An instance of Geometry.
	 * @param material An instance of Material (optional).
	 */
	function new(
		geometry: haxe.extern.EitherType<Geometry, BufferGeometry>,
		?material:haxe.extern.EitherType<PointsMaterial, ShaderMaterial>
	) : Void;

	/**
	 * An instance of Geometry, where each vertex designates the position of a particle in the system.
	 */
	var geometry : Geometry;

	/**
	 * An instance of Material, defining the object's appearance. Default is a ParticleBasicMaterial with randomised colour.
	 */
	var material : Material;

	override function raycast(raycaster:Raycaster, intersects:Dynamic) : Void;
	@:overload(function():Points{})
	override function clone(?recursive:Bool) : Object3D;
	@:overload(function(source:Points):Points{})
	override function copy(source:Object3D, ?recursive:Bool) : Object3D;
}