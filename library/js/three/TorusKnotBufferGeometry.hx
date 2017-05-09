package js.three;

import js.html.*;

@:native("THREE.TorusKnotBufferGeometry")
extern class TorusKnotBufferGeometry extends BufferGeometry
{
	var parameters : { var radius : Float; var tube : Float; var radialSegments : Float; var tubularSegments : Float; var p : Float; var q : Float; var heightScale : Float; };

	function new(?radius:Float, ?tube:Float, ?radialSegments:Int, ?tubularSegments:Float, ?p:Float, ?q:Float, ?heightScale:Float) : Void;
}