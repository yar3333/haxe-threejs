package js.three.core;

/**
 * Object for keeping track of time
 * @remarks
 * This uses {@link https://developer.mozilla.org/en-US/docs/Web/API/Performance/now | performance.now} if it is available,
 * otherwise it reverts to the less accurate {@link https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Date/now | Date.now}.
 * @see {@link https://threejs.org/docs/index.html#api/en/core/Clock | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/Clock.js | Source}
 */
@:jsRequire("three")
@:native("THREE.Clock")
extern class Clock
{
	/**
	 * If set, starts the clock automatically when {@link getDelta | .getDelta()} is called for the first time.
	 * @defaultValue `true`
	 */
	var autoStart : Bool;
	/**
	 * Holds the time at which the clock's {@link start | .start()} method was last called.
	 * @defaultValue `0`
	 */
	var startTime : Float;
	/**
	 * Holds the time at which the clock's {@link start | .start()}, {@link getElapsedTime | .getElapsedTime()} or {@link getDelta | .getDelta()} methods were last called.
	 * @defaultValue `0`
	 */
	var oldTime : Float;
	/**
	 * Keeps track of the total time that the clock has been running.
	 * @defaultValue `0`
	 */
	var elapsedTime : Float;
	/**
	 * Whether the clock is running or not.
	 * @defaultValue `false`
	 */
	var running : Bool;

	/**
	 * Object for keeping track of time
	 * @remarks
	 * This uses {@link https://developer.mozilla.org/en-US/docs/Web/API/Performance/now | performance.now} if it is available,
	 * otherwise it reverts to the less accurate {@link https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Date/now | Date.now}.
	 * @see {@link https://threejs.org/docs/index.html#api/en/core/Clock | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/Clock.js | Source}
	 */
	function new(?autoStart:Bool) : Void;
	/**
	 * Starts clock.
	 * @remarks
	 * Also sets the {@link startTime | .startTime} and {@link oldTime | .oldTime} to the current time,
	 * sets {@link elapsedTime | .elapsedTime} to `0` and {@link running | .running} to `true`.
	 */
	function start() : Void;
	/**
	 * Stops clock and sets {@link oldTime | oldTime} to the current time.
	 */
	function stop() : Void;
	/**
	 * Get the seconds passed since the clock started and sets {@link oldTime | .oldTime} to the current time.
	 * @remarks
	 * If {@link autoStart | .autoStart} is `true` and the clock is not running, also starts the clock.
	 */
	function getElapsedTime() : Float;
	/**
	 * Get the seconds passed since the time {@link oldTime | .oldTime} was set and sets {@link oldTime | .oldTime} to the current time.
	 * @remarks
	 * If {@link autoStart | .autoStart} is `true` and the clock is not running, also starts the clock.
	 */
	function getDelta() : Float;
}