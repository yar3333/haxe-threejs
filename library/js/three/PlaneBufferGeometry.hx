package js.three;

import js.lib.*;

@:native("THREE.PlaneBufferGeometry")
extern class PlaneBufferGeometry extends BufferGeometry
{
	var parameters : { var width : Float; var height : Float; var widthSegments : Float; var heightSegments : Float; };

	@:overload(function(width:Float,height:Float,?widthSegments:Float,?heightSegments:Int):Void{})
	function new() : Void;
}