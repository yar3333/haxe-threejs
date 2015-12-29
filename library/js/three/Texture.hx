package js.three;

import js.html.*;

@:native("THREE.Texture")
extern class Texture
{
	function new(
		image: haxe.extern.EitherType<haxe.extern.EitherType<js.html.ImageElement, js.html.CanvasElement>, VideoElement>,
		?mapping:Mapping,
		?wrapS:Wrapping,
		?wrapT:Wrapping,
		?magFilter:TextureFilter,
		?minFilter:TextureFilter,
		?format:PixelFormat,
		?type:TextureDataType,
		?anisotropy:Int
		) : Void;

	var id : Int;
	var uuid : String;
	var name : String;
	var sourceFile : String;
	var image : Dynamic;// HTMLImageElement or ImageData ;
	var mipmaps : Array<ImageData>;
	var mapping : Mapping;
	var wrapS : Wrapping;
	var wrapT : Wrapping;
	var magFilter : TextureFilter;
	var minFilter : TextureFilter;
	var anisotropy : Int;
	var format : PixelFormat;
	var type : TextureDataType;
	var offset : Vector2;
	var repeat : Vector2;
	var generateMipmaps : Bool;
	var premultiplyAlpha : Bool;
	var flipY : Bool;
	var unpackAlignment : Float;
	var version : Float;
	var needsUpdate : Bool;
	var onUpdate : Void->Void;
	static var DEFAULT_IMAGE : Dynamic;
	static var DEFAULT_MAPPING : Dynamic;

	function clone() : Texture;
	function copy(source:Texture) : Texture;
	function toJSON(meta:Dynamic) : Dynamic;
	function dispose() : Void;
	function transformUv(uv:Vector) : Void;

	// EventDispatcher mixins
	function addEventListener(type:String, listener:Dynamic->Void) : Void;
	function hasEventListener(type:String, listener:Dynamic->Void) : Void;
	function removeEventListener(type:String, listener:Dynamic->Void) : Void;
	function dispatchEvent(event: { type: String, target:Dynamic }) : Void;
}