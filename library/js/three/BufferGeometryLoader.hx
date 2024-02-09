package js.three;

import js.lib.*;

@:native("THREE.BufferGeometryLoader")
extern class BufferGeometryLoader extends Loader<InstancedBufferGeometry | BufferGeometry>
{
	function new(?manager:LoadingManager) : Void;
	function parse(json:unknown) : haxe.extern.EitherType<InstancedBufferGeometry, BufferGeometry>;
}