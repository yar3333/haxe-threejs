package js.three.animation;

@:jsRequire("three")
@:native("THREE.PropertyBinding.Composite")
extern class Composite
{
	function new(targetGroup:Dynamic, path:Dynamic, ?parsedPath:Dynamic) : Void;
	function getValue(array:Dynamic, offset:Float) : Dynamic;
	function setValue(array:Dynamic, offset:Float) : Void;
	function bind() : Void;
	function unbind() : Void;
}

@:jsRequire("three")
@:native("THREE.PropertyBinding")
extern class PropertyBinding
{
	var path : String;
	var parsedPath : Dynamic;
	var node : Dynamic;
	var rootNode : Dynamic;
	var BindingType : Dynamic<Float>;
	var Versioning : Dynamic<Float>;
	var GetterByBindingType : Array<Void->Void>;
	var SetterByBindingTypeAndVersioning : Array<Array<Void->Void>>;

	function new(rootNode:Dynamic, path:String, ?parsedPath:Dynamic) : Void;
	function getValue(targetArray:Dynamic, offset:Float) : Dynamic;
	function setValue(sourceArray:Dynamic, offset:Float) : Void;
	function bind() : Void;
	function unbind() : Void;
	static function create(root:Dynamic, path:Dynamic, ?parsedPath:Dynamic) : haxe.extern.EitherType<PropertyBinding, Composite>;
	static function sanitizeNodeName(name:String) : String;
	static function parseTrackName(trackName:String) : ParseTrackNameResults;
	static function findNode(root:Dynamic, nodeName:String) : Dynamic;
}