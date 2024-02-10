package js.three.animation;

@:native("THREE.AnimationObjectGroup")
extern class AnimationObjectGroup
{
	var uuid : String;
	var stats : { var bindingsPerObject : Float; var objects : { var total : Float; var inUse : Float; }; };
	var isAnimationObjectGroup(default, null) : Bool;

	function new(args:Dynamic) : Void;
	function add(args:Dynamic) : Void;
	function remove(args:Dynamic) : Void;
	function uncache(args:Dynamic) : Void;
}