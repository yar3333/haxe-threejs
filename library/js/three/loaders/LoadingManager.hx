package js.three.loaders;

import js.lib.*;

/**
 * Handles and keeps track of loaded and pending data.
 */
@:native("THREE.LoadingManager")
extern class LoadingManager
{
	/**
	 * Will be called when loading of an item starts.
	 */
	@:optional var onStart : haxe.extern.EitherType<(String->Float->Float->Void), {}>;
	/**
	 * Will be called when all items finish loading.
	 * The default is a function with empty body.
	 */
	var onLoad : Void->Void;
	/**
	 * Will be called for each loaded item.
	 * The default is a function with empty body.
	 */
	var onProgress : String->Float->Float->Void;
	/**
	 * Will be called when item loading fails.
	 * The default is a function with empty body.
	 */
	var onError : String->Void;

	/**
	 * Handles and keeps track of loaded and pending data.
	 */
	function new(?onLoad:Void->Void, ?onProgress:String->Float->Float->Void, ?onError:String->Void) : Void;
	/**
	 * If provided, the callback will be passed each resource URL before a request is sent.
	 * The callback may return the original URL, or a new URL to override loading behavior.
	 * This behavior can be used to load assets from .ZIP files, drag-and-drop APIs, and Data URIs.
	 */
	function setURLModifier(?callback:String->String) : LoadingManager;
	/**
	 * Given a URL, uses the URL modifier callback (if any) and returns a resolved URL.
	 * If no URL modifier is set, returns the original URL.
	 */
	function resolveURL(url:String) : String;
	function itemStart(url:String) : Void;
	function itemEnd(url:String) : Void;
	function itemError(url:String) : Void;
	function addHandler(regex:RegExp, loader:Loader) : LoadingManager;
	function removeHandler(regex:RegExp) : LoadingManager;
	function getHandler(file:String) : Loader;
}