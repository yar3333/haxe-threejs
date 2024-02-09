package js.three;

import js.lib.*;

/**
 * Every level is associated with an object, and rendering can be switched between them at the distances specified
 * @remarks
 * Typically you would create, say, three meshes, one for far away (low detail), one for mid range (medium detail) and one for close up (high detail).
 * @example
 * ```typescript
 * const {@link LOD} = new THREE.LOD();
 * //Create spheres with 3 levels of detail and create new {@link LOD} levels for them
 * for (let i = 0; i & lt; 3; i++) {
 *     const geometry = new THREE.IcosahedronGeometry(10, 3 - i)
 *     const mesh = new THREE.Mesh(geometry, material);
 *     lod.addLevel(mesh, i * 75);
 * }
 * scene.add(lod);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_lod | webgl / {@link LOD} }
 * @see {@link https://threejs.org/docs/index.html#api/en/objects/LOD | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/LOD.js | Source}
 */
@:native("THREE.LOD")
extern class LOD<TEventMap:Object3DEventMap = Object3DEventMap> extends Object3D<TEventMap>
{
	/**
	 * Read-only flag to check if a given object is of type {@link LOD}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isLOD(default, null) : Bool;
	
    /**
	 * @override
	 * @defaultValue `LOD`
	 */
	//var type : haxe.extern.EitherType<js.three.lod.Type, String>;

	/**
	 * An array of level objects
	 */
	var levels : Array<{ /** * The Object3D to display at this level. */ var object : Object3D; /** * The distance at which to display this level of detail. Expects a `Float`. */ var distance : Float; /** * Threshold used to avoid flickering at LOD boundaries, as a fraction of distance. Expects a `Float`. */ var hysteresis : Float; }>;
	/**
	 * Whether the {@link LOD} object is updated automatically by the renderer per frame or not.
	 * If set to `false`, you have to call {@link update | .update()} in the render loop by yourself.
	 * @defaultValue `true`
	 */
	var autoUpdate : Bool;

	/**
	 * Every level is associated with an object, and rendering can be switched between them at the distances specified
	 * @remarks
	 * Typically you would create, say, three meshes, one for far away (low detail), one for mid range (medium detail) and one for close up (high detail).
	 * @example
	 * ```typescript
	 * const {@link LOD} = new THREE.LOD();
	 * //Create spheres with 3 levels of detail and create new {@link LOD} levels for them
	 * for (let i = 0; i & lt; 3; i++) {
	 *     const geometry = new THREE.IcosahedronGeometry(10, 3 - i)
	 *     const mesh = new THREE.Mesh(geometry, material);
	 *     lod.addLevel(mesh, i * 75);
	 * }
	 * scene.add(lod);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_lod | webgl / {@link LOD} }
	 * @see {@link https://threejs.org/docs/index.html#api/en/objects/LOD | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/LOD.js | Source}
	 */
	function new() : Void;

	/**
	 * Adds a mesh that will display at a certain distance and greater. Typically the further away the distance, the lower the detail on the mesh.
	 */
	function addLevel(object:Object3D, ?distance:Float, ?hysteresis:Float) : LOD<TEventMap>;

	/**
	 * Get the currently active {@link LOD} level
	 * @remarks
	 * As index of the levels array.
	 */
	function getCurrentLevel() : Float;

	/**
	 * Get a reference to the first {@link THREE.Object3D | Object3D} (mesh) that is greater than {@link distance}.
	 */
	function getObjectForDistance(distance:Float) : Object3D;
    
	/**
	 * Set the visibility of each {@link levels | level}'s {@link THREE.Object3D | object} based on distance from the {@link THREE.Camera | camera}.
	 */
	function update(camera:Camera) : Void;
}