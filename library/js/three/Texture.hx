package js.three;

@:native("THREE.Texture")
extern class Texture extends EventDispatcher
{
	var id : Int;
	var name : String;
	var image : Dynamic; // TODO: find real type { data:Dynamic, width:Int, height:Int }
	var mipmaps : Array<Dynamic>; // TODO: more specific type?
	var mapping : Mapping;
	var wrapS : Int; // ClampToEdgeWrapping
	var wrapT : Int; // ClampToEdgeWrapping
	var magFilter : Int; // LinearFilter
	var minFilter : Int; // LinearMipMapLinearFilter
	var anisotropy : Int; // 1
	var format : Int; // RGBAFormat
	var type : Int; // UnsignedByteType
	var offset : Vector2; // (0,0)
	var repeat : Vector2; // (1,1)
	var generateMipmaps : Bool; // true
	var premultiplyAlpha : Bool; // false
	var flipY : Bool; // true
	var unpackAlignment : Int; // 4
	var needsUpdate : Bool;
	var onUpdate : Void -> Void; // TODO: WTF?
	function new(image:Dynamic, ?mapping:Mapping, ?wrapS:Int, ?wrapT:Int, ?magFilter:Int, ?minFilter:Int, ?format:Int, ?type:Int, ?anisotropy:Int) : Void;
	function clone() : Texture;
	function dispose() : Void;
}
