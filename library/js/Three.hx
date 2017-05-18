package js;

import js.html.*;

@:native("THREE")
extern class Three
{
	static var REVISION(default, null) : String;
	static var CullFaceNone(default, null) : CullFace;
	static var CullFaceBack(default, null) : CullFace;
	static var CullFaceFront(default, null) : CullFace;
	static var CullFaceFrontBack(default, null) : CullFace;
	static var FrontFaceDirectionCW(default, null) : FrontFaceDirection;
	static var FrontFaceDirectionCCW(default, null) : FrontFaceDirection;
	static var BasicShadowMap(default, null) : ShadowMapType;
	static var PCFShadowMap(default, null) : ShadowMapType;
	static var PCFSoftShadowMap(default, null) : ShadowMapType;
	static var FrontSide(default, null) : Side;
	static var BackSide(default, null) : Side;
	static var DoubleSide(default, null) : Side;
	static var FlatShading(default, null) : Shading;
	static var SmoothShading(default, null) : Shading;
	static var NoColors(default, null) : Colors;
	static var FaceColors(default, null) : Colors;
	static var VertexColors(default, null) : Colors;
	static var NoBlending(default, null) : Blending;
	static var NormalBlending(default, null) : Blending;
	static var AdditiveBlending(default, null) : Blending;
	static var SubtractiveBlending(default, null) : Blending;
	static var MultiplyBlending(default, null) : Blending;
	static var CustomBlending(default, null) : Blending;
	static var AddEquation(default, null) : BlendingEquation;
	static var SubtractEquation(default, null) : BlendingEquation;
	static var ReverseSubtractEquation(default, null) : BlendingEquation;
	static var MinEquation(default, null) : BlendingEquation;
	static var MaxEquation(default, null) : BlendingEquation;
	static var ZeroFactor(default, null) : BlendingDstFactor;
	static var OneFactor(default, null) : BlendingDstFactor;
	static var SrcColorFactor(default, null) : BlendingDstFactor;
	static var OneMinusSrcColorFactor(default, null) : BlendingDstFactor;
	static var SrcAlphaFactor(default, null) : BlendingDstFactor;
	static var OneMinusSrcAlphaFactor(default, null) : BlendingDstFactor;
	static var DstAlphaFactor(default, null) : BlendingDstFactor;
	static var OneMinusDstAlphaFactor(default, null) : BlendingDstFactor;
	static var DstColorFactor(default, null) : BlendingDstFactor;
	static var OneMinusDstColorFactor(default, null) : BlendingDstFactor;
	static var SrcAlphaSaturateFactor(default, null) : BlendingSrcFactor;
	static var NeverDepth(default, null) : DepthModes;
	static var AlwaysDepth(default, null) : DepthModes;
	static var LessDepth(default, null) : DepthModes;
	static var LessEqualDepth(default, null) : DepthModes;
	static var EqualDepth(default, null) : DepthModes;
	static var GreaterEqualDepth(default, null) : DepthModes;
	static var GreaterDepth(default, null) : DepthModes;
	static var NotEqualDepth(default, null) : DepthModes;
	static var MultiplyOperation(default, null) : Combine;
	static var MixOperation(default, null) : Combine;
	static var AddOperation(default, null) : Combine;
	static var NoToneMapping(default, null) : ToneMapping;
	static var LinearToneMapping(default, null) : ToneMapping;
	static var ReinhardToneMapping(default, null) : ToneMapping;
	static var Uncharted2ToneMapping(default, null) : ToneMapping;
	static var CineonToneMapping(default, null) : ToneMapping;
	static var UVMapping(default, null) : Mapping;
	static var CubeReflectionMapping(default, null) : Mapping;
	static var CubeRefractionMapping(default, null) : Mapping;
	static var EquirectangularReflectionMapping(default, null) : Mapping;
	static var EquirectangularRefractionMapping(default, null) : Mapping;
	static var SphericalReflectionMapping(default, null) : Mapping;
	static var CubeUVReflectionMapping(default, null) : Mapping;
	static var CubeUVRefractionMapping(default, null) : Mapping;
	static var RepeatWrapping(default, null) : Wrapping;
	static var ClampToEdgeWrapping(default, null) : Wrapping;
	static var MirroredRepeatWrapping(default, null) : Wrapping;
	static var NearestFilter(default, null) : TextureFilter;
	static var NearestMipMapNearestFilter(default, null) : TextureFilter;
	static var NearestMipMapLinearFilter(default, null) : TextureFilter;
	static var LinearFilter(default, null) : TextureFilter;
	static var LinearMipMapNearestFilter(default, null) : TextureFilter;
	static var LinearMipMapLinearFilter(default, null) : TextureFilter;
	static var UnsignedByteType(default, null) : TextureDataType;
	static var ByteType(default, null) : TextureDataType;
	static var ShortType(default, null) : TextureDataType;
	static var UnsignedShortType(default, null) : TextureDataType;
	static var IntType(default, null) : TextureDataType;
	static var UnsignedIntType(default, null) : TextureDataType;
	static var FloatType(default, null) : TextureDataType;
	static var HalfFloatType(default, null) : TextureDataType;
	static var UnsignedShort4444Type(default, null) : PixelType;
	static var UnsignedShort5551Type(default, null) : PixelType;
	static var UnsignedShort565Type(default, null) : PixelType;
	static var UnsignedInt248Type(default, null) : PixelType;
	static var AlphaFormat(default, null) : PixelFormat;
	static var RGBFormat(default, null) : PixelFormat;
	static var RGBAFormat(default, null) : PixelFormat;
	static var LuminanceFormat(default, null) : PixelFormat;
	static var LuminanceAlphaFormat(default, null) : PixelFormat;
	static var RGBEFormat(default, null) : PixelFormat;
	static var DepthFormat(default, null) : PixelFormat;
	static var DepthStencilFormat(default, null) : PixelFormat;
	static var RGB_S3TC_DXT1_Format(default, null) : CompressedPixelFormat;
	static var RGBA_S3TC_DXT1_Format(default, null) : CompressedPixelFormat;
	static var RGBA_S3TC_DXT3_Format(default, null) : CompressedPixelFormat;
	static var RGBA_S3TC_DXT5_Format(default, null) : CompressedPixelFormat;
	static var RGB_PVRTC_4BPPV1_Format(default, null) : CompressedPixelFormat;
	static var RGB_PVRTC_2BPPV1_Format(default, null) : CompressedPixelFormat;
	static var RGBA_PVRTC_4BPPV1_Format(default, null) : CompressedPixelFormat;
	static var RGBA_PVRTC_2BPPV1_Format(default, null) : CompressedPixelFormat;
	static var RGB_ETC1_Format(default, null) : CompressedPixelFormat;
	static var LoopOnce(default, null) : AnimationActionLoopStyles;
	static var LoopRepeat(default, null) : AnimationActionLoopStyles;
	static var LoopPingPong(default, null) : AnimationActionLoopStyles;
	static var InterpolateDiscrete(default, null) : InterpolationModes;
	static var InterpolateLinear(default, null) : InterpolationModes;
	static var InterpolateSmooth(default, null) : InterpolationModes;
	static var ZeroCurvatureEnding(default, null) : InterpolationEndingModes;
	static var ZeroSlopeEnding(default, null) : InterpolationEndingModes;
	static var WrapAroundEnding(default, null) : InterpolationEndingModes;
	static var TrianglesDrawMode(default, null) : TrianglesDrawModes;
	static var TriangleStripDrawMode(default, null) : TrianglesDrawModes;
	static var TriangleFanDrawMode(default, null) : TrianglesDrawModes;
	static var LinearEncoding(default, null) : TextureEncoding;
	static var sRGBEncoding(default, null) : TextureEncoding;
	static var GammaEncoding(default, null) : TextureEncoding;
	static var RGBEEncoding(default, null) : TextureEncoding;
	static var LogLuvEncoding(default, null) : TextureEncoding;
	static var RGBM7Encoding(default, null) : TextureEncoding;
	static var RGBM16Encoding(default, null) : TextureEncoding;
	static var RGBDEncoding(default, null) : TextureEncoding;
	static var BasicDepthPacking(default, null) : DepthPackingStrategies;
	static var RGBADepthPacking(default, null) : DepthPackingStrategies;
	static var GeometryIdCount : Float;
	static var Object3DIdCount : Float;
	static var DefaultLoadingManager(default, null) : LoadingManager;
	static var MaterialIdCount : Float;
	/**
	 * @deprecated
	 */
	static var LineStrip(default, null) : Float;
	/**
	 * @deprecated
	 */
	static var LinePieces(default, null) : Float;
	static var ShaderChunk : { var alphamap_fragment : String; var alphamap_pars_fragment : String; var alphatest_fragment : String; var aomap_fragment : String; var aomap_pars_fragment : String; var begin_vertex : String; var beginnormal_vertex : String; var bsdfs : String; var bumpmap_pars_fragment : String; var clipping_planes_fragment : String; var clipping_planes_pars_fragment : String; var clipping_planes_pars_vertex : String; var clipping_planes_vertex : String; var color_fragment : String; var color_pars_fragment : String; var color_pars_vertex : String; var color_vertex : String; var common : String; var cube_frag : String; var cube_vert : String; var cube_uv_reflection_fragment : String; var defaultnormal_vertex : String; var depth_frag : String; var depth_vert : String; var distanceRGBA_frag : String; var distanceRGBA_vert : String; var displacementmap_vertex : String; var displacementmap_pars_vertex : String; var emissivemap_fragment : String; var emissivemap_pars_fragment : String; var encodings_pars_fragment : String; var encodings_fragment : String; var envmap_fragment : String; var envmap_pars_fragment : String; var envmap_pars_vertex : String; var envmap_vertex : String; var equirect_frag : String; var equirect_vert : String; var fog_fragment : String; var fog_pars_fragment : String; var linedashed_frag : String; var linedashed_vert : String; var lightmap_fragment : String; var lightmap_pars_fragment : String; var lights_lambert_vertex : String; var lights_pars : String; var lights_phong_fragment : String; var lights_phong_pars_fragment : String; var lights_physical_fragment : String; var lights_physical_pars_fragment : String; var lights_template : String; var logdepthbuf_fragment : String; var logdepthbuf_pars_fragment : String; var logdepthbuf_pars_vertex : String; var logdepthbuf_vertex : String; var map_fragment : String; var map_pars_fragment : String; var map_particle_fragment : String; var map_particle_pars_fragment : String; var meshbasic_frag : String; var meshbasic_vert : String; var meshlambert_frag : String; var meshlambert_vert : String; var meshphong_frag : String; var meshphong_vert : String; var meshphysical_frag : String; var meshphysical_vert : String; var metalnessmap_fragment : String; var metalnessmap_pars_fragment : String; var morphnormal_vertex : String; var morphtarget_pars_vertex : String; var morphtarget_vertex : String; var normal_flip : String; var normal_frag : String; var normal_fragment : String; var normal_vert : String; var normalmap_pars_fragment : String; var packing : String; var points_frag : String; var points_vert : String; var shadow_frag : String; var shadow_vert : String; var premultiplied_alpha_fragment : String; var project_vertex : String; var roughnessmap_fragment : String; var roughnessmap_pars_fragment : String; var shadowmap_pars_fragment : String; var shadowmap_pars_vertex : String; var shadowmap_vertex : String; var shadowmask_pars_fragment : String; var skinbase_vertex : String; var skinning_pars_vertex : String; var skinning_vertex : String; var skinnormal_vertex : String; var specularmap_fragment : String; var specularmap_pars_fragment : String; var tonemapping_fragment : String; var tonemapping_pars_fragment : String; var uv2_pars_fragment : String; var uv2_pars_vertex : String; var uv2_vertex : String; var uv_pars_fragment : String; var uv_pars_vertex : String; var uv_vertex : String; var worldpos_vertex : String; };
	static var ShaderLib : { var basic : Shader; var lambert : Shader; var phong : Shader; var standard : Shader; var points : Shader; var dashed : Shader; var depth : Shader; var normal : Shader; var cube : Shader; var equirect : Shader; var depthRGBA : Shader; var distanceRGBA : Shader; var physical : Shader; };
	static var UniformsLib : { var common : { var diffuse : IUniform; var opacity : IUniform; var map : IUniform; var offsetRepeat : IUniform; var specularMap : IUniform; var alphaMap : IUniform; var envMap : IUniform; var flipEnvMap : IUniform; var reflectivity : IUniform; var refractionRation : IUniform; }; var aomap : { var aoMap : IUniform; var aoMapIntensity : IUniform; }; var lightmap : { var lightMap : IUniform; var lightMapIntensity : IUniform; }; var emissivemap : { var emissiveMap : IUniform; }; var bumpmap : { var bumpMap : IUniform; var bumpScale : IUniform; }; var normalmap : { var normalMap : IUniform; var normalScale : IUniform; }; var displacementmap : { var displacementMap : IUniform; var displacementScale : IUniform; var displacementBias : IUniform; }; var roughnessmap : { var roughnessMap : IUniform; }; var metalnessmap : { var metalnessMap : IUniform; }; var fog : { var fogDensity : IUniform; var fogNear : IUniform; var fogFar : IUniform; var fogColor : IUniform; }; var lights : { var ambientLightColor : IUniform; var directionalLights : { var value : Array<Dynamic>; var properties : { var direction : {}; var color : {}; var shadow : {}; var shadowBias : {}; var shadowRadius : {}; var shadowMapSize : {}; }; }; var directionalShadowMap : IUniform; var directionalShadowMatrix : IUniform; var spotLights : { var value : Array<Dynamic>; var properties : { var color : {}; var position : {}; var direction : {}; var distance : {}; var coneCos : {}; var penumbraCos : {}; var decay : {}; var shadow : {}; var shadowBias : {}; var shadowRadius : {}; var shadowMapSize : {}; }; }; var spotShadowMap : IUniform; var spotShadowMatrix : IUniform; var pointLights : { var value : Array<Dynamic>; var properties : { var color : {}; var position : {}; var decay : {}; var distance : {}; var shadow : {}; var shadowBias : {}; var shadowRadius : {}; var shadowMapSize : {}; }; }; var pointShadowMap : IUniform; var pointShadowMatrix : IUniform; var hemisphereLigtts : { var value : Array<Dynamic>; var properties : { var direction : {}; var skycolor : {}; var groundColor : {}; }; }; }; var points : { var diffuse : IUniform; var opacity : IUniform; var size : IUniform; var scale : IUniform; var map : IUniform; var offsetRepeat : IUniform; }; };
	static var TextureIdCount : Float;
	static var AudioContext(default, null) : js.html.audio.AudioContext;
	static var CopyShader : Shader;
	static var AWDLoader : Dynamic;
	static var FlyControls : Dynamic;
	static var BloomPass : Dynamic;
	static var DotScreenShader : Shader;
	static var RGBShiftShader : Shader;
	static var FXAAShader : Shader;

	static function warn(message:Dynamic, optionalParams:Array<Dynamic>) : Void;
	static function error(message:Dynamic, optionalParams:Array<Dynamic>) : Void;
	static function log(message:Dynamic, optionalParams:Array<Dynamic>) : Void;
}