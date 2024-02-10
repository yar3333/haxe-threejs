package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract ShadowMapType(Int)
{
    var BasicShadowMap; // = 0;
    var PCFShadowMap; // = 1;
    var PCFSoftShadowMap; // = 2;
    var VSMShadowMap; // = 3;
}