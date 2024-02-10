package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract InterpolationModes(Int)
{
    var InterpolateDiscrete; // = 2300;
    var InterpolateLinear; // = 2301;
    var InterpolateSmooth; // = 2302;
}