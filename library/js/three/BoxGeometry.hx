package js.three;

import js.html.*;

/**
 * BoxGeometry is the quadrilateral primitive geometry class. It is typically used for creating a cube or irregular quadrilateral of the dimensions provided within the (optional) 'width', 'height', & 'depth' constructor arguments.
 */
@:native("THREE.BoxGeometry")
extern class BoxGeometry extends Geometry
{
	var parameters : { var width : Float; var height : Float; var depth : Float; var widthSegments : Float; var heightSegments : Float; var depthSegments : Float; };

	/**
	 * BoxGeometry is the quadrilateral primitive geometry class. It is typically used for creating a cube or irregular quadrilateral of the dimensions provided within the (optional) 'width', 'height', & 'depth' constructor arguments.
	 */
	@:overload(function(width:Float,height:Float,depth:Float,?widthSegments:Float,?heightSegments:Int,?depthSegments:Float):Void{})
	function new() : Void;
}