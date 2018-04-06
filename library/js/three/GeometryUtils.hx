package js.three;

import js.html.*;

@:native("THREE.GeometryUtils")
extern class GeometryUtils
{
	/**
	 * @deprecated Use {@link Geometry#merge geometry.merge( geometry2, matrix, materialIndexOffset )} instead.
	 */
	static function merge(geometry1:Dynamic, geometry2:Dynamic, materialIndexOffset:Dynamic) : Dynamic;
	/**
	 * @deprecated Use {@link Geometry#center geometry.center()} instead.
	 */
	static function center(geometry:Dynamic) : Dynamic;
}