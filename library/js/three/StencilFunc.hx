package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract StencilFunc(Int)
{
    var NeverStencilFunc; // = 512;
    var LessStencilFunc; // = 513;
    var EqualStencilFunc; // = 514;
    var LessEqualStencilFunc; // = 515;
    var GreaterStencilFunc; // = 516;
    var NotEqualStencilFunc; // = 517;
    var GreaterEqualStencilFunc; // = 518;
    var AlwaysStencilFunc; // = 519;
}