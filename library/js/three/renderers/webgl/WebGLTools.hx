package js.three.renderers.webgl;

import js.three.core.UniformsGroup;
import js.html.webgl.Shader;

@:jsRequire("three")
@:native("THREE")
extern class WebGLTools
{
	static function WebGLShader(gl:js.html.webgl.RenderingContext, type:String, string:String) : Shader;
    
    static function WebGLUniformsGroups
    (
        gl : js.html.webgl.RenderingContext, 
        info : WebGLInfo, 
        capabilities : WebGLCapabilities, 
        state : WebGLState
    ) : { 
        var dispose : Void->Void; 
        var update : UniformsGroup->WebGLProgram->Void; 
        var bind : UniformsGroup->WebGLProgram->Void; 
    };
}