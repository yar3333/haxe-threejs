package js;

import js.html.*;

@:native("THREE")
extern class Three
{
	static var AWDLoader : Dynamic;
	static var FlyControls : Dynamic;
	static var BloomPass : Dynamic;
	static var DotScreenShader : Shader;
	static var RGBShiftShader : Shader;
	static var FXAAShader : Shader;
}