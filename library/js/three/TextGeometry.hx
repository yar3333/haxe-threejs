package js.three;

import js.lib.*;

@:native("THREE.TextGeometry")
extern class TextGeometry extends ExtrudeGeometry
{
	var parameters : { var font : Font; var size : Float; var height : Float; var curveSegments : Float; var bevelEnabled : Bool; var bevelThickness : Float; var bevelSize : Float; var bevelSegments : Float; };

	@:overload(function(text:String,?parameters:TextGeometryParameters):Void{})
	function new() : Void;
}