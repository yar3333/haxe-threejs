package js.three.core;

import js.lib.*;

/**
 * A {@link THREE.Layers | Layers} object assigns an {@link THREE.Object3D | Object3D} to 1 or more of 32 layers numbered `0` to `31` - internally the
 * layers are stored as a {@link https://en.wikipedia.org/wiki/Mask_(computing) | bit mask}, and
 * by default all Object3Ds are a member of layer `0`.
 * @remarks
 * This can be used to control visibility - an object must share a layer with a {@link Camera | camera} to be visible when that camera's view is rendered.
 * @remarks
 * All classes that inherit from {@link THREE.Object3D | Object3D} have an {@link THREE.Object3D.layers | Object3D.layers} property which is an instance of this class.
 * @see Example: {@link https://threejs.org/examples/#webgl_layers | WebGL / layers}
 * @see Example: {@link https://threejs.org/examples/#webxr_vr_layers | Webxr / vr / layers}
 * @see {@link https://threejs.org/docs/index.html#api/en/core/Layers | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/Layers.js | Source}
 */
@:native("THREE.Layers")
extern class Layers
{
	/**
	 * A bit mask storing which of the 32 layers this layers object is currently a member of.
	 * @defaultValue `1 | 0`
	 * @remarks Expects a `Integer`
	 */
	var mask : Float;

	/**
	 * A {@link THREE.Layers | Layers} object assigns an {@link THREE.Object3D | Object3D} to 1 or more of 32 layers numbered `0` to `31` - internally the
	 * layers are stored as a {@link https://en.wikipedia.org/wiki/Mask_(computing) | bit mask}, and
	 * by default all Object3Ds are a member of layer `0`.
	 * @remarks
	 * This can be used to control visibility - an object must share a layer with a {@link Camera | camera} to be visible when that camera's view is rendered.
	 * @remarks
	 * All classes that inherit from {@link THREE.Object3D | Object3D} have an {@link THREE.Object3D.layers | Object3D.layers} property which is an instance of this class.
	 * @see Example: {@link https://threejs.org/examples/#webgl_layers | WebGL / layers}
	 * @see Example: {@link https://threejs.org/examples/#webxr_vr_layers | Webxr / vr / layers}
	 * @see {@link https://threejs.org/docs/index.html#api/en/core/Layers | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/Layers.js | Source}
	 */
	function new() : Void;
	/**
	 * Set membership to `layer`, and remove membership all other layers.
	 */
	function set(layer:Float) : Void;
	/**
	 * Add membership of this `layer`.
	 */
	function enable(layer:Float) : Void;
	/**
	 * Add membership to all layers.
	 */
	function enableAll() : Void;
	/**
	 * Toggle membership of `layer`.
	 */
	function toggle(layer:Float) : Void;
	/**
	 * Remove membership of this `layer`.
	 */
	function disable(layer:Float) : Void;
	/**
	 * Remove membership from all layers.
	 */
	function disableAll() : Void;
	/**
	 * Returns true if this and the passed `layers` object have at least one layer in common.
	 */
	function test(layers:Layers) : Bool;
	/**
	 * Returns true if the given layer is enabled.
	 */
	function isEnabled(layer:Float) : Bool;
}