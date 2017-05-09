package js.three;

import js.html.*;

@:native("THREE.PlaneBufferGeometry")
extern class PlaneBufferGeometry extends BufferGeometry
{
	var parameters : { var width : Float; var height : Float; var widthSegments : Float; var heightSegments : Float; };

	function new(width:Float, height:Float, ?widthSegments:Float, ?heightSegments:Int) : Void;
}