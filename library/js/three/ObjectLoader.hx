package js.three;

import js.lib.*;

@:native("THREE.ObjectLoader")
extern class ObjectLoader extends Loader<Object3D>
{
	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:Object3D->Void, ?onProgress:ProgressEvent->Void, ?onError:unknown->Void) : Void;
	function parse(json:unknown, ?onLoad:Object3D->Void) : Object3D;
	function parseAsync(json:unknown) : Promise<Object3D>;
	function parseGeometries(json:unknown) : Dynamic<haxe.extern.EitherType<InstancedBufferGeometry, BufferGeometry>>;
	function parseMaterials(json:unknown, textures:Dynamic<Texture>) : Dynamic<Material>;
	function parseAnimations(json:unknown) : Dynamic<AnimationClip>;
	function parseImages(json:unknown, ?onLoad:Void->Void) : Dynamic<Source>;
	function parseImagesAsync(json:unknown) : Promise<Dynamic<Source>>;
	function parseTextures(json:unknown, images:Dynamic<Source>) : Dynamic<Texture>;
	function parseObject(data:unknown, geometries:Dynamic<haxe.extern.EitherType<InstancedBufferGeometry, BufferGeometry>>, materials:Dynamic<Material>, animations:Dynamic<AnimationClip>) : Object3D;
}