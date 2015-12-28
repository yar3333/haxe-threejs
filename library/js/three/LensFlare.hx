package js.three;

import js.html.*;

@:native("THREE.LensFlare")
extern class LensFlare extends Object3D
{
	function new(?texture:Texture, ?size:Float, ?distance:Float, ?blending:Blending, ?color:Color) : Void;

	var lensFlares : Array<LensFlareProperty>;
	var positionScreen : Vector3;
	var customUpdateCallback : LensFlare->Void;

	@:overload(function(obj:Object3D):Void{})
	@:overload(function(texture:Texture,?size:Float,?distance:Float,?blending:Blending,?color:Color):Void{})
	override function add(object:Object3D) : Void;

	function updateLensFlares() : Void;

	@:overload(function():LensFlare{})
	override function clone(?recursive:Bool) : Object3D;
	@:overload(function(source:LensFlare):LensFlare{})
	override function copy(source:Object3D, ?recursive:Bool) : Object3D;
}