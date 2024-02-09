package js.three;

import js.lib.*;

/**
 * A class for generating an octahedron geometry.
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/OctahedronGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/OctahedronGeometry.js | Source}
 */
@:native("THREE.OctahedronGeometry")
extern class OctahedronGeometry extends PolyhedronGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `OctahedronGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.octahedrongeometry.Type, String>;

	/**
	 * A class for generating an octahedron geometry.
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/OctahedronGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/OctahedronGeometry.js | Source}
	 */
	function new(?radius:Float, ?detail:Float) : Void;
    
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : OctahedronGeometry;
}