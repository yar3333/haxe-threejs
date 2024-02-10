package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract StencilOp(Int)
{
    var ZeroStencilOp; // = 0;
    var KeepStencilOp; // = 7680;
    var ReplaceStencilOp; // = 7681;
    var IncrementStencilOp; // = 7682;
    var DecrementStencilOp; // = 7283;
    var IncrementWrapStencilOp; // = 34055;
    var DecrementWrapStencilOp; // = 34056;
    var InvertStencilOp; // = 5386;
}