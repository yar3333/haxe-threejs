package js.three;

import js.lib.*;

extern interface UVGenerator
{
	function generateTopUV(geometry:ExtrudeGeometry, vertices:Array<Float>, indexA:Float, indexB:Float, indexC:Float) : Array<Vector2>;
	function generateSideWallUV(geometry:ExtrudeGeometry, vertices:Array<Float>, indexA:Float, indexB:Float, indexC:Float, indexD:Float) : Array<Vector2>;
}