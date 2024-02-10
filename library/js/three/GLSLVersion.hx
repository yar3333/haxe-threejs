package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract GLSLVersion(String)
{
    var GLSL1; // = "100";
    var GLSL3; // = "300 es";
}