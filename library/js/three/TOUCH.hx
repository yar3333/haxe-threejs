package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract TOUCH(Int)
{
    var ROTATE; // = 0;
    var PAN; // = 1;
    var DOLLY_PAN; // = 2;
    var DOLLY_ROTATE; // = 3;
}