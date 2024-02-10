package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract DepthModes(Int)
{
    var NeverDepth; // = 0;
    var AlwaysDepth; // = 1;
    var LessDepth; // = 2;
    var LessEqualDepth; // = 3;
    var EqualDepth; // = 4;
    var GreaterEqualDepth; // = 5;
    var GreaterDepth; // = 6;
    var NotEqualDepth; // = 7;
}