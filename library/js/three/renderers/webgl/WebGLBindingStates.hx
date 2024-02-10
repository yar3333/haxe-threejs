package js.three.renderers.webgl;

import js.three.core.Object3D;
import js.three.materials.Material;
import js.three.core.BufferGeometry;
import js.three.core.BufferAttribute;

@:jsRequire("three", "WebGLBindingStates")
@:native("THREE.WebGLBindingStates")
extern class WebGLBindingStates
{
	function new(gl:js.html.webgl.RenderingContext, extensions:WebGLExtensions, attributes:WebGLAttributes, capabilities:WebGLCapabilities) : Void;
	function setup(object:Object3D, material:Material, program:WebGLProgram, geometry:BufferGeometry, index:BufferAttribute) : Void;
	function reset() : Void;
	function resetDefaultState() : Void;
	function dispose() : Void;
	function releaseStatesOfGeometry() : Void;
	function releaseStatesOfProgram() : Void;
	function initAttributes() : Void;
	function enableAttribute(attribute:Float) : Void;
	function disableUnusedAttributes() : Void;
}