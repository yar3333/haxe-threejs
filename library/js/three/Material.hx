package js.three;

import js.lib.*;

/**
 * Materials describe the appearance of objects. They are defined in a (mostly) renderer-independent way, so you don't have to rewrite materials if you decide to use a different renderer.
 */
@:native("THREE.Material")
extern class Material extends EventDispatcher<{ dispose: {} }>
{
	/**
	 * Read-only flag to check if a given object is of type {@link Material}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isMaterial(default, null) : Bool;
	/**
	 * Enables alpha hashed transparency, an alternative to {@link .transparent} or {@link .alphaTest}. The material
	 * will not be rendered if opacity is lower than a random threshold. Randomization introduces some grain or noise,
	 * but approximates alpha blending without the associated problems of sorting. Using TAARenderPass can reduce the
	 * resulting noise.
	 */
	var alphaHash : Bool;
	/**
	 * Sets the alpha value to be used when running an alpha test. Default is 0.
	 * @default 0
	 */
	var alphaTest : Float;
	/**
	 * Enables alpha to coverage. Can only be used with MSAA-enabled rendering contexts (meaning when the renderer was
	 * created with *antialias* parameter set to `true`). Enabling this will smooth aliasing on clip plane edges and
	 * alphaTest-clipped edges.
	 * @default false
	 */
	var alphaToCoverage : Bool;
	/**
	 * Represents the alpha value of the constant blend color. This property has only an effect when using custom
	 * blending with {@link ConstantAlphaFactor} or {@link OneMinusConstantAlphaFactor}.
	 * @default 0
	 */
	var blendAlpha : Float;
	/**
	 * Represent the RGB values of the constant blend color. This property has only an effect when using custom
	 * blending with {@link ConstantColorFactor} or {@link OneMinusConstantColorFactor}.
	 * @default 0x000000
	 */
	var blendColor : Color;
	/**
	 * Blending destination. It's one of the blending mode constants defined in Three.js. Default is {@link OneMinusSrcAlphaFactor}.
	 * @default THREE.OneMinusSrcAlphaFactor
	 */
	var blendDst : BlendingDstFactor;
	/**
	 * The tranparency of the .blendDst. Default is null.
	 * @default null
	 */
	var blendDstAlpha : Float;
	/**
	 * Blending equation to use when applying blending. It's one of the constants defined in Three.js. Default is {@link AddEquation}.
	 * @default THREE.AddEquation
	 */
	var blendEquation : BlendingEquation;
	/**
	 * The tranparency of the .blendEquation. Default is null.
	 * @default null
	 */
	var blendEquationAlpha : Float;
	/**
	 * Which blending to use when displaying objects with this material. Default is {@link NormalBlending}.
	 * @default THREE.NormalBlending
	 */
	var blending : Blending;
	/**
	 * Blending source. It's one of the blending mode constants defined in Three.js. Default is {@link SrcAlphaFactor}.
	 * @default THREE.SrcAlphaFactor
	 */
	var blendSrc : haxe.extern.EitherType<BlendingSrcFactor, BlendingDstFactor>;
	/**
	 * The tranparency of the .blendSrc. Default is null.
	 * @default null
	 */
	var blendSrcAlpha : Float;
	/**
	 * Changes the behavior of clipping planes so that only their intersection is clipped, rather than their union. Default is false.
	 * @default false
	 */
	var clipIntersection : Bool;
	/**
	 * User-defined clipping planes specified as THREE.Plane objects in world space.
	 * These planes apply to the objects this material is attached to.
	 * Points in space whose signed distance to the plane is negative are clipped (not rendered).
	 * See the WebGL / clipping /intersection example. Default is null.
	 * @default null
	 */
	var clippingPlanes : Array<Plane>;
	/**
	 * Defines whether to clip shadows according to the clipping planes specified on this material. Default is false.
	 * @default false
	 */
	var clipShadows : Bool;
	/**
	 * Whether to render the material's color. This can be used in conjunction with a mesh's .renderOrder property to create invisible objects that occlude other objects. Default is true.
	 * @default true
	 */
	var colorWrite : Bool;
	/**
	 * Custom defines to be injected into the shader. These are passed in form of an object literal, with key/value pairs. { MY_CUSTOM_DEFINE: '' , PI2: Math.PI * 2 }.
	 * The pairs are defined in both vertex and fragment shaders. Default is undefined.
	 * @default undefined
	 */
	var defines : haxe.extern.EitherType<{}, Dynamic<Dynamic>>;
	/**
	 * Which depth function to use. Default is {@link LessEqualDepth}. See the depth mode constants for all possible values.
	 * @default THREE.LessEqualDepth
	 */
	var depthFunc : DepthModes;
	/**
	 * Whether to have depth test enabled when rendering this material. When the depth test is disabled, the depth write
	 * will also be implicitly disabled.
	 * @default true
	 */
	var depthTest : Bool;
	/**
	 * Whether rendering this material has any effect on the depth buffer. Default is true.
	 * When drawing 2D overlays it can be useful to disable the depth writing in order to layer several things together without creating z-index artifacts.
	 * @default true
	 */
	var depthWrite : Bool;
	/**
	 * Unique number of this material instance.
	 */
	var id : Float;
	/**
	 * Whether rendering this material has any effect on the stencil buffer. Default is *false*.
	 * @default false
	 */
	var stencilWrite : Bool;
	/**
	 * The stencil comparison function to use. Default is {@link AlwaysStencilFunc}. See stencil operation constants for all possible values.
	 * @default THREE.AlwaysStencilFunc
	 */
	var stencilFunc : StencilFunc;
	/**
	 * The value to use when performing stencil comparisons or stencil operations. Default is *0*.
	 * @default 0
	 */
	var stencilRef : Float;
	/**
	 * The bit mask to use when writing to the stencil buffer. Default is *0xFF*.
	 * @default 0xff
	 */
	var stencilWriteMask : Float;
	/**
	 * The bit mask to use when comparing against the stencil buffer. Default is *0xFF*.
	 * @default 0xff
	 */
	var stencilFuncMask : Float;
	/**
	 * Which stencil operation to perform when the comparison function returns false. Default is {@link KeepStencilOp}. See the stencil operation constants for all possible values.
	 * @default THREE.KeepStencilOp
	 */
	var stencilFail : StencilOp;
	/**
	 * Which stencil operation to perform when the comparison function returns true but the depth test fails.
	 * Default is {@link KeepStencilOp}.
	 * See the stencil operation constants for all possible values.
	 * @default THREE.KeepStencilOp
	 */
	var stencilZFail : StencilOp;
	/**
	 * Which stencil operation to perform when the comparison function returns true and the depth test passes.
	 * Default is {@link KeepStencilOp}.
	 * See the stencil operation constants for all possible values.
	 * @default THREE.KeepStencilOp
	 */
	var stencilZPass : StencilOp;
	/**
	 * Material name. Default is an empty string.
	 * @default ''
	 */
	var name : String;
	/**
	 * Specifies that the material needs to be updated, WebGL wise. Set it to true if you made changes that need to be reflected in WebGL.
	 * This property is automatically set to true when instancing a new material.
	 * @default false
	 */
	var needsUpdate : Bool;
	/**
	 * Opacity. Default is 1.
	 * @default 1
	 */
	var opacity : Float;
	/**
	 * Whether to use polygon offset. Default is false. This corresponds to the POLYGON_OFFSET_FILL WebGL feature.
	 * @default false
	 */
	var polygonOffset : Bool;
	/**
	 * Sets the polygon offset factor. Default is 0.
	 * @default 0
	 */
	var polygonOffsetFactor : Float;
	/**
	 * Sets the polygon offset units. Default is 0.
	 * @default 0
	 */
	var polygonOffsetUnits : Float;
	/**
	 * Override the renderer's default precision for this material. Can be "highp", "mediump" or "lowp". Defaults is null.
	 * @default null
	 */
	var precision : js.three.material.Precision;
	/**
	 * Whether to premultiply the alpha (transparency) value. See WebGL / Materials / Transparency for an example of the difference. Default is false.
	 * @default false
	 */
	var premultipliedAlpha : Bool;
	/**
	 * @default false
	 */
	var forceSinglePass : Bool;
	/**
	 * Whether to apply dithering to the color to remove the appearance of banding. Default is false.
	 * @default false
	 */
	var dithering : Bool;
	/**
	 * Defines which of the face sides will be rendered - front, back or both.
	 * Default is {@link THREE.FrontSide}. Other options are {@link THREE.BackSide} and {@link THREE.DoubleSide}.
	 * 
	 * @default {@link THREE.FrontSide}
	 */
	var side : Side;
	/**
	 * Defines which of the face sides will cast shadows. Default is *null*.
	 * If *null*, the value is opposite that of side, above.
	 * @default null
	 */
	var shadowSide : Side;
	/**
	 * Defines whether this material is tone mapped according to the renderer's
	 * {@link WebGLRenderer.toneMapping toneMapping} setting. It is ignored when rendering to a render target.
	 * @default true
	 */
	var toneMapped : Bool;
	/**
	 * Defines whether this material is transparent. This has an effect on rendering as transparent objects need special treatment and are rendered after non-transparent objects.
	 * When set to true, the extent to which the material is transparent is controlled by setting it's .opacity property.
	 * @default false
	 */
	var transparent : Bool;
	/**
	 * Value is the string 'Material'. This shouldn't be changed, and can be used to find all objects of this type in a scene.
	 * @default 'Material'
	 */
	var type : String;
	/**
	 * UUID of this material instance. This gets automatically assigned, so this shouldn't be edited.
	 */
	var uuid : String;
	/**
	 * Defines whether vertex coloring is used. Default is false.
	 * @default false
	 */
	var vertexColors : Bool;
	/**
	 * Defines whether this material is visible. Default is true.
	 * @default true
	 */
	var visible : Bool;
	/**
	 * An object that can be used to store custom data about the Material. It should not hold references to functions as these will not be cloned.
	 * @default {}
	 */
	var userData : Dynamic<Dynamic>;
	/**
	 * This starts at 0 and counts how many times .needsUpdate is set to true.
	 * @default 0
	 */
	var version : Float;

	/**
	 * Materials describe the appearance of objects. They are defined in a (mostly) renderer-independent way, so you don't have to rewrite materials if you decide to use a different renderer.
	 */
	function new() : Void;
	/**
	 * Return a new material with the same parameters as this material.
	 */
	function clone() : Material;
	/**
	 * Copy the parameters from the passed material into this material.
	 */
	function copy(material:Material) : Material;
	/**
	 * This disposes the material. Textures of a material don't get disposed. These needs to be disposed by {@link Texture}.
	 */
	function dispose() : Void;
	/**
	 * An optional callback that is executed immediately before the shader program is compiled.
	 * This function is called with the associated WebGL program parameters and renderer.
	 * Useful for the modification of built-in materials.
	 */
	function onBeforeCompile(parameters:WebGLProgramParametersWithUniforms, renderer:WebGLRenderer) : Void;
	/**
	 * In case onBeforeCompile is used, this callback can be used to identify values of settings used in onBeforeCompile, so three.js can reuse a cached shader or recompile the shader as needed.
	 */
	function customProgramCacheKey() : String;
	/**
	 * Sets the properties based on the values.
	 */
	function setValues(values:MaterialParameters) : Void;
	/**
	 * Convert the material to three.js JSON format.
	 */
	function toJSON(?meta:Dynamic) : Dynamic;
}