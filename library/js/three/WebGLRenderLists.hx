package js.three;

import js.html.*;

@:native("THREE.WebGLRenderLists")
extern class WebGLRenderLists
{
	function dispose() : Void;
	/**
	 * returns {<String> : <WebGLRenderList>}
	 */
	function get(scene:Scene, camera:Camera) : WebGLRenderList;
}