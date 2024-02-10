package js.three.textures;

import js.three.Constants;

/**
 * This class can be used to automatically save the depth information of a rendering into a texture
 * @remarks
 * When using a **WebGL1** rendering context, {@link DepthTexture} requires support for the
 * {@link https://www.khronos.org/registry/webgl/extensions/WEBGL_depth_texture/ | WEBGL_depth_texture} extension.
 * @see Example: {@link https://threejs.org/examples/#webgl_depth_texture | depth / texture}
 * @see {@link https://threejs.org/docs/index.html#api/en/textures/DepthTexture | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/DepthTexture.js | Source}
 */
@:jsRequire("three")
@:native("THREE.DepthTexture")
extern class DepthTexture extends Texture
{
	/**
	 * Read-only flag to check if a given object is of type {@link DepthTexture}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isDepthTexture(default, null) : Bool;
	/**
	 * @override
	 * @defaultValue `false`
	 */
	//var flipY : Bool;
	/**
	 * @override
	 * @defaultValue {@link THREE.NearestFilter}
	 */
	//var magFilter : MagnificationTextureFilter;
	/**
	 * @override
	 * @defaultValue {@link THREE.NearestFilter}
	 */
	//var minFilter : MinificationTextureFilter;
	/**
	 * @override Depth textures do not use mipmaps.
	 * @defaultValue `false`
	 */
	//var generateMipmaps : Bool;
	/**
	 * @override
	 * @see {@link Texture.format | Texture.format}
	 * @defaultValue {@link THREE.DepthFormat}.
	 */
	//var format : DepthTexturePixelFormat;
	/**
	 * @override
	 * @defaultValue {@link THREE.UnsignedByteType} when {@link format | .format} === {@link THREE.DepthFormat}
	 * @defaultValue {@link THREE.UnsignedInt248Type} when {@link format | .format} === {@link THREE.DepthStencilFormat}
	 */
	//var type : TextureDataType;
	/**
	 * This is used to define the comparison function used when comparing texels in the depth texture to the value in
	 * the depth buffer. Default is `null` which means comparison is disabled.
	 * 
	 * See {@link THREE.TextureComparisonFunction} for functions.
	 */
	var compareFunction : TextureComparisonFunction;

	/**
	 * This class can be used to automatically save the depth information of a rendering into a texture
	 * @remarks
	 * When using a **WebGL1** rendering context, {@link DepthTexture} requires support for the
	 * {@link https://www.khronos.org/registry/webgl/extensions/WEBGL_depth_texture/ | WEBGL_depth_texture} extension.
	 * @see Example: {@link https://threejs.org/examples/#webgl_depth_texture | depth / texture}
	 * @see {@link https://threejs.org/docs/index.html#api/en/textures/DepthTexture | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/DepthTexture.js | Source}
	 */
	function new(width:Float, height:Float, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?anisotropy:Int, ?format:DepthTexturePixelFormat) : Void;
}