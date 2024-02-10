package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract CoordinateSystem(Int)
{
    var WebGLCoordinateSystem; // = 2000;
    var WebGPUCoordinateSystem; // = 2001;
}