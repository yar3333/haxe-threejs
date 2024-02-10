package js.three.loaders;

import haxe.extern.EitherType;
import js.three.core.InstancedBufferGeometry;
import js.three.core.BufferGeometry;

@:jsRequire("three", "BufferGeometryLoader")
@:native("THREE.BufferGeometryLoader")
extern class BufferGeometryLoader extends Loader<EitherType<InstancedBufferGeometry, BufferGeometry>>
{
	function new(?manager:LoadingManager) : Void;
	function parse(json:Dynamic) : EitherType<InstancedBufferGeometry, BufferGeometry>;
}