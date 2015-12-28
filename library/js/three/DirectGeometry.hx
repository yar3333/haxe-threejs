package js.three;

import js.html.*;

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/DirectGeometry.js">src/core/DirectGeometry.js</a>
 */
@:native("THREE.DirectGeometry")
extern class DirectGeometry
{
	function new() : Void;

	var id : Int;
	var uuid : String;
	var name : String;
	var type : String;
	var indices : Array<Float>;
	var vertices : Array<Vector3>;
	var normals : Array<Vector3>;
	var colors : Array<Color>;
	var uvs : Array<Vector2>;
	var uvs2 : Array<Vector2>;
	var groups : Array<{ start: Float, materialIndex:Int }>;
	var morphTargets : Array<MorphTarget>;
	var skinWeights : Array<Float>;
	var skinIndices : Array<Int>;
	var boundingBox : Box3;
	var boundingSphere : BoundingSphere;
	var verticesNeedUpdate : Bool;
	var normalsNeedUpdate : Bool;
	var colorsNeedUpdate : Bool;
	var uvsNeedUpdate : Bool;
	var groupsNeedUpdate : Bool;

	function computeBoundingBox() : Void;
	function computeBoundingSphere() : Void;
	function computeGroups(geometry:Geometry) : Void;
	function fromGeometry(geometry:Geometry) : DirectGeometry;
	function dispose() : Void;

	// EventDispatcher mixins
	function addEventListener(type:String, listener:Dynamic->Void) : Void;
	function hasEventListener(type:String, listener:Dynamic->Void) : Void;
	function removeEventListener(type:String, listener:Dynamic->Void) : Void;
	function dispatchEvent(event: { type: String, target:Dynamic }) : Void;
}