package js.three;

import js.lib.*;

extern interface Renderer
{
	var domElement : HTMLCanvasElement;

	function render(scene:Object3D, camera:Camera) : Void;
	function setSize(width:Float, height:Float, ?updateStyle:Bool) : Void;
}