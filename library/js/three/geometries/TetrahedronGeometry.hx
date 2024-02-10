package js.three.geometries;

/**
 * A class for generating a tetrahedron geometries.
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/TetrahedronGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/TetrahedronGeometry.js | Source}
 */
@:jsRequire("three")
@:native("THREE.TetrahedronGeometry")
extern class TetrahedronGeometry extends PolyhedronGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `TetrahedronGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.tetrahedrongeometry.Type, String>;

	/**
	 * A class for generating a tetrahedron geometries.
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/TetrahedronGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/TetrahedronGeometry.js | Source}
	 */
	function new(?radius:Float, ?detail:Float) : Void;
    
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : TetrahedronGeometry;
}