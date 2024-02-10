package js.three.loaders;

import js.lib.Promise;
import js.three.core.Object3D;
import js.three.core.InstancedBufferGeometry;
import js.three.core.BufferGeometry;
import js.three.materials.Material;
import js.three.textures.Texture;
import js.three.animation.AnimationClip;
import js.three.textures.Source;

@:jsRequire("three")
@:native("THREE.ObjectLoader")
extern class ObjectLoader extends Loader<Object3D>
{
	function new(?manager:LoadingManager) : Void;
	function load(url:String, ?onLoad:Object3D->Void, ?onProgress:js.html.ProgressEvent->Void, ?onError:Dynamic->Void) : Void;
	function parse(json:Dynamic, ?onLoad:Object3D->Void) : Object3D;
	function parseAsync(json:Dynamic) : Promise<Object3D>;
	function parseGeometries(json:Dynamic) : Dynamic<haxe.extern.EitherType<InstancedBufferGeometry, BufferGeometry>>;
	function parseMaterials(json:Dynamic, textures:Dynamic<Texture>) : Dynamic<Material>;
	function parseAnimations(json:Dynamic) : Dynamic<AnimationClip>;
	function parseImages(json:Dynamic, ?onLoad:Void->Void) : Dynamic<Source>;
	function parseImagesAsync(json:Dynamic) : Promise<Dynamic<Source>>;
	function parseTextures(json:Dynamic, images:Dynamic<Source>) : Dynamic<Texture>;
	function parseObject(data:Dynamic, geometries:Dynamic<haxe.extern.EitherType<InstancedBufferGeometry, BufferGeometry>>, materials:Dynamic<Material>, animations:Dynamic<AnimationClip>) : Object3D;
}