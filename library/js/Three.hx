package js;

@:jsRequire("three")
@:native("THREE")
extern class Three
{
	static var REVISION(default, null) : String;

    static var DefaultLoadingManager(default, null) : LoadingManager;
	
    static var LoaderUtils(default, null) : LoaderUtils;

	/**
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/math/MathUtils.js|src/math/MathUtils.js}
	 */
	
	
	
	
	

	/**
	 * An implementation of the {@link Earcut} polygon triangulation algorithm
	 * @remarks
	 * The code is a port of {@link https://github.com/mapbox/earcut | mapbox/earcut}.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/Earcut | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/Earcut.js | Source}
	 */
	static var Earcut(default, null) : { /** * Triangulates the given shape definition by returning an array of triangles * @remarks * A triangle is defined by three consecutive integers representing vertex indices. */ function triangulate(data:Array<Float>, ?holeIndices:Array<Float>, ?dim:Float) : Array<Float>; };

	static function convertArray(array:Dynamic, type:Dynamic, forceClone:Bool) : Dynamic;
	static function isTypedArray(object:Dynamic) : Bool;
	static function getKeyframeOrder(times:Array<Float>) : Array<Float>;
	static function sortedArray(values:Array<Dynamic>, stride:Float, order:Array<Float>) : Array<Dynamic>;
	static function flattenJSON(jsonKeys:Array<String>, times:Array<Dynamic>, values:Array<Dynamic>, valuePropertyName:String) : Void;
	static function subclip(sourceClip:AnimationClip, name:String, startFrame:Float, endFrame:Float, fps:Float) : AnimationClip;
	static function makeClipAdditive(targetClip:AnimationClip, referenceFrame:Float, referenceClip:AnimationClip, fps:Float) : AnimationClip;
	
	static function cloneUniforms<T:Dynamic<IUniform>>(uniformsSrc:T) : T;
	static function mergeUniforms(uniforms:Array<Dynamic<IUniform>>) : Dynamic<IUniform>;
	static function cloneUniformsGroups(src:Array<UniformsGroup>) : Array<UniformsGroup>;
	static function WebGLShader(gl:js.html.webgl.RenderingContext, type:String, string:String) : WebGLShader;
	static function WebGLUniformsGroups(gl:js.html.webgl.RenderingContext, info:WebGLInfo, capabilities:WebGLCapabilities, state:WebGLState) : { var dispose : Void->Void; var update : UniformsGroup->WebGLProgram->Void; var bind : UniformsGroup->WebGLProgram->Void; };
	static function createCanvasElement() : js.html.CanvasElement;

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