package js.three;

import js.lib.*;

@:native("THREE.ConeGeometry")
extern class ConeGeometry extends CylinderGeometry
{
	@:overload(function(?radius:Float,?height:Float,?radialSegment:Float,?heightSegment:Float,?openEnded:Bool,?thetaStart:Float,?thetaLength:Float):Void{})
	function new() : Void;
}