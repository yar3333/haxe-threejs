package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract ColorSpace(String)
{
    var NoColorSpace; // = "";
    var SRGBColorSpace; // = "srgb";
    var LinearSRGBColorSpace; // = "srgb-linear";
    var DisplayP3ColorSpace; // = "display-p3";
    var LinearDisplayP3ColorSpace; // = "display-p3-linear";
}