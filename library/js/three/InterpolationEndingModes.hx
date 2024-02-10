package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract InterpolationEndingModes(Int)
{
    var ZeroCurvatureEnding; // = 2400;
    var ZeroSlopeEnding; // = 2401;
    var WrapAroundEnding; // = 2402;
}