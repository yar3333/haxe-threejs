package js.three;

import js.lib.*;

@:native("THREE.ColladaModel")
extern class ColladaModel
{
	var animations : Array<Dynamic>;
	var kinematics : Dynamic;
	var scene : Scene;
	var library : Dynamic;
}