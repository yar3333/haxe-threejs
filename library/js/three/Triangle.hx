package js.three;

@:native("THREE.Triangle")
extern class Triangle
{
	var a : Vector3;
	var b : Vector3;
	var c : Vector3;
	function new(?a:Vector3, ?b:Vector3, ?c:Vector3) : Void;
	// "Same field name can't be use for both static and instance : normal"
	// static function normal(a:Vector3, b:Vector3, c:Vector3, ?optionalTarget:Vector3) : Vector3;
	// "Same field name can't be use for both static and instance : barycoordFromPo"
	// static function barycoordFromPoint(point:Vector3, a:Vector3, b:Vector3, c:Vector3, ?optionalTarget:Vector3) : Vector3;
	// "Same field name can't be use for both static and instance : containsPoint"
	// static function containsPoint(point:Vector3, a:Vector3, b:Vector3, c:Vector3) : Bool;
	function set(a:Vector3, b:Vector3, c:Vector3) : Triangle;
	function setFromPointsAndIndices(points:Array<Vector3>, i0:Int, i1:Int, i2:Int) : Triangle;
	function copy(triangle:Triangle) : Triangle;
	function area() : Float;
	function midpoint(?optionalTarget:Vector3) : Vector3;
	function normal(?optionalTarget:Vector3) : Vector3;
	function plane(?optionalTarget:Plane) : Plane;
	function barycoordFromPoint(point:Vector3, ?optionalTarget:Vector3) : Vector3;
	function containsPoint(point:Vector3) : Bool;
	function equals(triangle:Triangle) : Bool;
	function clone() : Triangle;
}
