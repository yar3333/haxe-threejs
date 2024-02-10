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
	static var DEG2RAD(default, null) : Float;
	static var RAD2DEG(default, null) : Float;
	static var MathUtils(default, null) : { var DEG2RAD : typeof DEG2RAD; var RAD2DEG : typeof RAD2DEG; var generateUUID : typeof generateUUID; var clamp : typeof clamp; var euclideanModulo : typeof euclideanModulo; var mapLinear : typeof mapLinear; var inverseLerp : typeof inverseLerp; var lerp : typeof lerp; var damp : typeof damp; var pingpong : typeof pingpong; var smoothstep : typeof smoothstep; var smootherstep : typeof smootherstep; var randInt : typeof randInt; var randFloat : typeof randFloat; var randFloatSpread : typeof randFloatSpread; var seededRandom : typeof seededRandom; var degToRad : typeof degToRad; var radToDeg : typeof radToDeg; var isPowerOfTwo : typeof isPowerOfTwo; var ceilPowerOfTwo : typeof ceilPowerOfTwo; var floorPowerOfTwo : typeof floorPowerOfTwo; var setQuaternionFromProperEuler : typeof setQuaternionFromProperEuler; var normalize : typeof normalize; var denormalize : typeof denormalize; };
	static var ShaderChunk(default, null) : { var alphahash_fragment : String; var alphahash_pars_fragment : String; var alphamap_fragment : String; var alphamap_pars_fragment : String; var alphatest_fragment : String; var alphatest_pars_fragment : String; var aomap_fragment : String; var aomap_pars_fragment : String; var batching_pars_vertex : String; var begin_vertex : String; var beginnormal_vertex : String; var bsdfs : String; var iridescence_fragment : String; var bumpmap_pars_fragment : String; var clipping_planes_fragment : String; var clipping_planes_pars_fragment : String; var clipping_planes_pars_vertex : String; var clipping_planes_vertex : String; var color_fragment : String; var color_pars_fragment : String; var color_pars_vertex : String; var color_vertex : String; var common : String; var cube_uv_reflection_fragment : String; var defaultnormal_vertex : String; var displacementmap_pars_vertex : String; var displacementmap_vertex : String; var emissivemap_fragment : String; var emissivemap_pars_fragment : String; var colorspace_fragment : String; var colorspace_pars_fragment : String; var envmap_fragment : String; var envmap_common_pars_fragment : String; var envmap_pars_fragment : String; var envmap_pars_vertex : String; var envmap_physical_pars_fragment : String; var envmap_vertex : String; var fog_vertex : String; var fog_pars_vertex : String; var fog_fragment : String; var fog_pars_fragment : String; var gradientmap_pars_fragment : String; var lightmap_fragment : String; var lightmap_pars_fragment : String; var lights_lambert_fragment : String; var lights_lambert_pars_fragment : String; var lights_pars_begin : String; var lights_toon_fragment : String; var lights_toon_pars_fragment : String; var lights_phong_fragment : String; var lights_phong_pars_fragment : String; var lights_physical_fragment : String; var lights_physical_pars_fragment : String; var lights_fragment_begin : String; var lights_fragment_maps : String; var lights_fragment_end : String; var logdepthbuf_fragment : String; var logdepthbuf_pars_fragment : String; var logdepthbuf_pars_vertex : String; var logdepthbuf_vertex : String; var map_fragment : String; var map_pars_fragment : String; var map_particle_fragment : String; var map_particle_pars_fragment : String; var metalnessmap_fragment : String; var metalnessmap_pars_fragment : String; var morphcolor_vertex : String; var morphnormal_vertex : String; var morphtarget_pars_vertex : String; var morphtarget_vertex : String; var normal_fragment_begin : String; var normal_fragment_maps : String; var normal_pars_fragment : String; var normal_pars_vertex : String; var normal_vertex : String; var normalmap_pars_fragment : String; var clearcoat_normal_fragment_begin : String; var clearcoat_normal_fragment_maps : String; var clearcoat_pars_fragment : String; var iridescence_pars_fragment : String; var opaque_fragment : String; var packing : String; var premultiplied_alpha_fragment : String; var project_vertex : String; var dithering_fragment : String; var dithering_pars_fragment : String; var roughnessmap_fragment : String; var roughnessmap_pars_fragment : String; var shadowmap_pars_fragment : String; var shadowmap_pars_vertex : String; var shadowmap_vertex : String; var shadowmask_pars_fragment : String; var skinbase_vertex : String; var skinning_pars_vertex : String; var skinning_vertex : String; var skinnormal_vertex : String; var specularmap_fragment : String; var specularmap_pars_fragment : String; var tonemapping_fragment : String; var tonemapping_pars_fragment : String; var transmission_fragment : String; var transmission_pars_fragment : String; var uv_pars_fragment : String; var uv_pars_vertex : String; var uv_vertex : String; var worldpos_vertex : String; var background_vert : String; var background_frag : String; var backgroundCube_vert : String; var backgroundCube_frag : String; var cube_vert : String; var cube_frag : String; var depth_vert : String; var depth_frag : String; var distanceRGBA_vert : String; var distanceRGBA_frag : String; var equirect_vert : String; var equirect_frag : String; var linedashed_vert : String; var linedashed_frag : String; var meshbasic_vert : String; var meshbasic_frag : String; var meshlambert_vert : String; var meshlambert_frag : String; var meshmatcap_vert : String; var meshmatcap_frag : String; var meshnormal_vert : String; var meshnormal_frag : String; var meshphong_vert : String; var meshphong_frag : String; var meshphysical_vert : String; var meshphysical_frag : String; var meshtoon_vert : String; var meshtoon_frag : String; var points_vert : String; var points_frag : String; var shadow_vert : String; var shadow_frag : String; var sprite_vert : String; var sprite_frag : String; };
	static var ShaderLib : { var basic : ShaderLibShader; var lambert : ShaderLibShader; var phong : ShaderLibShader; var standard : ShaderLibShader; var matcap : ShaderLibShader; var points : ShaderLibShader; var dashed : ShaderLibShader; var depth : ShaderLibShader; var normal : ShaderLibShader; var sprite : ShaderLibShader; var background : ShaderLibShader; var cube : ShaderLibShader; var equirect : ShaderLibShader; var distanceRGBA : ShaderLibShader; var shadow : ShaderLibShader; var physical : ShaderLibShader; };

	/**
	 * An implementation of the {@link Earcut} polygon triangulation algorithm
	 * @remarks
	 * The code is a port of {@link https://github.com/mapbox/earcut | mapbox/earcut}.
	 * @see {@link https://threejs.org/docs/index.html#api/en/extras/Earcut | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/extras/Earcut.js | Source}
	 */
	static var Earcut(default, null) : { /** * Triangulates the given shape definition by returning an array of triangles * @remarks * A triangle is defined by three consecutive integers representing vertex indices. */ function triangulate(data:Array<Float>, ?holeIndices:Array<Float>, ?dim:Float) : Array<Float>; };

	static function SRGBToLinear(c:Float) : Float;
	static function LinearToSRGB(c:Float) : Float;
	static function convertArray(array:Dynamic, type:Dynamic, forceClone:Bool) : Dynamic;
	static function isTypedArray(object:Dynamic) : Bool;
	static function getKeyframeOrder(times:Array<Float>) : Array<Float>;
	static function sortedArray(values:Array<Dynamic>, stride:Float, order:Array<Float>) : Array<Dynamic>;
	static function flattenJSON(jsonKeys:Array<String>, times:Array<Dynamic>, values:Array<Dynamic>, valuePropertyName:String) : Void;
	static function subclip(sourceClip:AnimationClip, name:String, startFrame:Float, endFrame:Float, fps:Float) : AnimationClip;
	static function makeClipAdditive(targetClip:AnimationClip, referenceFrame:Float, referenceClip:AnimationClip, fps:Float) : AnimationClip;
	static function generateUUID() : String;

	/**
	 * Clamps the x to be between a and b.
	 */
	static function clamp(value:Float, min:Float, max:Float) : Float;

	static function euclideanModulo(n:Int, m:Float) : Float;

	/**
	 * Linear mapping of x from range [a1, a2] to range [b1, b2].
	 */
	static function mapLinear(x:Float, a1:Float, a2:Float, b1:Float, b2:Float) : Float;

	static function inverseLerp(x:Float, y:Float, t:Float) : Float;

	/**
	 * Returns a value linearly interpolated from two known points based
	 * on the given interval - t = 0 will return x and t = 1 will return y.
	 */
	static function lerp(x:Float, y:Float, t:Float) : Float;

	/**
	 * Smoothly interpolate a number from x toward y in a spring-like
	 * manner using the dt to maintain frame rate independent movement.
	 */
	static function damp(x:Float, y:Float, lambda:Float, dt:Float) : Float;

	/**
	 * Returns a value that alternates between 0 and length.
	 */
	static function pingpong(x:Float, length:Float) : Float;

	static function smoothstep(x:Float, min:Float, max:Float) : Float;

	static function smootherstep(x:Float, min:Float, max:Float) : Float;

	/**
	 * Random integer from low to high interval.
	 */
	static function randInt(low:Float, high:Float) : Float;

	/**
	 * Random float from low to high interval.
	 */
	static function randFloat(low:Float, high:Float) : Float;

	/**
	 * Random float from - range / 2 to range / 2 interval.
	 */
	static function randFloatSpread(range:Float) : Float;

	/**
	 * Deterministic pseudo-random float in the interval [ 0, 1 ].
	 */
	static function seededRandom(seed:Float) : Float;

	static function degToRad(degrees:Float) : Float;
	static function radToDeg(radians:Float) : Float;
	static function isPowerOfTwo(value:Float) : Bool;
	static function ceilPowerOfTwo(value:Float) : Float;
	static function floorPowerOfTwo(value:Float) : Float;
	static function setQuaternionFromProperEuler(q:Quaternion, a:Float, b:Float, c:Float, order:String) : Void;
	static function denormalize(value:Float, array:haxe.extern.EitherType<Float32Array, haxe.extern.EitherType<Uint32Array, haxe.extern.EitherType<Uint16Array, haxe.extern.EitherType<Uint8Array, haxe.extern.EitherType<Int32Array, haxe.extern.EitherType<Int16Array, Int8Array>>>>>>) : Float;
	static function normalize(value:Float, array:haxe.extern.EitherType<Float32Array, haxe.extern.EitherType<Uint32Array, haxe.extern.EitherType<Uint16Array, haxe.extern.EitherType<Uint8Array, haxe.extern.EitherType<Int32Array, haxe.extern.EitherType<Int16Array, Int8Array>>>>>>) : Float;
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