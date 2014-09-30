package js.three;

interface Renderer
{
	var domElement : js.html.Element;
	function setSize(w:Int, h:Int) : Void;
	// function render(scene:Scene, camera:Camera) : Void;
	// function render(scene:Scene, camera:Camera, ?renderTarget:WebGLRenderTarget, ?forceClear:Bool) : Void;
}
