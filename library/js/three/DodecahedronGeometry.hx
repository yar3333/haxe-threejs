package js.three;

import js.lib.*;

/**
 * A class for generating a dodecahedron geometries.
 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/DodecahedronGeometry | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/DodecahedronGeometry.js | Source}
 */
@:native("THREE.DodecahedronGeometry")
extern class DodecahedronGeometry extends PolyhedronGeometry
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `DodecahedronGeometry`
	 */
	//var override : Dynamic;
	//var type : haxe.extern.EitherType<js.three.dodecahedrongeometry.Type, String>;

	/**
	 * A class for generating a dodecahedron geometries.
	 * @see {@link https://threejs.org/docs/index.html#api/en/geometries/DodecahedronGeometry | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/geometries/DodecahedronGeometry.js | Source}
	 */
	@:overload(function(?radius:Float,?detail:Float):Void{})
	function new(?vertices:Array<Float>, ?indices:Array<Float>, ?radius:Float, ?detail:Float) : Void;
	/**
	 * @internal 
	 */
	static function fromJSON(data:{}) : DodecahedronGeometry;
}