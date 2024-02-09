package js.three.geometries;

import js.lib.*;

/**
 * A class for generating an icosahedron geometry.
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/IcosahedronGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/IcosahedronGeometry.js | Source}
 */
@:native("THREE.IcosahedronGeometry")
extern class IcosahedronGeometry extends PolyhedronGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `IcosahedronGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.icosahedrongeometry.Type, String>;

	/**
	 * A class for generating an icosahedron geometry.
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/IcosahedronGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/IcosahedronGeometry.js | Source}
	 */
	function new(?radius:Float, ?detail:Float) : Void;
    
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : IcosahedronGeometry;
}