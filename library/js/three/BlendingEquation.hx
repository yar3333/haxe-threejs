package js.three;

// custom blending equations
// (numbers start from 100 not to clash with other
// mappings to OpenGL constants defined in Texture.js)
@:jsRequire("three")
@:native("THREE")
extern enum abstract BlendingEquation(Int)
{
    var AddEquation; // = 100;
    var SubtractEquation; // = 101;
    var ReverseSubtractEquation; // = 102;
    var MinEquation; // = 103;
    var MaxEquation; // = 104;
}