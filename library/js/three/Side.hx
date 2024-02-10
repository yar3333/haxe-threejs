package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract Side(Int)
{
    var FrontSide; // = 0;
    var BackSide; // = 1;
    var DoubleSide; // = 2;
}