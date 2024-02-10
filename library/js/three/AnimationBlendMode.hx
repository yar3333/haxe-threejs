package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract AnimationBlendMode(Int)
{
    var NormalAnimationBlendMode; // = 2500;
    var AdditiveAnimationBlendMode; // = 2501;
}