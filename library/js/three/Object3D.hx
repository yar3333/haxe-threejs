package js.three;

import js.lib.*;

/**
 * This is the base class for most objects in three.js and provides a set of properties and methods for manipulating objects in 3D space.
 * @remarks Note that this can be used for grouping objects via the {@link THREE.Object3D.add | .add()} method which adds the object as a child,
 * however it is better to use {@link THREE.Group | Group} for this.
 * @see {@link https://threejs.org/docs/index.html#api/en/core/Object3D | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/Object3D.js | Source}
 */
@:native("THREE.Object3D")
extern class Object3D<TEventMap:Object3DEventMap, Object3DEventMap:Dynamic> extends EventDispatcher<TEventMap>
{
	/**
	 * Flag to check if a given object is of type {@link Object3D}.
	 * @remarks This is a _constant_ value
	 * @defaultValue `true`
	 */
	var isObject3D(default, null) : Bool;
	/**
	 * Unique number for this {@link Object3D} instance.
	 * @remarks Note that ids are assigned in chronological order: 1, 2, 3, ..., incrementing by one for each new object.
	 * Expects a `Integer`
	 */
	var id(default, null) : Float;
	/**
	 * {@link http://en.wikipedia.org/wiki/Universally_unique_identifier | UUID} of this object instance.
	 * @remarks This gets automatically assigned and shouldn't be edited.
	 */
	var uuid : String;
	/**
	 * Optional name of the object
	 * @remarks _(doesn't need to be unique)_.
	 * @defaultValue `""`
	 */
	var name : String;
	/**
	 * A Read-only _string_ to check `this` object type.
	 * @remarks This can be used to find a specific type of Object3D in a scene.
	 * Sub-classes will update this value.
	 * @defaultValue `Object3D`
	 */
	var type(default, null) : haxe.extern.EitherType<js.three.object3d.Type, String>;
	/**
	 * Object's parent in the {@link https://en.wikipedia.org/wiki/Scene_graph | scene graph}.
	 * @remarks An object can have at most one parent.
	 * @defaultValue `null`
	 */
	var parent : Object3D;
	/**
	 * Array with object's children.
	 * @see {@link THREE.Object3DGroup | Group} for info on manually grouping objects.
	 * @defaultValue `[]`
	 */
	var children : Array<Object3D>;
	/**
	 * This is used by the {@link lookAt | lookAt} method, for example, to determine the orientation of the result.
	 * @defaultValue {@link DEFAULT_UP | Object3D.DEFAULT_UP} - that is `(0, 1, 0)`.
	 */
	var up : Vector3;
	/**
	 * Object's local position.
	 * @defaultValue `new THREE.Vector3()` - that is `(0, 0, 0)`.
	 */
	var position(default, null) : Vector3;
	/**
	 * Object's local rotation ({@link https://en.wikipedia.org/wiki/Euler_angles | Euler angles}), in radians.
	 * @defaultValue `new THREE.Euler()` - that is `(0, 0, 0, Euler.DEFAULT_ORDER)`.
	 */
	var rotation(default, null) : Euler;
	/**
	 * Object's local rotation as a {@link THREE.Quaternion | Quaternion}.
	 * @defaultValue `new THREE.Quaternion()` - that is `(0,  0, 0, 1)`.
	 */
	var quaternion(default, null) : Quaternion;
	/**
	 * The object's local scale.
	 * @defaultValue `new THREE.Vector3( 1, 1, 1 )`
	 */
	var scale(default, null) : Vector3;
	/**
	 * @defaultValue `new THREE.Matrix4()`
	 */
	var modelViewMatrix(default, null) : Matrix4;
	/**
	 * @defaultValue `new THREE.Matrix3()`
	 */
	var normalMatrix(default, null) : Matrix3;
	/**
	 * The local transform matrix.
	 * @defaultValue `new THREE.Matrix4()`
	 */
	var matrix : Matrix4;
	/**
	 * The global transform of the object.
	 * @remarks If the {@link Object3D} has no parent, then it's identical to the local transform {@link THREE.Object3D.matrix | .matrix}.
	 * @defaultValue `new THREE.Matrix4()`
	 */
	var matrixWorld : Matrix4;
	/**
	 * When this is set, it calculates the matrix of position, (rotation or quaternion) and
	 * scale every frame and also recalculates the matrixWorld property.
	 * @defaultValue {@link DEFAULT_MATRIX_AUTO_UPDATE} - that is `(true)`.
	 */
	var matrixAutoUpdate : Bool;
	/**
	 * If set, then the renderer checks every frame if the object and its children need matrix updates.
	 * When it isn't, then you have to maintain all matrices in the object and its children yourself.
	 * @defaultValue {@link DEFAULT_MATRIX_WORLD_AUTO_UPDATE} - that is `(true)`.
	 */
	var matrixWorldAutoUpdate : Bool;
	/**
	 * When this is set, it calculates the matrixWorld in that frame and resets this property to false.
	 * @defaultValue `false`
	 */
	var matrixWorldNeedsUpdate : Bool;
	/**
	 * The layer membership of the object.
	 * @remarks The object is only visible if it has at least one layer in common with the {@link THREE.Object3DCamera | Camera} in use.
	 * This property can also be used to filter out unwanted objects in ray-intersection tests when using {@link THREE.Raycaster | Raycaster}.
	 * @defaultValue `new THREE.Layers()`
	 */
	var layers : Layers;
	/**
	 * Object gets rendered if `true`.
	 * @defaultValue `true`
	 */
	var visible : Bool;
	/**
	 * Whether the object gets rendered into shadow map.
	 * @defaultValue `false`
	 */
	var castShadow : Bool;
	/**
	 * Whether the material receives shadows.
	 * @defaultValue `false`
	 */
	var receiveShadow : Bool;
	/**
	 * When this is set, it checks every frame if the object is in the frustum of the camera before rendering the object.
	 * If set to `false` the object gets rendered every frame even if it is not in the frustum of the camera.
	 * @defaultValue `true`
	 */
	var frustumCulled : Bool;
	/**
	 * This value allows the default rendering order of {@link https://en.wikipedia.org/wiki/Scene_graph | scene graph}
	 * objects to be overridden although opaque and transparent objects remain sorted independently.
	 * @remarks When this property is set for an instance of {@link Group | Group}, all descendants objects will be sorted and rendered together.
	 * Sorting is from lowest to highest renderOrder.
	 * @defaultValue `0`
	 */
	var renderOrder : Float;
	/**
	 * Array with object's animation clips.
	 * @defaultValue `[]`
	 */
	var animations : Array<AnimationClip>;
	/**
	 * An object that can be used to store custom data about the {@link Object3D}.
	 * @remarks It should not hold references to _functions_ as these **will not** be cloned.
	 * @default `{}`
	 */
	var userData : Dynamic<Dynamic>;
	/**
	 * Custom depth material to be used when rendering to the depth map.
	 * @remarks Can only be used in context of meshes.
	 * When shadow-casting with a {@link THREE.DirectionalLight | DirectionalLight} or {@link THREE.SpotLight | SpotLight},
	 * if you are modifying vertex positions in the vertex shader you must specify a customDepthMaterial for proper shadows.
	 * @defaultValue `undefined`
	 */
	@:optional var customDepthMaterial : haxe.extern.EitherType<Material, {}>;
	/**
	 * Same as {@link customDepthMaterial}, but used with {@link THREE.Object3DPointLight | PointLight}.
	 * @defaultValue `undefined`
	 */
	@:optional var customDistanceMaterial : haxe.extern.EitherType<Material, {}>;
	/**
	 * The default {@link up} direction for objects, also used as the default position for {@link THREE.DirectionalLight | DirectionalLight},
	 * {@link THREE.HemisphereLight | HemisphereLight} and {@link THREE.Spotlight | Spotlight} (which creates lights shining from the top down).
	 * @defaultValue `new THREE.Vector3( 0, 1, 0)`
	 */
	static var DEFAULT_UP : Vector3;
	/**
	 * The default setting for {@link matrixAutoUpdate} for newly created Object3Ds.
	 * @defaultValue `true`
	 */
	static var DEFAULT_MATRIX_AUTO_UPDATE : Bool;
	/**
	 * The default setting for {@link matrixWorldAutoUpdate} for newly created Object3Ds.
	 * @defaultValue `true`
	 */
	static var DEFAULT_MATRIX_WORLD_AUTO_UPDATE : Bool;

	/**
	 * This is the base class for most objects in three.js and provides a set of properties and methods for manipulating objects in 3D space.
	 * @remarks Note that this can be used for grouping objects via the {@link THREE.Object3D.add | .add()} method which adds the object as a child,
	 * however it is better to use {@link THREE.Group | Group} for this.
	 * @see {@link https://threejs.org/docs/index.html#api/en/core/Object3D | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/core/Object3D.js | Source}
	 */
	function new() : Void;
	/**
	 * An optional callback that is executed immediately before a 3D object is rendered to a shadow map.
	 * @remarks This function is called with the following parameters: renderer, scene, camera, shadowCamera, geometry,
	 * depthMaterial, group.
	 * Please notice that this callback is only executed for `renderable` 3D objects. Meaning 3D objects which
	 * define their visual appearance with geometries and materials like instances of {@link Mesh}, {@link Line},
	 * {@link Points} or {@link Sprite}. Instances of {@link Object3D}, {@link Group} or {@link Bone} are not renderable
	 * and thus this callback is not executed for such objects.
	 */
	function onBeforeShadow(renderer:WebGLRenderer, scene:Scene, shadowCamera:Camera, geometry:BufferGeometry, depthMaterial:Material, group:Group) : Void;
	/**
	 * An optional callback that is executed immediately after a 3D object is rendered to a shadow map.
	 * @remarks This function is called with the following parameters: renderer, scene, camera, shadowCamera, geometry,
	 * depthMaterial, group.
	 * Please notice that this callback is only executed for `renderable` 3D objects. Meaning 3D objects which
	 * define their visual appearance with geometries and materials like instances of {@link Mesh}, {@link Line},
	 * {@link Points} or {@link Sprite}. Instances of {@link Object3D}, {@link Group} or {@link Bone} are not renderable
	 * and thus this callback is not executed for such objects.
	 */
	function onAfterShadow(renderer:WebGLRenderer, scene:Scene, shadowCamera:Camera, geometry:BufferGeometry, depthMaterial:Material, group:Group) : Void;
	/**
	 * An optional callback that is executed immediately before a 3D object is rendered.
	 * @remarks This function is called with the following parameters: renderer, scene, camera, geometry, material, group.
	 * Please notice that this callback is only executed for `renderable` 3D objects. Meaning 3D objects which
	 * define their visual appearance with geometries and materials like instances of {@link Mesh}, {@link Line},
	 * {@link Points} or {@link Sprite}. Instances of {@link Object3D}, {@link Group} or {@link Bone} are not renderable
	 * and thus this callback is not executed for such objects.
	 */
	function onBeforeRender(renderer:WebGLRenderer, scene:Scene, camera:Camera, geometry:BufferGeometry, material:Material, group:Group) : Void;
	/**
	 * An optional callback that is executed immediately after a 3D object is rendered.
	 * @remarks This function is called with the following parameters: renderer, scene, camera, geometry, material, group.
	 * Please notice that this callback is only executed for `renderable` 3D objects. Meaning 3D objects which
	 * define their visual appearance with geometries and materials like instances of {@link Mesh}, {@link Line},
	 * {@link Points} or {@link Sprite}. Instances of {@link Object3D}, {@link Group} or {@link Bone} are not renderable
	 * and thus this callback is not executed for such objects.
	 */
	function onAfterRender(renderer:WebGLRenderer, scene:Scene, camera:Camera, geometry:BufferGeometry, material:Material, group:Group) : Void;
	/**
	 * Applies the matrix transform to the object and updates the object's position, rotation and scale.
	 */
	function applyMatrix4(matrix:Matrix4) : Void;
	/**
	 * Applies the rotation represented by the quaternion to the object.
	 */
	function applyQuaternion(quaternion:Quaternion) : Object3D;
	/**
	 * Calls {@link THREE.Quaternion.setFromAxisAngle | setFromAxisAngle}({@link axis}, {@link angle}) on the {@link quaternion | .quaternion}.
	 */
	function setRotationFromAxisAngle(axis:Vector3, angle:Float) : Void;
	/**
	 * Calls {@link THREE.Quaternion.setFromEuler | setFromEuler}({@link euler}) on the {@link quaternion | .quaternion}.
	 */
	function setRotationFromEuler(euler:Euler) : Void;
	/**
	 * Calls {@link THREE.Quaternion.setFromRotationMatrix | setFromRotationMatrix}({@link m}) on the {@link quaternion | .quaternion}.
	 * @remarks Note that this assumes that the upper 3x3 of m is a pure rotation matrix (i.e, unscaled).
	 */
	function setRotationFromMatrix(m:Matrix4) : Void;
	/**
	 * Copy the given {@link THREE.Quaternion | Quaternion} into {@link quaternion | .quaternion}.
	 */
	function setRotationFromQuaternion(q:Quaternion) : Void;
	/**
	 * Rotate an object along an axis in object space.
	 * @remarks The axis is assumed to be normalized.
	 */
	function rotateOnAxis(axis:Vector3, angle:Float) : Object3D;
	/**
	 * Rotate an object along an axis in world space.
	 * @remarks The axis is assumed to be normalized
	 * Method Assumes no rotated parent.
	 */
	function rotateOnWorldAxis(axis:Vector3, angle:Float) : Object3D;
	/**
	 * Rotates the object around _x_ axis in local space.
	 */
	function rotateX(angle:Float) : Object3D;
	/**
	 * Rotates the object around _y_ axis in local space.
	 */
	function rotateY(angle:Float) : Object3D;
	/**
	 * Rotates the object around _z_ axis in local space.
	 */
	function rotateZ(angle:Float) : Object3D;
	/**
	 * Translate an object by distance along an axis in object space
	 * @remarks The axis is assumed to be normalized.
	 */
	function translateOnAxis(axis:Vector3, distance:Float) : Object3D;
	/**
	 * Translates object along x axis in object space by {@link distance} units.
	 */
	function translateX(distance:Float) : Object3D;
	/**
	 * Translates object along _y_ axis in object space by {@link distance} units.
	 */
	function translateY(distance:Float) : Object3D;
	/**
	 * Translates object along _z_ axis in object space by {@link distance} units.
	 */
	function translateZ(distance:Float) : Object3D;
	/**
	 * Converts the vector from this object's local space to world space.
	 */
	function localToWorld(vector:Vector3) : Vector3;
	/**
	 * Converts the vector from world space to this object's local space.
	 */
	function worldToLocal(vector:Vector3) : Vector3;
	/**
	 * Rotates the object to face a point in world space.
	 * @remarks This method does not support objects having non-uniformly-scaled parent(s).
	 * Rotates the object to face a point in world space.
	 * @remarks This method does not support objects having non-uniformly-scaled parent(s).
	 */
	function lookAt(vector:Vector3) : Void;
	/**
	 * Rotates the object to face a point in world space.
	 * @remarks This method does not support objects having non-uniformly-scaled parent(s).
	 * Rotates the object to face a point in world space.
	 * @remarks This method does not support objects having non-uniformly-scaled parent(s).
	 */
	function lookAt(x:Float, y:Float, z:Float) : Void;
	/**
	 * Adds another {@link Object3D} as child of this {@link Object3D}.
	 * @remarks An arbitrary number of objects may be added
	 * Any current parent on an {@link object} passed in here will be removed, since an {@link Object3D} can have at most one parent.
	 * @see {@link attach}
	 * @see {@link THREE.Group | Group} for info on manually grouping objects.
	 */
	function add(object:Object3D) : Object3D;
	/**
	 * Removes a {@link Object3D} as child of this {@link Object3D}.
	 * @remarks An arbitrary number of objects may be removed.
	 * @see {@link THREE.Group | Group} for info on manually grouping objects.
	 */
	function remove(object:Object3D) : Object3D;
	/**
	 * Removes this object from its current parent.
	 */
	function removeFromParent() : Object3D;
	/**
	 * Removes all child objects.
	 */
	function clear() : Object3D;
	/**
	 * Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	 * @remarks Note: This method does not support scene graphs having non-uniformly-scaled nodes(s).
	 * @see {@link add}
	 */
	function attach(object:Object3D) : Object3D;
	/**
	 * Searches through an object and its children, starting with the object itself, and returns the first with a matching id.
	 * @remarks Note that ids are assigned in chronological order: 1, 2, 3, ..., incrementing by one for each new object.
	 * @see {@link id}
	 */
	function getObjectById(id:Float) : haxe.extern.EitherType<Object3D, {}>;
	/**
	 * Searches through an object and its children, starting with the object itself, and returns the first with a matching name.
	 * @remarks Note that for most objects the name is an empty string by default
	 * You will have to set it manually to make use of this method.
	 */
	function getObjectByName(name:String) : haxe.extern.EitherType<Object3D, {}>;
	/**
	 * Searches through an object and its children, starting with the object itself,
	 * and returns the first with a property that matches the value given.
	 */
	function getObjectByProperty(name:String, value:Dynamic) : haxe.extern.EitherType<Object3D, {}>;
	/**
	 * Searches through an object and its children, starting with the object itself,
	 * and returns the first with a property that matches the value given.
	 */
	function getObjectsByProperty(name:String, value:Dynamic, ?optionalTarget:Array<Object3D>) : Array<Object3D>;
	/**
	 * Returns a vector representing the position of the object in world space.
	 */
	function getWorldPosition(target:Vector3) : Vector3;
	/**
	 * Returns a quaternion representing the rotation of the object in world space.
	 */
	function getWorldQuaternion(target:Quaternion) : Quaternion;
	/**
	 * Returns a vector of the scaling factors applied to the object for each axis in world space.
	 */
	function getWorldScale(target:Vector3) : Vector3;
	/**
	 * Returns a vector representing the direction of object's positive z-axis in world space.
	 */
	function getWorldDirection(target:Vector3) : Vector3;
	/**
	 * Abstract (empty) method to get intersections between a casted ray and this object
	 * @remarks Subclasses such as {@link THREE.Mesh | Mesh}, {@link THREE.Line | Line}, and {@link THREE.Points | Points} implement this method in order to use raycasting.
	 * @see {@link THREE.Raycaster | Raycaster}
	 * @defaultValue `() => {}`
	 */
	function raycast(raycaster:Raycaster, intersects:Array<Intersection>) : Void;
	/**
	 * Executes the callback on this object and all descendants.
	 * @remarks Note: Modifying the scene graph inside the callback is discouraged.
	 * @link Object3D} object.
	 */
	function traverse(callback:Object3D->Dynamic) : Void;
	/**
	 * Like traverse, but the callback will only be executed for visible objects
	 * @remarks Descendants of invisible objects are not traversed.
	 * Note: Modifying the scene graph inside the callback is discouraged.
	 * @link Object3D} object.
	 */
	function traverseVisible(callback:Object3D->Dynamic) : Void;
	/**
	 * Executes the callback on all ancestors.
	 * @remarks Note: Modifying the scene graph inside the callback is discouraged.
	 * @link Object3D} object.
	 */
	function traverseAncestors(callback:Object3D->Dynamic) : Void;
	/**
	 * Updates local transform.
	 */
	function updateMatrix() : Void;
	/**
	 * Updates the global transform of the object.
	 * And will update the object descendants if {@link matrixWorldNeedsUpdate | .matrixWorldNeedsUpdate} is set to true or if the {@link force} parameter is set to `true`.
	 * @link matrixWorldAutoUpdate | .matrixWorldAutoUpdate}, to recalculate the world matrix of the object and descendants on the current frame.
	 * Useful if you cannot wait for the renderer to update it on the next frame, assuming {@link matrixWorldAutoUpdate | .matrixWorldAutoUpdate} set to `true`.
	 */
	function updateMatrixWorld(?force:Bool) : Void;
	/**
	 * Updates the global transform of the object.
	 */
	function updateWorldMatrix(updateParents:Bool, updateChildren:Bool) : Void;
	/**
	 * Convert the object to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	 */
	function toJSON(?meta:{ var geometries : Dynamic; var materials : Dynamic; var textures : Dynamic; var images : Dynamic; }) : Dynamic;
	/**
	 * Returns a clone of `this` object and optionally all descendants.
	 */
	function clone(?recursive:Bool) : Object3D;
	/**
	 * Copy the given object into this object
	 * @remarks Note: event listeners and user-defined callbacks ({@link onAfterRender | .onAfterRender} and {@link onBeforeRender | .onBeforeRender}) are not copied.
	 */
	function copy(source:Object3D, ?recursive:Bool) : Object3D;
}