package js.three.animation;

@:jsRequire("three")
@:native("THREE")
extern class AnimationUtils
{
    static function convertArray(array:Dynamic, type:Dynamic, forceClone:Bool) : Dynamic;
	static function isTypedArray(object:Dynamic) : Bool;
	static function getKeyframeOrder(times:Array<Float>) : Array<Float>;
	static function sortedArray(values:Array<Dynamic>, stride:Float, order:Array<Float>) : Array<Dynamic>;
	static function flattenJSON(jsonKeys:Array<String>, times:Array<Dynamic>, values:Array<Dynamic>, valuePropertyName:String) : Void;
	
    static function subclip(sourceClip:AnimationClip, name:String, startFrame:Float, endFrame:Float, fps:Float) : AnimationClip;
	static function makeClipAdditive(targetClip:AnimationClip, referenceFrame:Float, referenceClip:AnimationClip, fps:Float) : AnimationClip;
}