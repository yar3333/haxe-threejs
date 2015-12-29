package js.three;

import js.html.*;
import js.three.Projector;

@:native("THREE.CanvasRenderer")
extern class CanvasRenderer implements Renderer
{
	#if !noEmbedJS
	static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/three/CanvasRenderer.js");
	}
	#end
	
	function new(?parameters:CanvasRendererParameters) : Void;

	var domElement : js.html.CanvasElement;
	var autoClear : Bool;
	var sortObjects : Bool;
	var sortElements : Bool;
	var info : { render: { vertices: Int, faces:Int } };

	function supportsVertexTextures() : Void;
	function setFaceCulling() : Void;
	function getPixelRatio() : Float;
	function setPixelRatio(value:Float) : Void;
	@:overload(function(width:Int,height:Int,?updateStyle:Bool):Void{})
	function setSize(width:Float, height:Float, ?updateStyle:Bool) : Void;
	function setViewport(x:Float, y:Float, width:Int, height:Int) : Void;
	function setScissor() : Void;
	function enableScissorTest() : Void;
	@:overload(function(color:String, ?opacity:Float):Void{})
	@:overload(function(color:Int, ?opacity:Float):Void{})
	function setClearColor(color:Color, ?opacity:Float) : Void;
	function setClearColorHex(hex:Int, ?alpha:Float) : Void;
	function getClearColor() : Color;
	function getClearAlpha() : Float;
	function getMaxAnisotropy() : Int;
	function clear() : Void;
	function clearColor() : Void;
	function clearDepth() : Void;
	function clearStencil() : Void;
	function render(scene:Scene, camera:Camera) : Void;
}