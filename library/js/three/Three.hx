package js.three;

@:keep
class Three
{
	static inline function requestAnimationFrame(f:js.html.RequestAnimationFrameCallback) : Int {
		return untyped js.Browser.window.requestAnimationFrame(f);
	}

	static inline function cancelAnimationFrame(f:Void->Void) {
		untyped js.Browser.window.cancelAnimationFrame(id);
	}

	private static function __init__() : Void untyped {
		#if !noEmbedJS
			haxe.macro.Compiler.includeFile("js/three/Three.js");
			haxe.macro.Compiler.includeFile("js/three/TrackballControls.js");
		#end
	}

	// GL STATE CONSTANTS

	static inline var CullFaceNone = 0;
	static inline var CullFaceBack = 1;
	static inline var CullFaceFront = 2;
	static inline var CullFaceFrontBack = 3;

	static inline var FrontFaceDirectionCW = 0;
	static inline var FrontFaceDirectionCCW = 1;

	// SHADOWING TYPES

	static inline var BasicShadowMap = 0;
	static inline var PCFShadowMap = 1;
	static inline var PCFSoftShadowMap = 2;

	// MATERIAL CONSTANTS

	// side

	static inline var FrontSide = 0;
	static inline var BackSide = 1;
	static inline var DoubleSide = 2;

	// shading

	static inline var NoShading = 0;
	static inline var FlatShading = 1;
	static inline var SmoothShading = 2;

	// colors

	static inline var NoColors = 0;
	static inline var FaceColors = 1;
	static inline var VertexColors = 2;

	// blending modes

	static inline var NoBlending = 0;
	static inline var NormalBlending = 1;
	static inline var AdditiveBlending = 2;
	static inline var SubtractiveBlending = 3;
	static inline var MultiplyBlending = 4;
	static inline var CustomBlending = 5;

	// custom blending equations
	// (numbers start from 100 not to clash with other
	//  mappings to OpenGL constants defined in Texture.js)

	static inline var AddEquation = 100;
	static inline var SubtractEquation = 101;
	static inline var ReverseSubtractEquation = 102;

	// custom blending destination factors

	static inline var ZeroFactor = 200;
	static inline var OneFactor = 201;
	static inline var SrcColorFactor = 202;
	static inline var OneMinusSrcColorFactor = 203;
	static inline var SrcAlphaFactor = 204;
	static inline var OneMinusSrcAlphaFactor = 205;
	static inline var DstAlphaFactor = 206;
	static inline var OneMinusDstAlphaFactor = 207;

	// custom blending source factors

	// static inline var ZeroFactor = 200;
	// static inline var OneFactor = 201;
	// static inline var SrcAlphaFactor = 204;
	// static inline var OneMinusSrcAlphaFactor = 205;
	// static inline var DstAlphaFactor = 206;
	// static inline var OneMinusDstAlphaFactor = 207;
	static inline var DstColorFactor = 208;
	static inline var OneMinusDstColorFactor = 209;
	static inline var SrcAlphaSaturateFactor = 210;


	// TEXTURE CONSTANTS

	static inline var MultiplyOperation = 0;
	static inline var MixOperation = 1;
	static inline var AddOperation = 2;

	// Wrapping modes

	static inline var RepeatWrapping = 1000;
	static inline var ClampToEdgeWrapping = 1001;
	static inline var MirroredRepeatWrapping = 1002;

	// Filters

	static inline var NearestFilter = 1003;
	static inline var NearestMipMapNearestFilter = 1004;
	static inline var NearestMipMapLinearFilter = 1005;
	static inline var LinearFilter = 1006;
	static inline var LinearMipMapNearestFilter = 1007;
	static inline var LinearMipMapLinearFilter = 1008;

	// Data types

	static inline var UnsignedByteType = 1009;
	static inline var ByteType = 1010;
	static inline var ShortType = 1011;
	static inline var UnsignedShortType = 1012;
	static inline var IntType = 1013;
	static inline var UnsignedIntType = 1014;
	static inline var FloatType = 1015;

	// Pixel types

	// static inline var UnsignedByteType = 1009;
	static inline var UnsignedShort4444Type = 1016;
	static inline var UnsignedShort5551Type = 1017;
	static inline var UnsignedShort565Type = 1018;

	// Pixel formats

	static inline var AlphaFormat = 1019;
	static inline var RGBFormat = 1020;
	static inline var RGBAFormat = 1021;
	static inline var LuminanceFormat = 1022;
	static inline var LuminanceAlphaFormat = 1023;

	// Compressed texture formats

	static inline var RGB_S3TC_DXT1_Format = 2001;
	static inline var RGBA_S3TC_DXT1_Format = 2002;
	static inline var RGBA_S3TC_DXT3_Format = 2003;
	static inline var RGBA_S3TC_DXT5_Format = 2004;

	// From src/objects/Line.js
	static inline var LineStrip = 0;
	static inline var LinePieces = 1;
}
