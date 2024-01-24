package js.three;

import js.lib.*;

extern interface Renderer
{
	var domElement : js.html.CanvasElement;

	function render(scene:Scene, camera:Camera) : Void;
	function setSize(width:Float, height:Float, ?updateStyle:Bool) : Void;
}