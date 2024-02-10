package js.three.objects;

import js.three.core.BufferGeometry;
import js.three.materials.Material;
import js.three.math.Box3;
import js.three.math.Sphere;
import js.three.cameras.Camera;
import js.three.math.Matrix4;

/**
 * A special version of {@link Mesh} with multi draw batch rendering support. Use {@link BatchedMesh} if you have to
 * render a large number of objects with the same material but with different world transformations and geometry. The
 * usage of {@link BatchedMesh} will help you to reduce the number of draw calls and thus improve the overall rendering
 * performance in your application.
 * 
 * If the {@link https://developer.mozilla.org/en-US/docs/Web/API/WEBGL_multi_draw WEBGL_multi_draw extension} is not
 * supported then a less performant callback is used.
 * 
 * @example
 * const box = new THREE.BoxGeometry( 1, 1, 1 );
 * const sphere = new THREE.BoxGeometry( 1, 1, 1 );
 * const material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } );
 * 
 * // initialize and add geometries into the batched mesh
 * const batchedMesh = new BatchedMesh( 10, 5000, 10000, material );
 * const boxId = batchedMesh.addGeometry( box );
 * const sphereId = batchedMesh.addGeometry( sphere );
 * 
 * // position the geometries
 * batchedMesh.setMatrixAt( boxId, boxMatrix );
 * batchedMesh.setMatrixAt( sphereId, sphereMatrix );
 * 
 * scene.add( batchedMesh );
 * 
 * @also Example: {@link https://threejs.org/examples/#webgl_mesh_batch WebGL / mesh / batch}
 */
@:jsRequire("three", "BatchedMesh")
@:native("THREE.BatchedMesh")
extern class BatchedMesh extends Mesh<BufferGeometry, Material>
{
	/**
	 * This bounding box encloses all instances of the {@link BatchedMesh}. Can be calculated with
	 * {@link .computeBoundingBox()}.
	 * @default null
	 */
	var boundingBox : Box3;
	/**
	 * This bounding sphere encloses all instances of the {@link BatchedMesh}. Can be calculated with
	 * {@link .computeBoundingSphere()}.
	 * @default null
	 */
	var boundingSphere : Sphere;
	var customSort : (BatchedMesh->Array<{ var start : Float; var count : Float; var z : Float; }>->Camera->Void);
	/**
	 * If true then the individual objects within the {@link BatchedMesh} are frustum culled.
	 * @default true
	 */
	var perObjectFrustumCulled : Bool;
	/**
	 * If true then the individual objects within the {@link BatchedMesh} are sorted to improve overdraw-related
	 * artifacts. If the material is marked as "transparent" objects are rendered back to front and if not then they are
	 * rendered front to back.
	 * @default true
	 */
	var sortObjects : Bool;
	/**
	 * Read-only flag to check if a given object is of type {@link BatchedMesh}.
	 */
	var isBatchedMesh : Bool;

	/**
	 * A special version of {@link Mesh} with multi draw batch rendering support. Use {@link BatchedMesh} if you have to
	 * render a large number of objects with the same material but with different world transformations and geometry. The
	 * usage of {@link BatchedMesh} will help you to reduce the number of draw calls and thus improve the overall rendering
	 * performance in your application.
	 * 
	 * If the {@link https://developer.mozilla.org/en-US/docs/Web/API/WEBGL_multi_draw WEBGL_multi_draw extension} is not
	 * supported then a less performant callback is used.
	 * 
	 * @example
	 * const box = new THREE.BoxGeometry( 1, 1, 1 );
	 * const sphere = new THREE.BoxGeometry( 1, 1, 1 );
	 * const material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } );
	 * 
	 * // initialize and add geometries into the batched mesh
	 * const batchedMesh = new BatchedMesh( 10, 5000, 10000, material );
	 * const boxId = batchedMesh.addGeometry( box );
	 * const sphereId = batchedMesh.addGeometry( sphere );
	 * 
	 * // position the geometries
	 * batchedMesh.setMatrixAt( boxId, boxMatrix );
	 * batchedMesh.setMatrixAt( sphereId, sphereMatrix );
	 * 
	 * scene.add( batchedMesh );
	 * 
	 * @also Example: {@link https://threejs.org/examples/#webgl_mesh_batch WebGL / mesh / batch}
	 */
	function new(maxGeometryCount:Float, maxVertexCount:Float, ?maxIndexCount:Float, ?material:Material) : Void;
	/**
	 * Computes the bounding box, updating {@link .boundingBox} attribute.
	 * Bounding boxes aren't computed by default. They need to be explicitly computed, otherwise they are `null`.
	 */
	function computeBoundingBox() : Void;
	/**
	 * Computes the bounding sphere, updating {@link .boundingSphere} attribute.
	 * Bounding spheres aren't computed by default. They need to be explicitly computed, otherwise they are `null`.
	 */
	function computeBoundingSphere() : Void;
	/**
	 * Frees the GPU-related resources allocated by this instance. Call this method whenever this instance is no longer
	 * used in your app.
	 */
	function dispose() : BatchedMesh;
	/**
	 * Takes a sort a function that is run before render. The function takes a list of items to sort and a camera. The
	 * objects in the list include a "z" field to perform a depth-ordered sort with.
	 */
	function setCustomSort(func:(BatchedMesh->Array<{ var start : Float; var count : Float; var z : Float; }>->Camera->Void)) : BatchedMesh;
	/**
	 * Get the local transformation matrix of the defined instance.
	 */
	function getMatrixAt(index:Int, matrix:Matrix4) : Matrix4;
	/**
	 * Get whether the given instance is marked as "visible" or not.
	 */
	function getVisibleAt(index:Int) : Bool;
	/**
	 * Sets the given local transformation matrix to the defined instance. Make sure you set {@link .instanceMatrix}
	 * {@link BufferAttribute.needsUpdate} to true after updating all the matrices.
	 */
	function setMatrixAt(index:Int, matrix:Matrix4) : BatchedMesh;
	/**
	 * Sets the visibility of the object at the given index.
	 */
	function setVisibleAt(index:Int, visible:Bool) : BatchedMesh;
	/**
	 * Adds the given geometry to the {@link BatchedMesh} and returns the associated index referring to it.
	 * @link BatchedMesh}.
	 */
	function addGeometry(geometry:BufferGeometry, ?reservedVertexRange:Float, ?reservedIndexRange:Float) : Float;
	/**
	 * Replaces the geometry at `index` with the provided geometry. Throws an error if there is not enough space
	 * reserved for geometry at the index.
	 */
	function setGeometryAt(index:Int, geometry:BufferGeometry) : Float;
	/**
	 * Marks the geometry at the given index as deleted and to not be rendered anymore.
	 */
	function deleteGeometry(index:Int) : BatchedMesh;
	function getBoundingBoxAt(index:Int, target:Box3) : Box3;
	function getBoundingSphereAt(index:Int, target:Sphere) : Sphere;
}