package js.three.textures;

/**
 * This class can only be used in combination with {@link THREE.WebGLRenderer.copyFramebufferToTexture | WebGLRenderer.copyFramebufferToTexture()}.
 * @example
 * ```typescript
 * const pixelRatio = window.devicePixelRatio;
 * const textureSize = 128 * pixelRatio;
 * 
 * // instantiate a framebuffer texture
 * const frameTexture = new FramebufferTexture( textureSize, textureSize, RGBAFormat );
 * 
 * // calculate start position for copying part of the frame data
 * const vector = new Vector2();
 * vector.x = ( window.innerWidth * pixelRatio / 2 ) - ( textureSize / 2 );
 * vector.y = ( window.innerHeight * pixelRatio / 2 ) - ( textureSize / 2 );
 * 
 * // render the scene
 * renderer.clear();
 * renderer.render( scene, camera );
 * 
 * // copy part of the rendered frame into the framebuffer texture
 * renderer.copyFramebufferToTexture( vector, frameTexture );
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_framebuffer_texture | webgl_framebuffer_texture}
 * @see {@link https://threejs.org/docs/index.html#api/en/textures/FramebufferTexture | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/FramebufferTexture.js | Source}
 */
@:jsRequire("three", "FramebufferTexture")
@:native("THREE.FramebufferTexture")
extern class FramebufferTexture extends Texture
{
	/**
	 * Read-only flag to check if a given object is of type {@link FramebufferTexture}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isFramebufferTexture(default, null) : Bool;
	
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
	 * @override
	 * @defaultValue `false`
	 */
	//var generateMipmaps : Bool;

	/**
	 * This class can only be used in combination with {@link THREE.WebGLRenderer.copyFramebufferToTexture | WebGLRenderer.copyFramebufferToTexture()}.
	 * @example
	 * ```typescript
	 * const pixelRatio = window.devicePixelRatio;
	 * const textureSize = 128 * pixelRatio;
	 * 
	 * // instantiate a framebuffer texture
	 * const frameTexture = new FramebufferTexture( textureSize, textureSize, RGBAFormat );
	 * 
	 * // calculate start position for copying part of the frame data
	 * const vector = new Vector2();
	 * vector.x = ( window.innerWidth * pixelRatio / 2 ) - ( textureSize / 2 );
	 * vector.y = ( window.innerHeight * pixelRatio / 2 ) - ( textureSize / 2 );
	 * 
	 * // render the scene
	 * renderer.clear();
	 * renderer.render( scene, camera );
	 * 
	 * // copy part of the rendered frame into the framebuffer texture
	 * renderer.copyFramebufferToTexture( vector, frameTexture );
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_framebuffer_texture | webgl_framebuffer_texture}
	 * @see {@link https://threejs.org/docs/index.html#api/en/textures/FramebufferTexture | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/FramebufferTexture.js | Source}
	 */
	function new(width:Float, height:Float) : Void;
}