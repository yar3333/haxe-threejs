package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract AnimationActionLoopStyles(Int)
{
    var LoopOnce; // = 2200;
    var LoopRepeat; // = 2201;
    var LoopPingPong; // = 2202;
}