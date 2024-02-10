package js.three.core;

import js.three.math.Ray;
import js.three.cameras.Camera;
import js.three.math.Vector3;
import js.three.math.Vector2;

/**
 * This class is designed to assist with {@link https://en.wikipedia.org/wiki/Ray_casting | raycasting}
 * @remarks
 * Raycasting is used for mouse picking (working out what objects in the 3d space the mouse is over) amongst other things.
 * @example
 * ```typescript
 * const raycaster = new THREE.Raycaster();
 * const pointer = new THREE.Vector2();
 * 
 * function onPointerMove(event) {
 *     // calculate pointer position in normalized device coordinates (-1 to +1) for both components
 *     pointer.x = (event.clientX / window.innerWidth) * 2 - 1;
 *     pointer.y = -(event.clientY / window.innerHeight) * 2 + 1;
 * }
 * 
 * function render() {
 *     // update the picking ray with the camera and pointer position
 *     raycaster.setFromCamera(pointer, camera);
 *     // calculate objects intersecting the picking ray
 *     const intersects = raycaster.intersectObjects(scene.children);
 *     for (let i = 0; i & lt; intersects.length; i++) {
 *         intersects[i].object.material.color.set(0xff0000);
 *     }
 *     renderer.render(scene, camera);
 * }
 * window.addEventListener('pointermove', onPointerMove);
 * window.requestAnimationFrame(render);
 * ```
 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_cubes | Raycasting to a Mesh}
 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_cubes_ortho | Raycasting to a Mesh in using an OrthographicCamera}
 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_buffergeometry | Raycasting to a Mesh with BufferGeometry}
 * @see Example: {@link https://threejs.org/examples/#webgl_instancing_raycast | Raycasting to a InstancedMesh}
 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_lines | Raycasting to a Line}
 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_raycasting_points | Raycasting to Points}
 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_terrain_raycast | Terrain raycasting}
 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_voxelpainter | Raycasting to paint voxels}
 * @see Example: {@link https://threejs.org/examples/#webgl_raycaster_texture | Raycast to a Texture}
 * @see {@link https://threejs.org/docs/index.html#api/en/core/Raycaster | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/Raycaster.js | Source}
 */
@:jsRequire("three")
@:native("THREE.Raycaster")
extern class Raycaster
{
	/**
	 * The {@link THREE.RaycasterRay | Ray} used for the raycasting.
	 */
	var ray : Ray;
	/**
	 * The near factor of the raycaster. This value indicates which objects can be discarded based on the distance.
	 * This value shouldn't be negative and should be smaller than the far property.
	 * @remarks Expects a `Float`
	 * @defaultValue `0`
	 */
	var near : Float;
	/**
	 * The far factor of the raycaster. This value indicates which objects can be discarded based on the distance.
	 * This value shouldn't be negative and should be larger than the near property.
	 * @remarks Expects a `Float`
	 * @defaultValue `Infinity`
	 */
	var far : Float;
	/**
	 * The camera to use when raycasting against view-dependent objects such as billboarded objects like {@link THREE.Sprites | Sprites}.
	 * This field can be set manually or is set when calling  {@link setFromCamera}.
	 * @defaultValue `null`
	 */
	var camera : Camera;
	/**
	 * Used by {@link Raycaster} to selectively ignore 3D objects when performing intersection tests.
	 * The following code example ensures that only 3D objects on layer `1` will be honored by the instance of Raycaster.
	 * ```
	 * raycaster.layers.set( 1 );
	 * object.layers.enable( 1 );
	 * ```
	 * @defaultValue `new THREE.Layers()` - See {@link THREE.Layers | Layers}.
	 */
	var layers : Layers;
	/**
	 * An data object where threshold is the precision of the {@link Raycaster} when intersecting objects, in world units.
	 * @defaultValue `{ Mesh: {}, Line: { threshold: 1 }, LOD: {}, Points: { threshold: 1 }, Sprite: {} }`
	 */
	var params : RaycasterParameters;

	/**
	 * This class is designed to assist with {@link https://en.wikipedia.org/wiki/Ray_casting | raycasting}
	 * @remarks
	 * Raycasting is used for mouse picking (working out what objects in the 3d space the mouse is over) amongst other things.
	 * @example
	 * ```typescript
	 * const raycaster = new THREE.Raycaster();
	 * const pointer = new THREE.Vector2();
	 * 
	 * function onPointerMove(event) {
	 *     // calculate pointer position in normalized device coordinates (-1 to +1) for both components
	 *     pointer.x = (event.clientX / window.innerWidth) * 2 - 1;
	 *     pointer.y = -(event.clientY / window.innerHeight) * 2 + 1;
	 * }
	 * 
	 * function render() {
	 *     // update the picking ray with the camera and pointer position
	 *     raycaster.setFromCamera(pointer, camera);
	 *     // calculate objects intersecting the picking ray
	 *     const intersects = raycaster.intersectObjects(scene.children);
	 *     for (let i = 0; i & lt; intersects.length; i++) {
	 *         intersects[i].object.material.color.set(0xff0000);
	 *     }
	 *     renderer.render(scene, camera);
	 * }
	 * window.addEventListener('pointermove', onPointerMove);
	 * window.requestAnimationFrame(render);
	 * ```
	 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_cubes | Raycasting to a Mesh}
	 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_cubes_ortho | Raycasting to a Mesh in using an OrthographicCamera}
	 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_buffergeometry | Raycasting to a Mesh with BufferGeometry}
	 * @see Example: {@link https://threejs.org/examples/#webgl_instancing_raycast | Raycasting to a InstancedMesh}
	 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_lines | Raycasting to a Line}
	 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_raycasting_points | Raycasting to Points}
	 * @see Example: {@link https://threejs.org/examples/#webgl_geometry_terrain_raycast | Terrain raycasting}
	 * @see Example: {@link https://threejs.org/examples/#webgl_interactive_voxelpainter | Raycasting to paint voxels}
	 * @see Example: {@link https://threejs.org/examples/#webgl_raycaster_texture | Raycast to a Texture}
	 * @see {@link https://threejs.org/docs/index.html#api/en/core/Raycaster | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/Raycaster.js | Source}
	 */
	function new(?origin:Vector3, ?direction:Vector3, ?near:Float, ?far:Float) : Void;
	/**
	 * Updates the ray with a new origin and direction
	 * @remarks
	 * Please note that this method only copies the values from the arguments.
	 */
	function set(origin:Vector3, direction:Vector3) : Void;
	/**
	 * Updates the ray with a new origin and direction.
	 */
	function setFromCamera(coords:Vector2, camera:Camera) : Void;
	/**
	 * Checks all intersection between the ray and the object with or without the descendants
	 * @remarks Intersections are returned sorted by distance, closest first
	 * @remarks {@link Raycaster} delegates to the {@link Object3D.raycast | raycast} method of the passed object, when evaluating whether the ray intersects the object or not
	 * This allows {@link THREE.Mesh | meshes} to respond differently to ray casting than {@link THREE.Line | lines} and {@link THREE.Points | pointclouds}.
	 * **Note** that for meshes, faces must be pointed towards the origin of the {@link Raycaster.ray | ray} in order to be detected;
	 * intersections of the ray passing through the back of a face will not be detected
	 * To raycast against both faces of an object, you'll want to set the {@link Mesh.material | material}'s {@link Material.side | side} property to `THREE.DoubleSide`.
	 * @see {@link intersectObjects | .intersectObjects()}.
	 * @link Array | Array} is instantiated.
	 * If set, you must clear this array prior to each call (i.e., array.length = 0;). Default `[]`
	 * @returns An array of intersections is returned.
	 */
	function intersectObject<TIntersected:Object3D>(object:Object3D, ?recursive:Bool, ?optionalTarget:Array<Intersection<TIntersected>>) : Array<Intersection<TIntersected>>;
	/**
	 * Checks all intersection between the ray and the objects with or without the descendants
	 * @remarks Intersections are returned sorted by distance, closest first
	 * @remarks Intersections are of the same form as those returned by {@link intersectObject | .intersectObject()}.
	 * @remarks {@link Raycaster} delegates to the {@link Object3D.raycast | raycast} method of the passed object, when evaluating whether the ray intersects the object or not
	 * This allows {@link THREE.Mesh | meshes} to respond differently to ray casting than {@link THREE.Line | lines} and {@link THREE.Points | pointclouds}.
	 * **Note** that for meshes, faces must be pointed towards the origin of the {@link Raycaster.ray | ray} in order to be detected;
	 * intersections of the ray passing through the back of a face will not be detected
	 * To raycast against both faces of an object, you'll want to set the {@link Mesh.material | material}'s {@link Material.side | side} property to `THREE.DoubleSide`.
	 * @see {@link intersectObject | .intersectObject()}.
	 * @link Array | Array} is instantiated.
	 * If set, you must clear this array prior to each call (i.e., array.length = 0;). Default `[]`
	 * @returns An array of intersections is returned.
	 */
	function intersectObjects<TIntersected:Object3D>(objects:Array<Object3D>, ?recursive:Bool, ?optionalTarget:Array<Intersection<TIntersected>>) : Array<Intersection<TIntersected>>;
}