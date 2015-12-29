package js.three;

import js.html.*;

@:native("THREE.WebGLProgramsInstance")
extern class WebGLProgramsInstance
{
	function new(renderer:WebGLRenderer, capabilities:Dynamic) : Void;

	function getParameters(material:Dynamic, lights:Dynamic, fog:Dynamic, object:Dynamic) : Array<Dynamic>;
	function getProgramCode(material:Dynamic, parameters:Dynamic) : Dynamic;
	function acquireProgram(material:Dynamic, parameters:Dynamic, code:Dynamic) : Dynamic;
	function releaseProgram(program:Dynamic) : Void;
}