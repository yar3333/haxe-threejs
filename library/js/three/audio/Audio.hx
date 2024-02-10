package js.three.audio;

import js.html.audio.GainNode;
import js.html.MediaElement;
import js.html.MediaStream;
import js.html.audio.AudioBuffer;
import js.html.audio.AudioNode;
import js.html.audio.AudioScheduledSourceNode;
import js.three.core.Object3D;

/**
 * Create a non-positional ( global ) {@link Audio} object.
 * This uses the {@link https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API | Web {@link Audio} API}.
 * @example
 * ```typescript
 * // create an AudioListener and add it to the camera
 * const listener = new THREE.AudioListener();
 * camera.add(listener);
 * // create a global {@link Audio} source
 * const sound = new THREE.Audio(listener);
 * // load a sound and set it as the {@link Audio} object's buffer
 * const audioLoader = new THREE.AudioLoader();
 * audioLoader.load('sounds/ambient.ogg', function (buffer) {
 *     sound.setBuffer(buffer);
 *     sound.setLoop(true);
 *     sound.setVolume(0.5);
 *     sound.play();
 * });
 * ```
 * @see Example: {@link https://threejs.org/examples/#webaudio_sandbox | webaudio / sandbox }
 * @see Example: {@link https://threejs.org/examples/#webaudio_visualizer | webaudio / visualizer }
 * @see {@link https://threejs.org/docs/index.html#api/en/audio/Audio | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/audio/Audio.js | Source}
 */
@:jsRequire("three", "Audio")
@:native("THREE.Audio")
extern class Audio<NodeType:AudioNode = GainNode> extends Object3D
{
	/**
	 * A Read-only _string_ to check if `this` object type.
	 * @remarks Sub-classes will update this value.
	 * @defaultValue `Audio`
	 */
	//var type(default, null) : haxe.extern.EitherType<js.three.audio.Type, String>;
    
	/**
	 * A reference to the listener object of this audio.
	 */
	var listener : AudioListener;
	/**
	 * The {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext | AudioContext} of the {@link AudioListener | listener} given in the constructor.
	 */
	var context : js.html.audio.AudioContext;
	/**
	 * A {@link https://developer.mozilla.org/en-US/docs/Web/API/GainNode | GainNode} created using
	 * {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext/createGain | AudioContext.createGain}().
	 */
	var gain : js.html.audio.GainNode;
	/**
	 * Whether to start playback automatically.
	 * @defaultValue `false`
	 */
	var autoplay : Bool;
	var buffer : AudioBuffer;
	/**
	 * Modify pitch, measured in cents. +/- 100 is a semitone. +/- 1200 is an octave.
	 * @defaultValue `0`
	 */
	var detune : Float;
	/**
	 * @default false
	 */
	var loop : Bool;
	/**
	 * @default 0
	 */
	var loopStart : Float;
	/**
	 * @default 0
	 */
	var loopEnd : Float;
	/**
	 * An offset to the time within the {@link Audio} buffer that playback should begin.
	 * Same as the {@link Audio.offset | offset} parameter of {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/start | AudioBufferSourceNode.start()}.
	 * @defaultValue `0`
	 */
	var offset : Float;
	/**
	 * Overrides the duration of the audio. Same as the {@link Audio.duration | duration} parameter of
	 * {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/start | AudioBufferSourceNode.start()}.
	 * @defaultValue `undefined` _to play the whole buffer_.
	 */
	var duration : haxe.extern.EitherType<Float, {}>;
	/**
	 * Speed of playback.
	 * @defaultValue `1`
	 */
	var playbackRate : Float;
	/**
	 * Whether the {@link Audio} is currently playing.
	 * @defaultValue `false`
	 */
	var isPlaying : Bool;
	/**
	 * Whether playback can be controlled using the {@link Audio.play | play}(), {@link Audio.pause | pause}() etc. methods.
	 * @defaultValue `true`
	 */
	var hasPlaybackControl : Bool;
	/**
	 * Type of the {@link Audio} source.
	 * @defaultValue 'empty'.
	 */
	var sourceType : String;
	/**
	 * An {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode | AudioBufferSourceNode} created using
	 * {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext/createBufferSource | AudioContext.createBufferSource()}.
	 */
	var source : AudioScheduledSourceNode;
	/**
	 * Represents an array of {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioNode | AudioNodes}.
	 * Can be used to apply a variety of low-order filters to create more complex sound effects.
	 * In most cases, the array contains instances of {@link https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode | BiquadFilterNodes}.
	 * Filters are set via {@link THREE.Audio.setFilter | Audio.setFilter} or {@link THREE.Audio.setFilters | Audio.setFilters}.
	 * @defaultValue `[]`
	 */
	var filters : Array<AudioNode>;

	/**
	 * Create a non-positional ( global ) {@link Audio} object.
	 * This uses the {@link https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API | Web {@link Audio} API}.
	 * @example
	 * ```typescript
	 * // create an AudioListener and add it to the camera
	 * const listener = new THREE.AudioListener();
	 * camera.add(listener);
	 * // create a global {@link Audio} source
	 * const sound = new THREE.Audio(listener);
	 * // load a sound and set it as the {@link Audio} object's buffer
	 * const audioLoader = new THREE.AudioLoader();
	 * audioLoader.load('sounds/ambient.ogg', function (buffer) {
	 *     sound.setBuffer(buffer);
	 *     sound.setLoop(true);
	 *     sound.setVolume(0.5);
	 *     sound.play();
	 * });
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webaudio_sandbox | webaudio / sandbox }
	 * @see Example: {@link https://threejs.org/examples/#webaudio_visualizer | webaudio / visualizer }
	 * @see {@link https://threejs.org/docs/index.html#api/en/audio/Audio | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/audio/Audio.js | Source}
	 */
	function new(listener:AudioListener) : Void;
	/**
	 * Return the {@link Audio.gain | gainNode}.
	 */
	function getOutput() : NodeType;
	/**
	 * Setup the {@link Audio.source | source} to the audioBuffer, and sets {@link Audio.sourceType | sourceType} to 'audioNode'.
	 * @remarks Also sets {@link Audio.hasPlaybackControl | hasPlaybackControl} to false.
	 */
	function setNodeSource(audioNode:AudioScheduledSourceNode) : Audio;
	/**
	 * Applies the given object of type {@link https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement | HTMLMediaElement} as the source of this audio.
	 * @remarks Also sets {@link Audio.hasPlaybackControl | hasPlaybackControl} to false.
	 */
	function setMediaElementSource(mediaElement:MediaElement) : Audio;
	/**
	 * Applies the given object of type {@link https://developer.mozilla.org/en-US/docs/Web/API/MediaStream | MediaStream} as the source of this audio.
	 * @remarks Also sets {@link Audio.hasPlaybackControl | hasPlaybackControl} to false.
	 */
	function setMediaStreamSource(mediaStream:MediaStream) : Audio;
	/**
	 * Setup the {@link Audio.source | source} to the audioBuffer, and sets {@link Audio.sourceType | sourceType} to 'buffer'.
	 * @remarks If {@link Audio.autoplay | autoplay}, also starts playback.
	 */
	function setBuffer(audioBuffer:AudioBuffer) : Audio;
	/**
	 * If {@link Audio.hasPlaybackControl | hasPlaybackControl} is true, starts playback.
	 */
	function play(?delay:Float) : Audio;
	/**
	 * If {@link Audio.hasPlaybackControl | hasPlaybackControl} is true, pauses playback.
	 */
	function pause() : Audio;
	/**
	 * If {@link Audio.hasPlaybackControl | hasPlaybackControl} is enabled, stops playback.
	 */
	function stop() : Audio;
	/**
	 * Called automatically when playback finished.
	 */
	function onEnded() : Void;
	/**
	 * Connect to the {@link THREE.Audio.source | Audio.source}
	 * @remarks This is used internally on initialisation and when setting / removing filters.
	 */
	function connect() : Audio;
	/**
	 * Disconnect from the {@link THREE.Audio.source | Audio.source}
	 * @remarks This is used internally when setting / removing filters.
	 */
	function disconnect() : Audio;
	/**
	 * Returns the detuning of oscillation in cents.
	 */
	function getDetune() : Float;
	/**
	 * Defines the detuning of oscillation in cents.
	 */
	function setDetune(value:Float) : Audio;
	/**
	 * Returns the first element of the {@link Audio.filters | filters} array.
	 */
	function getFilter() : AudioNode;
	/**
	 * Applies a single filter node to the audio.
	 */
	function setFilter(filter:AudioNode) : Audio;
	/**
	 * Returns the {@link Audio.filters | filters} array.
	 */
	function getFilters() : Array<AudioNode>;
	/**
	 * Applies an array of filter nodes to the audio.
	 */
	function setFilters(value:Array<AudioNode>) : Audio;
	/**
	 * Return the value of {@link Audio.playbackRate | playbackRate}.
	 */
	function getPlaybackRate() : Float;
	/**
	 * If {@link Audio.hasPlaybackControl | hasPlaybackControl} is enabled, set the {@link Audio.playbackRate | playbackRate} to `value`.
	 */
	function setPlaybackRate(value:Float) : Audio;
	/**
	 * Return the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/loop | source.loop} (whether playback should loop).
	 */
	function getLoop() : Bool;
	/**
	 * Set {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/loop | source.loop} to `value` (whether playback should loop).
	 */
	function setLoop(value:Bool) : Audio;
	/**
	 * Set {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/loopStart | source.loopStart} to `value`.
	 */
	function setLoopStart(value:Float) : Audio;
	/**
	 * Set {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/loopEnd | source.loopEnd} to `value`.
	 */
	function setLoopEnd(value:Float) : Audio;
	/**
	 * Return the current volume.
	 */
	function getVolume() : Float;
	/**
	 * Set the volume.
	 */
	function setVolume(value:Float) : Audio;
}