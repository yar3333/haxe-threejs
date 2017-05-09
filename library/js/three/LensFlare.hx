package js.three;

import js.html.*;

@:native("THREE.LensFlare")
extern class LensFlare extends Object3D
{
	var lensFlares : Array<LensFlareProperty>;
	var positionScreen : Vector3;
	var customUpdateCallback : LensFlare->Void;

	function new(?texture:Texture, ?size:Float, ?distance:Float, ?blending:Blending, ?color:Color) : Void;
	function add(object:Object3D) : Void;
	function add(texture:Texture, size:Float, distance:Float, blending:Blending, color:Color) : Void;
	function updateLensFlares() : Void;
}