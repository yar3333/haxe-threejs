package js.three;

import js.html.*;

@:native("THREE.SkinnedMesh")
extern class SkinnedMesh extends Mesh
{
	var bindMode : String;
	var bindMatrix : Matrix4;
	var bindMatrixInverse : Matrix4;
	var skeleton : Skeleton;

	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MeshBasicMaterial, ?useVertexTexture:Bool) : Void;
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MeshDepthMaterial, ?useVertexTexture:Bool) : Void;
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MultiMaterial, ?useVertexTexture:Bool) : Void;
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MeshLambertMaterial, ?useVertexTexture:Bool) : Void;
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MeshNormalMaterial, ?useVertexTexture:Bool) : Void;
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MeshPhongMaterial, ?useVertexTexture:Bool) : Void;
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:ShaderMaterial, ?useVertexTexture:Bool) : Void;
	function bind(skeleton:Skeleton, bindMatrix:Matrix4) : Void;
	function pose() : Void;
	function normalizeSkinWeights() : Void;
	function updateMatrixWorld(force:Bool) : Void;
}