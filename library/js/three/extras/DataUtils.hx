package js.three.extras;

@:jsRequire("three")
@:native("THREE")
extern class DataUtils
{
   	/**
	 * Returns a half precision floating point value from the given single precision floating point value.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/DataUtils | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/DataUtils.js | Source}
	 */
	static function toHalfFloat(val:Float) : Float;

	/**
	 * Returns a single precision floating point value from the given half precision floating point value.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/DataUtils | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/DataUtils.js | Source}
	 */
	static function fromHalfFloat(val:Float) : Float;
}