package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract NormalMapTypes(Int)
{
    var TangentSpaceNormalMap; // = 0;
    var ObjectSpaceNormalMap; // = 1;
}