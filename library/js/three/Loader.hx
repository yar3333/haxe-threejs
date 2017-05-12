package js.three;

import js.html.*;

/**
 * Base class for implementing loaders.
 * 
 * Events:
 *     load
 *         Dispatched when the image has completed loading
 *         content — loaded image
 * 
 *     error
 * 
 *          Dispatched when the image can't be loaded
 *          message — error message
 */
@:native("THREE.Loader")
extern class Loader
{
	/**
	 * Will be called when load starts.
	 * The default is a function with empty body.
	 */
	var onLoadStart : Void->Void;
	/**
	 * Will be called while load progresses.
	 * The default is a function with empty body.
	 */
	var onLoadProgress : Void->Void;
	/**
	 * Will be called when load completes.
	 * The default is a function with empty body.
	 */
	var onLoadComplete : Void->Void;
	/**
	 * default — null.
	 * If set, assigns the crossOrigin attribute of the image to the value of crossOrigin, prior to starting the load.
	 */
	var crossOrigin : String;
	var Handlers : LoaderHandler;

	/**
	 * Base class for implementing loaders.
	 * 
	 * Events:
	 *     load
	 *         Dispatched when the image has completed loading
	 *         content — loaded image
	 * 
	 *     error
	 * 
	 *          Dispatched when the image can't be loaded
	 *          message — error message
	 */
	function new() : Void;
	function extractUrlBase(url:String) : String;
	function initMaterials(materials:Array<Material>, texturePath:String) : Array<Material>;
	function createMaterial(m:Material, texturePath:String, ?crossOrigin:String) : Bool;
}