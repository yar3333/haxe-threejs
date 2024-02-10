package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract ColorSpaceTransfer(String)
{
    var LinearTransfer; // = "linear";
    var SRGBTransfer; // = "srgb";
}