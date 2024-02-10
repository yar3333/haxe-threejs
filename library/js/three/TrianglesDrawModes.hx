package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract TrianglesDrawModes(Int)
{
    var TrianglesDrawMode; // = 0;
    var TriangleStripDrawMode; // = 1;
    var TriangleFanDrawMode; // = 2;
}