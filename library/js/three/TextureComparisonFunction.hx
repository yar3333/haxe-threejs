package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract TextureComparisonFunction(Int)
{
    var NeverCompare; // = 512;
    var LessCompare; // = 513;
    var EqualCompare; // = 514;
    var LessEqualCompare; // = 515;
    var GreaterCompare; // = 516;
    var NotEqualCompare; // = 517;
    var GreaterEqualCompare; // = 518;
    var AlwaysCompare; // = 519;
}