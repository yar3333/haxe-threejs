package js.html;

import js.lib.BufferSource;

@:native("VideoFrame")
extern class VideoFrame
{
    @:overload(function(image: CanvasImageSource, ?init: VideoFrameInit) : VideoFrame {})
    function new(data: BufferSource, init: VideoFrameBufferInit) : Void;
}

interface VideoFrameBufferInit
{
    var codedHeight: Int;
    var codedWidth: Int;
    @:optional var colorSpace: VideoColorSpaceInit;
    @:optional var displayHeight: Int;
    @:optional var displayWidth: Int;
    @:optional var duration: Float;
    var format: VideoPixelFormat;
    @:optional var layout: Array<PlaneLayout>;
    var timestamp: Float;
    @:optional var visibleRect: DOMRectInit;
}

interface VideoColorSpaceInit
{
    @:optional var fullRange: Bool;
    @:optional var matrix: VideoMatrixCoefficients;
    @:optional var primaries: VideoColorPrimaries;
    @:optional var transfer: Dynamic; //VideoTransferCharacteristics;
}

enum abstract VideoPixelFormat(String)
{
    var BGRA = "BGRA";
    var BGRX = "BGRX";
    var I420 = "I420";
    var I420A = "I420A";
    var I422 = "I422";
    var I444 = "I444";
    var NV12 = "NV12";
    var RGBA = "RGBA";
    var RGBX = "RGBX";
}

interface PlaneLayout
{
    var offset: Int;
    var stride: Int;
}

interface DOMRectInit
{
    @:optional var height: Int;
    @:optional var width: Int;
    @:optional var x: Int;
    @:optional var y: Int;
}

enum abstract VideoMatrixCoefficients(String)
{
    var bt470bg = "bt470bg";
    var bt709 = "bt709";
    var rgb = "rgb";
    var smpte170m = "smpte170m";
}

enum abstract VideoColorPrimaries(String)
{
    var bt470bg = "bt470bg";
    var bt709 = "bt709";
    var smpte170m = "smpte170m";
}

interface VideoFrameInit
{
    @:optional var alpha: AlphaOption;
    @:optional var displayHeight: Int;
    @:optional var displayWidth: Int;
    @:optional var duration: Float;
    @:optional var timestamp: Float;
    @:optional var visibleRect: DOMRectInit;
}

enum abstract AlphaOption(String)
{
    var discard = "discard";
    var keep = "keep";
}
