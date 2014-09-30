package js.three;

@:native("THREE.JSONLoader")
extern class JSONLoader extends Loader
{
	function new(?showStatus:Bool) : Void;
	function load(url:String, resultCallback:Geometry->Material->Void, ?texturePath:String) : Void;
}
