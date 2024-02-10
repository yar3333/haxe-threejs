package js.three.textures;

import js.three.Constants;

/**
 * Creates a texture for use with a video.
 * @remarks
 * Note: After the initial use of a texture, the video cannot be changed
 * Instead, call {@link dispose | .dispose()} on the texture and instantiate a new one.
 * @example
 * ```typescript
 * // assuming you have created a HTML video element with id="video"
 * const video = document.getElementById('video');
 * const texture = new THREE.VideoTexture(video);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_materials_video | materials / video}
 * @see Example: {@link https://threejs.org/examples/#webgl_materials_video_webcam | materials / video / webcam}
 * @see Example: {@link https://threejs.org/examples/#webgl_video_kinect | video / kinect}
 * @see Example: {@link https://threejs.org/examples/#webgl_video_panorama_equirectangular | video / panorama / equirectangular}
 * @see Example: {@link https://threejs.org/examples/#webxr_vr_video | vr / video}
 * @see {@link https://threejs.org/docs/index.html#api/en/textures/VideoTexture | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/VideoTexture.js | Source}
 */
@:native("THREE.VideoTexture")
extern class VideoTexture extends Texture
{
	/**
	 * Read-only flag to check if a given object is of type {@link VideoTexture}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isVideoTexture(default, null) : Bool;
	
    /**
	 * @override
	 * @defaultValue {@link THREE.LinearFilter}
	 */
	//var magFilter : MagnificationTextureFilter;
	
    /**
	 * @override
	 * @defaultValue {@link THREE.LinearFilter}
	 */
	//var minFilter : MinificationTextureFilter;
	
    /**
	 * @override
	 * @defaultValue `false`
	 */
	//var generateMipmaps : Bool;

	/**
	 * Creates a texture for use with a video.
	 * @remarks
	 * Note: After the initial use of a texture, the video cannot be changed
	 * Instead, call {@link dispose | .dispose()} on the texture and instantiate a new one.
	 * @example
	 * ```typescript
	 * // assuming you have created a HTML video element with id="video"
	 * const video = document.getElementById('video');
	 * const texture = new THREE.VideoTexture(video);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_materials_video | materials / video}
	 * @see Example: {@link https://threejs.org/examples/#webgl_materials_video_webcam | materials / video / webcam}
	 * @see Example: {@link https://threejs.org/examples/#webgl_video_kinect | video / kinect}
	 * @see Example: {@link https://threejs.org/examples/#webgl_video_panorama_equirectangular | video / panorama / equirectangular}
	 * @see Example: {@link https://threejs.org/examples/#webxr_vr_video | vr / video}
	 * @see {@link https://threejs.org/docs/index.html#api/en/textures/VideoTexture | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/textures/VideoTexture.js | Source}
	 */
	function new(video:js.html.VideoElement, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Int) : Void;
	
    /**
	 * This is called automatically and sets {@link needsUpdate | .needsUpdate } to `true` every time a new frame is available.
	 */
	function update() : Void;
}