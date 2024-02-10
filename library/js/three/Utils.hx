package js.three;

@:jsRequire("three")
@:native("THREE")
extern class Utils
{
    static function createCanvasElement() : js.html.CanvasElement;
}