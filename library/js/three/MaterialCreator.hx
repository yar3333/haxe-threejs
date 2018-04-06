package js.three;

import js.html.*;

@:native("THREE.MaterialCreator")
extern class MaterialCreator
{
	var baseUrl : String;
	var options : Dynamic;
	var materialsInfo : Dynamic;
	var materials : Dynamic;
	var materialsArray : Array<Material>;
	var nameLookup : Dynamic;
	var side : Float;
	var wrap : Float;

	function new(?baseUrl:String, ?options:Dynamic) : Void;
	function setCrossOrigin(value:Bool) : Void;
	function setManager(value:Dynamic) : Void;
	function setMaterials(materialsInfo:Dynamic) : Void;
	function convert(materialsInfo:Dynamic) : Dynamic;
	function preload() : Void;
	function getIndex(materialName:String) : Material;
	function getAsArray() : Array<Material>;
	function create(materialName:String) : Material;
	function createMaterial_(materialName:String) : Material;
	function getTextureParams(value:String, matParams:Dynamic) : Dynamic;
	function loadTexture(url:String, mapping:Dynamic, onLoad:BufferGeometry->Void, ?onProgress:ProgressEvent->Void, ?onError:ErrorEvent->Void) : Texture;
}