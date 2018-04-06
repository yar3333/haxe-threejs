package js.three;

import js.html.*;

extern interface LoaderHandler
{
	var handlers : Array<haxe.extern.EitherType<RegExp, AnyLoader>>;

	function add(regex:RegExp, loader:AnyLoader) : Void;
	function get(file:String) : AnyLoader;
}