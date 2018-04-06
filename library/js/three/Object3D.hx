package js.three;

import js.html.*;

/**
 * Base class for scene graph objects
 */
@:native("THREE.Object3D")
extern class Object3D extends EventDispatcher
{
	/**
	 * Unique number of this object instance.
	 */
	var id : Int;
	var uuid : String;
	/**
	 * Optional name of the object (doesn't need to be unique).
	 */
	var name : String;
	var type : String;
	/**
	 * Object's parent in the scene graph.
	 */
	var parent : Object3D;
	/**
	 * Array with object's children.
	 */
	var children : Array<Object3D>;
	/**
	 * Up direction.
	 */
	var up : Vector3;
	/**
	 * Object's local position.
	 */
	var position : Vector3;
	/**
	 * Object's local rotation (Euler angles), in radians.
	 */
	var rotation : Euler;
	/**
	 * Global rotation.
	 */
	var quaternion : Quaternion;
	/**
	 * Object's local scale.
	 */
	var scale : Vector3;
	var modelViewMatrix : Matrix4;
	var normalMatrix : Matrix3;
	/**
	 * Local transform.
	 */
	var matrix : Matrix4;
	/**
	 * The global transform of the object. If the Object3d has no parent, then it's identical to the local transform.
	 */
	var matrixWorld : Matrix4;
	/**
	 * When this is set, it calculates the matrix of position, (rotation or quaternion) and scale every frame and also recalculates the matrixWorld property.
	 */
	var matrixAutoUpdate : Bool;
	/**
	 * When this is set, it calculates the matrixWorld in that frame and resets this property to false.
	 */
	var matrixWorldNeedsUpdate : Bool;
	var layers : Layers;
	/**
	 * Object gets rendered if true.
	 */
	var visible : Bool;
	/**
	 * Gets rendered into shadow map.
	 */
	var castShadow : Bool;
	/**
	 * Material gets baked in shadow receiving.
	 */
	var receiveShadow : Bool;
	/**
	 * When this is set, it checks every frame if the object is in the frustum of the camera. Otherwise the object gets drawn every frame even if it isn't visible.
	 */
	var frustumCulled : Bool;
	var renderOrder : Float;
	/**
	 * An object that can be used to store custom data about the Object3d. It should not hold references to functions as these will not be cloned.
	 */
	var userData : Dynamic;
	/**
	 * Used to check whether this or derived classes are Object3Ds. Default is true.
	 * You should not change this, as it is used internally for optimisation.
	 */
	var isObject3D : Bool;
	/**
	 * Calls before rendering object
	 */
	var onBeforeRender : WebGLRenderer->Scene->Camera->haxe.extern.EitherType<Geometry, BufferGeometry>->Material->Group->Void;
	/**
	 * Calls after rendering object
	 */
	var onAfterRender : WebGLRenderer->Scene->Camera->haxe.extern.EitherType<Geometry, BufferGeometry>->Material->Group->Void;
	var DefaultUp : Vector3;
	var DefaultMatrixAutoUpdate : Bool;

	/**
	 * Base class for scene graph objects
	 */
	function new() : Void;
	/**
	 * This updates the position, rotation and scale with the matrix.
	 */
	function applyMatrix(matrix:Matrix4) : Void;
	function setRotationFromAxisAngle(axis:Vector3, angle:Float) : Void;
	function setRotationFromEuler(euler:Euler) : Void;
	function setRotationFromMatrix(m:Matrix4) : Void;
	function setRotationFromQuaternion(q:Quaternion) : Void;
	/**
	 * Rotate an object along an axis in object space. The axis is assumed to be normalized.
	 */
	function rotateOnAxis(axis:Vector3, angle:Float) : Object3D;
	/**
	 * Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	 */
	function rotateOnWorldAxis(axis:Vector3, angle:Float) : Object3D;
	function rotateX(angle:Float) : Object3D;
	function rotateY(angle:Float) : Object3D;
	function rotateZ(angle:Float) : Object3D;
	function translateOnAxis(axis:Vector3, distance:Float) : Object3D;
	/**
	 * Translates object along x axis by distance.
	 */
	function translateX(distance:Float) : Object3D;
	/**
	 * Translates object along y axis by distance.
	 */
	function translateY(distance:Float) : Object3D;
	/**
	 * Translates object along z axis by distance.
	 */
	function translateZ(distance:Float) : Object3D;
	/**
	 * Updates the vector from local space to world space.
	 */
	function localToWorld(vector:Vector3) : Vector3;
	/**
	 * Updates the vector from world space to local space.
	 */
	function worldToLocal(vector:Vector3) : Vector3;
	/**
	 * Rotates object to face point in space.
	 */
	@:overload(function(x:Float, y:Float, z:Float):Void{})
	function lookAt(vector:Vector3) : Void;
	/**
	 * Rotates object to face point in space.
	 */
	/**
	 * Adds object as child of this object.
	 */
	function add(object:Object3D) : Void;
	/**
	 * Removes object as child of this object.
	 */
	function remove(object:Object3D) : Void;
	/**
	 * Searches through the object's children and returns the first with a matching id, optionally recursive.
	 */
	function getObjectById(id:Int) : Object3D;
	/**
	 * Searches through the object's children and returns the first with a matching name, optionally recursive.
	 */
	function getObjectByName(name:String) : Object3D;
	function getObjectByProperty(name:String, value:String) : Object3D;
	function getWorldPosition(target:Vector3) : Vector3;
	function getWorldQuaternion(target:Quaternion) : Quaternion;
	function getWorldScale(target:Vector3) : Vector3;
	function getWorldDirection(target:Vector3) : Vector3;
	function raycast(raycaster:Raycaster, intersects:Dynamic) : Void;
	function traverse(callback:Object3D->Void) : Void;
	function traverseVisible(callback:Object3D->Void) : Void;
	function traverseAncestors(callback:Object3D->Void) : Void;
	/**
	 * Updates local transform.
	 */
	function updateMatrix() : Void;
	/**
	 * Updates global transform of the object and its children.
	 */
	function updateMatrixWorld(force:Bool) : Void;
	function toJSON(?meta:{ var geometries : Dynamic; var materials : Dynamic; var textures : Dynamic; var images : Dynamic; }) : Dynamic;
	function clone(?recursive:Bool) : Object3D;
	function copy(source:Object3D, ?recursive:Bool) : Object3D;
}