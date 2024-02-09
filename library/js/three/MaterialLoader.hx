package js.three;

import js.lib.*;

@:native("THREE.MaterialLoader")
extern class MaterialLoader extends Loader<Material>
{
	/**
	 * @default {}
	 */
	var textures : Dynamic<Texture>;

	function new(?manager:LoadingManager) : Void;
	function parse(json:unknown) : Material;
	function setTextures(textures:Dynamic<Texture>) : MaterialLoader;
	static function createMaterialFromType(type:String) : Material;
}