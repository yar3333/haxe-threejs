package js.three.math;

@:jsRequire("three")
@:native("THREE")
extern enum abstract WorkingColorSpace(String)
{
    var LinearSRGBColorSpace; // = "srgb-linear";
    var LinearDisplayP3ColorSpace; // = "display-p3-linear";
}