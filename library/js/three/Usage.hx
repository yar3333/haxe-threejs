package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract Usage(Int)
{
    var StaticDrawUsage; // = 35044;
    var DynamicDrawUsage; // = 35048;
    var StreamDrawUsage; // = 35040;
    var StaticReadUsage; // = 35045;
    var DynamicReadUsage; // = 35049;
    var StreamReadUsage; // = 35041;
    var StaticCopyUsage; // = 35046;
    var DynamicCopyUsage; // = 35050;
    var StreamCopyUsage; // = 35042;
}