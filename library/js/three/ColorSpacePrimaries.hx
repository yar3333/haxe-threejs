package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract ColorSpacePrimaries(String)
{
    var Rec709Primaries; // = "rec709";
    var P3Primaries; // = "p3";
}