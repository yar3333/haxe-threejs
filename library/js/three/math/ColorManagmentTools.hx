package js.three.math;

@:jsRequire("three")
@:native("THREE")
extern class ColorManagmentTools
{
    static function SRGBToLinear(c: Float): Float;
    static function LinearToSRGB(c: Float): Float;
}