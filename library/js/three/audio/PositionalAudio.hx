package js.three.audio;

import js.html.audio.PannerNode;

/**
 * Create a positional audio object.
 * This uses the {@link https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API | Web Audio API}.
 * @example
 * ```typescript
 * // create an AudioListener and add it to the camera
 * const listener = new THREE.AudioListener();
 * camera.add(listener);
 * // create the {@link PositionalAudio} object (passing in the listener)
 * const sound = new THREE.PositionalAudio(listener);
 * // load a sound and set it as the {@link PositionalAudio} object's buffer
 * const audioLoader = new THREE.AudioLoader();
 * audioLoader.load('sounds/song.ogg', function (buffer) {
 *     sound.setBuffer(buffer);
 *     sound.setRefDistance(20);
 *     sound.play();
 * });
 * // create an object for the sound to play from
 * const sphere = new THREE.SphereGeometry(20, 32, 16);
 * const material = new THREE.MeshPhongMaterial({
 *     color: 0xff2200
 * });
 * const mesh = new THREE.Mesh(sphere, material);
 * scene.add(mesh);
 * // finally add the sound to the mesh
 * mesh.add(sound);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webaudio_orientation | webaudio / orientation }
 * @see Example: {@link https://threejs.org/examples/#webaudio_sandbox | webaudio / sandbox }
 * @see Example: {@link https://threejs.org/examples/#webaudio_timing | webaudio / timing }
 * @see {@link https://threejs.org/docs/index.html#api/en/audio/PositionalAudio | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/audio/PositionalAudio.js | Source}
 */
@:native("THREE.PositionalAudio")
extern class PositionalAudio extends Audio<PannerNode>
{
	/**
	 * The PositionalAudio's {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode | PannerNode}.
	 */
	var panner : js.html.audio.PannerNode;

	/**
	 * Create a positional audio object.
	 * This uses the {@link https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API | Web Audio API}.
	 * @example
	 * ```typescript
	 * // create an AudioListener and add it to the camera
	 * const listener = new THREE.AudioListener();
	 * camera.add(listener);
	 * // create the {@link PositionalAudio} object (passing in the listener)
	 * const sound = new THREE.PositionalAudio(listener);
	 * // load a sound and set it as the {@link PositionalAudio} object's buffer
	 * const audioLoader = new THREE.AudioLoader();
	 * audioLoader.load('sounds/song.ogg', function (buffer) {
	 *     sound.setBuffer(buffer);
	 *     sound.setRefDistance(20);
	 *     sound.play();
	 * });
	 * // create an object for the sound to play from
	 * const sphere = new THREE.SphereGeometry(20, 32, 16);
	 * const material = new THREE.MeshPhongMaterial({
	 *     color: 0xff2200
	 * });
	 * const mesh = new THREE.Mesh(sphere, material);
	 * scene.add(mesh);
	 * // finally add the sound to the mesh
	 * mesh.add(sound);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webaudio_orientation | webaudio / orientation }
	 * @see Example: {@link https://threejs.org/examples/#webaudio_sandbox | webaudio / sandbox }
	 * @see Example: {@link https://threejs.org/examples/#webaudio_timing | webaudio / timing }
	 * @see {@link https://threejs.org/docs/index.html#api/en/audio/PositionalAudio | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/audio/PositionalAudio.js | Source}
	 */
	function new(listener:AudioListener) : Void;
	/**
	 * Returns the {@link PositionalAudio.panner | panner}.
	 */
	function getOutput() : js.html.audio.PannerNode;
	/**
	 * Returns the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/refDistance | panner.refDistance}.
	 */
	function getRefDistance() : Float;
	/**
	 * Sets the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/refDistance | panner.refDistance}.
	 */
	function setRefDistance(value:Float) : PositionalAudio;
	/**
	 * Returns the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/rolloffFactor | panner.rolloffFactor}.
	 */
	function getRolloffFactor() : Float;
	/**
	 * Sets the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/rolloffFactor | panner.rolloffFactor}.
	 */
	function setRolloffFactor(value:Float) : PositionalAudio;
	/**
	 * Returns the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/distanceModel | panner.distanceModel}.
	 */
	function getDistanceModel() : String;
	/**
	 * Sets the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/distanceModel | panner.distanceModel}.
	 */
	function setDistanceModel(value:String) : PositionalAudio;
	/**
	 * Returns the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/maxDistance | panner.maxDistance}.
	 */
	function getMaxDistance() : Float;
	/**
	 * Sets the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/maxDistance | panner.maxDistance}.
	 */
	function setMaxDistance(value:Float) : PositionalAudio;
	/**
	 * This method can be used in order to transform an omnidirectional sound into a {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode | directional sound}.
	 */
	function setDirectionalCone(coneInnerAngle:Float, coneOuterAngle:Float, coneOuterGain:Float) : PositionalAudio;
}