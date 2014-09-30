package js.three;

@:native("THREE.Particle")
extern class Particle extends Object3D
{
	var material : Material;
	function new(material:Material) : Void;
	// override function clone(?object:Particle) : Particle;
}
