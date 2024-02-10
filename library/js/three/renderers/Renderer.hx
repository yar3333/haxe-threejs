package js.three.renderers;

import js.three.core.Object3D;
import js.three.cameras.Camera;

extern interface Renderer
{
	var domElement : js.html.CanvasElement;

	function render(scene:Object3D, camera:Camera) : Void;
	function setSize(width:Float, height:Float, ?updateStyle:Bool) : Void;
}