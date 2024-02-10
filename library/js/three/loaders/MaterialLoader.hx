package js.three.loaders;

import js.three.materials.Material;
import js.three.textures.Texture;

@:native("THREE.MaterialLoader")
extern class MaterialLoader extends Loader<Material>
{
	/**
	 * @default {}
	 */
	var textures : Dynamic<Texture>;

	function new(?manager:LoadingManager) : Void;
	function parse(json:Dynamic) : Material;
	function setTextures(textures:Dynamic<Texture>) : MaterialLoader;
	static function createMaterialFromType(type:String) : Material;
}