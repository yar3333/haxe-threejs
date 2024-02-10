package js.three;

// https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.button
@:jsRequire("three")
@:native("THREE")
extern enum abstract MOUSE(Int)
{
    var LEFT; // = 0;
    var MIDDLE; // = 1;
    var RIGHT; // = 2;
    var ROTATE; // = 0;
    var DOLLY; // = 1;
    var PAN; // = 2;
}