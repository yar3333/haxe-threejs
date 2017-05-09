package js.three;

import js.html.*;

@:native("THREE.LoaderHandler")
extern interface LoaderHandler
{
	var handlers : Array<haxe.extern.EitherType<RegExp, Loader>>;

	function add(regex:RegExp, loader:Loader) : Void;
	function get(file:String) : Loader;
}