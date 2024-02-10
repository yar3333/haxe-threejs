package js.three.audio;

import js.html.audio.AudioNode;
import js.three.core.Object3D;

/**
 * The {@link AudioListener} represents a virtual {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioListener | listener} of the all positional and non-positional audio effects in the scene.
 * A three.js application usually creates a single instance of {@link AudioListener}  * @remarks
 * It is a mandatory construtor parameter for audios entities like {@link Audio | Audio} and {@link PositionalAudio | PositionalAudio}.
 * In most cases, the listener object is a child of the camera
 * So the 3D transformation of the camera represents the 3D transformation of the listener.
 * @example
 * ```typescript
 * // create an {@link AudioListener} and add it to the camera
 * const listener = new THREE.AudioListener();
 * camera.add(listener);
 * // create a global audio source
 * const sound = new THREE.Audio(listener);
 * // load a sound and set it as the Audio object's buffer
 * const audioLoader = new THREE.AudioLoader();
 * audioLoader.load('sounds/ambient.ogg', function (buffer) {
 *     sound.setBuffer(buffer);
 *     sound.setLoop(true);
 *     sound.setVolume(0.5);
 *     sound.play();
 * });
 * ```
 * @see Example: {@link https://threejs.org/examples/#webaudio_sandbox | webaudio / sandbox }
 * @see Example: {@link https://threejs.org/examples/#webaudio_timing | webaudio / timing }
 * @see Example: {@link https://threejs.org/examples/#webaudio_visualizer | webaudio / visualizer }
 * @see {@link https://threejs.org/docs/index.html#api/en/audio/AudioListener | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/audio/AudioListener.js | Source}
 */
@:native("THREE.AudioListener")
extern class AudioListener extends Object3D
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `AudioListener`
	 */
	//var type(default, null) : haxe.extern.EitherType<js.three.audiolistener.Type, String>;

	/**
	 * The {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext | AudioContext} of the {@link {@link AudioListener} | listener} given in the constructor.
	 */
	var context : js.html.audio.AudioContext;
	
    /**
	 * A {@link https://developer.mozilla.org/en-US/docs/Web/API/GainNode | GainNode} created using
	 * {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext/createGain | AudioContext.createGain()}.
	 */
	var gain : js.html.audio.GainNode;
	
    /**
	 * @defaultValue `null`
	 */
	var filter : AudioNode;
	
    /**
	 * Time delta value for audio entities. Use in context of {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioParam/linearRampToValueAtTime | AudioParam.linearRampToValueAtTimeDefault()}.
	 * @defaultValue `0`
	 */
	var timeDelta : Float;

	/**
	 * The {@link AudioListener} represents a virtual {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioListener | listener} of the all positional and non-positional audio effects in the scene.
	 * A three.js application usually creates a single instance of {@link AudioListener}  * @remarks
	 * It is a mandatory construtor parameter for audios entities like {@link Audio | Audio} and {@link PositionalAudio | PositionalAudio}.
	 * In most cases, the listener object is a child of the camera
	 * So the 3D transformation of the camera represents the 3D transformation of the listener.
	 * @example
	 * ```typescript
	 * // create an {@link AudioListener} and add it to the camera
	 * const listener = new THREE.AudioListener();
	 * camera.add(listener);
	 * // create a global audio source
	 * const sound = new THREE.Audio(listener);
	 * // load a sound and set it as the Audio object's buffer
	 * const audioLoader = new THREE.AudioLoader();
	 * audioLoader.load('sounds/ambient.ogg', function (buffer) {
	 *     sound.setBuffer(buffer);
	 *     sound.setLoop(true);
	 *     sound.setVolume(0.5);
	 *     sound.play();
	 * });
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webaudio_sandbox | webaudio / sandbox }
	 * @see Example: {@link https://threejs.org/examples/#webaudio_timing | webaudio / timing }
	 * @see Example: {@link https://threejs.org/examples/#webaudio_visualizer | webaudio / visualizer }
	 * @see {@link https://threejs.org/docs/index.html#api/en/audio/AudioListener | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/audio/AudioListener.js | Source}
	 */
	function new() : Void;
	/**
	 * Return the {@link AudioListener.gain | gainNode}.
	 */
	function getInput() : js.html.audio.GainNode;
	/**
	 * Set the {@link AudioListener.filter | filter} property to `null`.
	 */
	function removeFilter() : AudioListener;
	/**
	 * Returns the value of the {@link AudioListener.filter | filter} property.
	 */
	function getFilter() : AudioNode;
	/**
	 * Set the {@link AudioListener.filter | filter} property to `value`.
	 */
	function setFilter(value:AudioNode) : AudioListener;
	/**
	 * Return the volume.
	 */
	function getMasterVolume() : Float;
	/**
	 * Set the volume.
	 */
	function setMasterVolume(value:Float) : AudioListener;
}