package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract BlendingSrcFactor(Int)
{
    var ZeroFactor; // = 200;
    var OneFactor; // = 201;
    var SrcColorFactor; // = 202;
    var OneMinusSrcColorFactor; // = 203;
    var SrcAlphaFactor; // = 204;
    var OneMinusSrcAlphaFactor; // = 205;
    var DstAlphaFactor; // = 206;
    var OneMinusDstAlphaFactor; // = 207;
    var DstColorFactor; // = 208;
    var OneMinusDstColorFactor; // = 209;
    var SrcAlphaSaturateFactor; // = 210;
    var ConstantColorFactor; // = 211;
    var OneMinusConstantColorFactor; // = 212;
    var ConstantAlphaFactor; // = 213;
    var OneMinusConstantAlphaFactor; // = 214;
}