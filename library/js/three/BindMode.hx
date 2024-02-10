package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract BindMode(String)
{
    var AttachedBindMode; // = "attached";
    var DetachedBindMode; // = "detached";
}