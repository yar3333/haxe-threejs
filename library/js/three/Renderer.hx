package js.three;

import js.html.*;

@:native("THREE.Renderer")
extern interface Renderer
{
	var domElement : HTMLCanvasElement;

	function render(scene:Scene, camera:Camera) : Void;
	function setSize(width:Float, height:Float, updateStyle:Bool) : Void;
}