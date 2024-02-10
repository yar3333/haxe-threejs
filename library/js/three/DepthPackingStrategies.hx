package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract DepthPackingStrategies(Int)
{
    var BasicDepthPacking; // = 3200;
    var RGBADepthPacking; // = 3201;
}