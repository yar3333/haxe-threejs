package js.three.math;

@:jsRequire("three")
@:native("THREE")
extern enum abstract DefinedColorSpace(String)
{
    var SRGBColorSpace; // = "srgb";
    var LinearSRGBColorSpace; // = "srgb-linear";
    var DisplayP3ColorSpace; // = "display-p3";
    var LinearDisplayP3ColorSpace; // = "display-p3-linear";
}