package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract Combine(Int)
{
    var MultiplyOperation; // = 0;
    var MixOperation; // = 1;
    var AddOperation; // = 2;
}