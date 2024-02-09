package js.three.objects;

import js.lib.*;

/**
 * Use an array of {@link Bone | bones} to create a {@link Skeleton} that can be used by a {@link THREE.SkinnedMesh | SkinnedMesh}.
 * @example
 * ```typescript
 * // Create a simple "arm"
 * const bones = [];
 * const shoulder = new THREE.Bone();
 * const elbow = new THREE.Bone();
 * const hand = new THREE.Bone();
 * shoulder.add(elbow);
 * elbow.add(hand);
 * bones.push(shoulder);
 * bones.push(elbow);
 * bones.push(hand);
 * shoulder.position.y = -5;
 * elbow.position.y = 0;
 * hand.position.y = 5;
 * const armSkeleton = new THREE.Skeleton(bones);
 * See the[page: SkinnedMesh] page
 * for an example of usage with standard[page: BufferGeometry].
 * ```
 * @see {@link https://threejs.org/docs/index.html#api/en/objects/Skeleton | Official Documentation}
 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/Skeleton.js | Source}
 */
@:native("THREE.Skeleton")
extern class Skeleton
{
	/**
	 * {@link http://en.wikipedia.org/wiki/Universally_unique_identifier | UUID} of this object instance.
	 * @remarks This gets automatically assigned and shouldn't be edited.
	 */
	var uuid : String;
	/**
	 * The array of {@link THREE.Bone | Bones}.
	 * @remarks Note this is a copy of the original array, not a reference, so you can modify the original array without effecting this one.
	 */
	var bones : Array<Bone>;
	/**
	 * An array of {@link Matrix4 | Matrix4s} that represent the inverse of the {@link THREE.Matrix4 | matrixWorld} of the individual bones.
	 */
	var boneInverses : Array<Matrix4>;
	/**
	 * The array buffer holding the bone data when using a vertex texture.
	 */
	var boneMatrices : Float32Array;
	/**
	 * The {@link THREE.DataTexture | DataTexture} holding the bone data when using a vertex texture.
	 */
	var boneTexture : DataTexture;
	var frame : Float;

	/**
	 * Use an array of {@link Bone | bones} to create a {@link Skeleton} that can be used by a {@link THREE.SkinnedMesh | SkinnedMesh}.
	 * @example
	 * ```typescript
	 * // Create a simple "arm"
	 * const bones = [];
	 * const shoulder = new THREE.Bone();
	 * const elbow = new THREE.Bone();
	 * const hand = new THREE.Bone();
	 * shoulder.add(elbow);
	 * elbow.add(hand);
	 * bones.push(shoulder);
	 * bones.push(elbow);
	 * bones.push(hand);
	 * shoulder.position.y = -5;
	 * elbow.position.y = 0;
	 * hand.position.y = 5;
	 * const armSkeleton = new THREE.Skeleton(bones);
	 * See the[page: SkinnedMesh] page
	 * for an example of usage with standard[page: BufferGeometry].
	 * ```
	 * @see {@link https://threejs.org/docs/index.html#api/en/objects/Skeleton | Official Documentation}
	 * @see {@link https://github.com/mrdoob/three.js/blob/master/src/objects/Skeleton.js | Source}
	 */
	function new(?bones:Array<Bone>, ?boneInverses:Array<Matrix4>) : Void;
	
    function init() : Void;
	
    /**
	 * Generates the {@link boneInverses} array if not provided in the constructor.
	 */
	function calculateInverses() : Void;
	/**
	 * Computes an instance of {@link THREE.DataTexture | DataTexture} in order to pass the bone data more efficiently to the shader
	 * @remarks
	 * The texture is assigned to {@link boneTexture}.
	 */
	function computeBoneTexture() : Skeleton;
	/**
	 * Returns the skeleton to the base pose.
	 */
	function pose() : Void;
	/**
	 * Updates the {@link boneMatrices} and {@link boneTexture} after changing the bones
	 * @remarks
	 * This is called automatically by the {@link THREE.WebGLRenderer | WebGLRenderer} if the {@link Skeleton} is used with a {@link THREE.SkinnedMesh | SkinnedMesh}.
	 */
	function update() : Void;
	/**
	 * Returns a clone of this {@link Skeleton} object.
	 */
	function clone() : Skeleton;
	/**
	 * Searches through the skeleton's bone array and returns the first with a matching name.
	 * @link THREE.Bone.name | .name} property.
	 */
	function getBoneByName(name:String) : haxe.extern.EitherType<{}, Bone>;
	/**
	 * Frees the GPU-related resources allocated by this instance
	 * @remarks
	 * Call this method whenever this instance is no longer used in your app.
	 */
	function dispose() : Void;
	
    function toJSON() : Dynamic;
	
    function fromJSON(json:Dynamic, bones:Dynamic<Bone>) : Void;
}