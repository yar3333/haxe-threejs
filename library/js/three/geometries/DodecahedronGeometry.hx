package js.three.geometries;

/**
 * A class for generating a dodecahedron geometries.
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/DodecahedronGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/DodecahedronGeometry.js | Source}
 */
@:jsRequire("three", "DodecahedronGeometry")
@:native("THREE.DodecahedronGeometry")
extern class DodecahedronGeometry extends PolyhedronGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `DodecahedronGeometry`
	 */
	//var type : haxe.extern.EitherType<js.three.dodecahedrongeometry.Type, String>;

	/**
	 * A class for generating a dodecahedron geometries.
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/DodecahedronGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/DodecahedronGeometry.js | Source}
	 */
	function new(?radius:Float, ?detail:Float) : Void;
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : DodecahedronGeometry;
}