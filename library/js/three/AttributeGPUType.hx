package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract AttributeGPUType(Int)
{
    var FloatType; // = 1015;
    var IntType; // = 1013;
}