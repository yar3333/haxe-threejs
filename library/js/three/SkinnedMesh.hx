package js.three;

import js.html.*;
import haxe.extern.EitherType;

@:native("THREE.SkinnedMesh")
extern class SkinnedMesh extends Mesh
{
	@:overload(function(?geometry:EitherType<Geometry,BufferGeometry>, ?material:MeshDepthMaterial, ?useVertexTexture:Bool):Void{})
	@:overload(function(?geometry:EitherType<Geometry,BufferGeometry>, ?material:MeshFaceMaterial, ?useVertexTexture:Bool):Void{})
	@:overload(function(?geometry:EitherType<Geometry,BufferGeometry>, ?material:MeshLambertMaterial, ?useVertexTexture:Bool):Void{})
	@:overload(function(?geometry:EitherType<Geometry,BufferGeometry>, ?material:MeshNormalMaterial, ?useVertexTexture:Bool):Void{})
	@:overload(function(?geometry:EitherType<Geometry,BufferGeometry>, ?material:MeshPhongMaterial, ?useVertexTexture:Bool):Void{})
	@:overload(function(?geometry:EitherType<Geometry,BufferGeometry>, ?material:ShaderMaterial, ?useVertexTexture:Bool):Void{})
	function new(?geometry:EitherType<Geometry,BufferGeometry>, ?material:MeshBasicMaterial, ?useVertexTexture:Bool) : Void;

	var bindMode : String;
	var bindMatrix : Matrix4;
	var bindMatrixInverse : Matrix4;

	function bind(skeleton:Skeleton, ?bindMatrix:Matrix4) : Void;
	function pose() : Void;
	function normalizeSkinWeights() : Void;
	@:overload(function(?force:Bool):Void{})
	override function updateMatrixWorld(force:Bool) : Void;
	@:overload(function():SkinnedMesh{})
	override function clone(?recursive:Bool) : Object3D;
	@:overload(function(?source:SkinnedMesh):SkinnedMesh{})
	override function copy(source:Object3D, ?recursive:Bool) : Object3D;

	var skeleton : Skeleton;
}