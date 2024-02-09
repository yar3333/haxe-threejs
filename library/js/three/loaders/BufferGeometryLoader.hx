package js.three.loaders;

import haxe.extern.EitherType;
import js.lib.*;

@:native("THREE.BufferGeometryLoader")
extern class BufferGeometryLoader extends Loader<EitherType<InstancedBufferGeometry, BufferGeometry>>
{
	function new(?manager:LoadingManager) : Void;
	function parse(json:Dynamic) : EitherType<InstancedBufferGeometry, BufferGeometry>;
}