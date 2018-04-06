package js.three;

import js.html.*;

@:native("THREE.TextBufferGeometry")
extern class TextBufferGeometry extends ExtrudeBufferGeometry
{
	var parameters : { var font : Font; var size : Float; var height : Float; var curveSegments : Float; var bevelEnabled : Bool; var bevelThickness : Float; var bevelSize : Float; var bevelSegments : Float; };

	@:overload(function(text:String,?parameters:TextGeometryParameters):Void{})
	function new() : Void;
}