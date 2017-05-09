package js.three;

import js.html.*;

@:native("THREE.CSS3DRenderer")
extern class CSS3DRenderer
{
	var domElement : HTMLElement;

	function new() : Void;
	function setSize(width:Float, height:Float) : Void;
	function render(scene:Scene, camera:Camera) : Void;
}