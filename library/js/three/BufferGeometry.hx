package js.three;

import js.html.*;

/**
 * This is a superefficent class for geometries because it saves all data in buffers.
 * It reduces memory costs and cpu cycles. But it is not as easy to work with because of all the nessecary buffer calculations.
 * It is mainly interesting when working with static objects.
 *
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/BufferGeometry.js">src/core/BufferGeometry.js</a>
 */
@:native("THREE.BufferGeometry")
extern class BufferGeometry
{
	/**
	 * This creates a new BufferGeometry. It also sets several properties to an default value.
	 */
	function new() : Void;

	static var MaxIndex : Int;

	/**
	 * Unique number of this buffergeometry instance
	 */
	var id : Int;
	var uuid : String;
	var name : String;
	var type : String;
	var index : BufferAttribute;
	var attributes: Array<haxe.extern.EitherType<BufferAttribute, InterleavedBufferAttribute>>;
	var morphAttributes : Dynamic;
	var groups : Array<{ start: Int, count:Int, ?materialIndex:Int }>;
	var boundingBox : Box3;
	var boundingSphere : BoundingSphere;
	var drawRange : { start: Int, count:Int };

	/** Deprecated. */
	function addIndex(index:BufferAttribute) : Void;

	function getIndex() : BufferAttribute;
	function setIndex(index:BufferAttribute) : Void;

	/** Deprecated. This overloaded method is deprecated. */
	@:overload(function(name:String, attribute:haxe.extern.EitherType<BufferAttribute, InterleavedBufferAttribute>):Void{})
	function addAttribute(name:String, array:Dynamic, itemSize:Float) : Dynamic;
	function getAttribute(name:String) : haxe.extern.EitherType<BufferAttribute, InterleavedBufferAttribute>;
	function removeAttribute(name:String) : Void;

	/** Deprecated. */
	function drawcalls() : Dynamic;
	/** Deprecated. */
	function offsets() : Dynamic;

	/** Deprecated. Use addGroup */
	function addDrawCall(start:Int, count:Int, ?index:Int) : Void;
	/** Deprecated. */
	function clearDrawCalls() : Void;
	function addGroup(start:Int, count:Int, ?materialIndex:Int) : Void;
	function clearGroups() : Void;

	function setDrawRange(start:Int, count:Int) : Void;

	/**
	 * Bakes matrix transform directly into vertex coordinates.
	 */
	function applyMatrix(matrix:Matrix4) : Void;

	function rotateX(angle:Float) : BufferGeometry;
	function rotateY(angle:Float) : BufferGeometry;
	function rotateZ(angle:Float) : BufferGeometry;
	function translate(x:Float, y:Float, z:Float) : BufferGeometry;
	function scale(x:Float, y:Float, z:Float) : BufferGeometry;
	function lookAt(v:Vector3) : Void;

	function center() : Vector3;

	function setFromObject(object:Object3D) : Void;
	function updateFromObject(object:Object3D) : Void;

	function fromGeometry(geometry:Geometry, ?settings:Dynamic) : BufferGeometry;

	function fromDirectGeometry(geometry:DirectGeometry) : BufferGeometry;

	/**
	 * Computes bounding box of the geometry, updating Geometry.boundingBox attribute.
	 * Bounding boxes aren't computed by default. They need to be explicitly computed, otherwise they are null.
	 */
	function computeBoundingBox() : Void;

	/**
	 * Computes bounding sphere of the geometry, updating Geometry.boundingSphere attribute.
	 * Bounding spheres aren't' computed by default. They need to be explicitly computed, otherwise they are null.
	 */
	function computeBoundingSphere() : Void;

	/**
	 * @deprecated
	 */
	function computeFaceNormals() : Void;

	/**
	 * Computes vertex normals by averaging face normals.
	 */
	function computeVertexNormals() : Void;

	function computeOffsets(size:Float) : Void;
	function merge(geometry:BufferGeometry, offset:Float) : BufferGeometry;
	function normalizeNormals() : Void;
	function toJSON() : Dynamic;
	function clone() : BufferGeometry;
	function copy(source:BufferGeometry) : BufferGeometry;

	/**
	 * Disposes the object from memory.
	 * You need to call this when you want the bufferGeometry removed while the application is running.
	 */
	function dispose() : Void;
	
	// EventDispatcher mixins
	function addEventListener(type:String, listener:Dynamic->Void) : Void;
	function hasEventListener(type:String, listener:Dynamic->Void) : Void;
	function removeEventListener(type:String, listener:Dynamic->Void) : Void;
	function dispatchEvent(event: { type: String, target:Dynamic }) : Void;
}