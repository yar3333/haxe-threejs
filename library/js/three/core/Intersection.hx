package js.three;

import js.lib.*;

extern interface Intersection<TIntersected:Object3D = Object3D>
{
	/**
	 * Distance between the origin of the ray and the intersection 
	 */
	var distance : Float;
	@:optional var distanceToRay : haxe.extern.EitherType<Float, {}>;
	/**
	 * Point of intersection, in world coordinates 
	 */
	var point : Vector3;
	@:optional var index : haxe.extern.EitherType<Float, {}>;
	/**
	 * Intersected face 
	 */
	@:optional var face : haxe.extern.EitherType<Face, {}>;
	/**
	 * Index of the intersected face 
	 */
	@:optional var faceIndex : haxe.extern.EitherType<Float, {}>;
	/**
	 * The intersected object 
	 */
	var object : TIntersected;
	@:optional var uv : haxe.extern.EitherType<Vector2, {}>;
	@:optional var uv1 : haxe.extern.EitherType<Vector2, {}>;
	@:optional var normal : Vector3;
	/**
	 * The index number of the instance where the ray intersects the {@link THREE.InstancedMesh | InstancedMesh } 
	 */
	@:optional var instanceId : haxe.extern.EitherType<Float, {}>;
	@:optional var pointOnLine : Vector3;
	@:optional var batchId : Float;
}