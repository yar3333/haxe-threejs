package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract CullFace(Int)
{
    var CullFaceNone; // = 0;
    var CullFaceBack; // = 1;
    var CullFaceFront; // = 2;
    var CullFaceFrontBack; // = 3;
}