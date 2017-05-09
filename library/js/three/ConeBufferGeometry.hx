package js.three;

import js.html.*;

@:native("THREE.ConeBufferGeometry")
extern class ConeBufferGeometry extends BufferGeometry
{
	function new(?radius:Float, ?height:Float, ?radialSegment:Float, ?heightSegment:Float, ?openEnded:Bool, ?thetaStart:Float, ?thetaLength:Float) : Void;
}