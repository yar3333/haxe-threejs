package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract Blending(Int)
{
    var NoBlending; // = 0;
    var NormalBlending; // = 1;
    var AdditiveBlending; // = 2;
    var SubtractiveBlending; // = 3;
    var MultiplyBlending; // = 4;
    var CustomBlending; // = 5;
}