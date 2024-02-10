package js.three.geometries;

import js.three.renderers.webgl.WebGLAttributes;
import js.three.renderers.webgl.WebGLInfo;
import js.three.core.BufferGeometry;
import js.three.core.Object3D;
import js.three.core.BufferAttribute;

@:jsRequire("three", "WebGLGeometries")
@:native("THREE.WebGLGeometries")
extern class WebGLGeometries
{
	function new(gl:js.html.webgl.RenderingContext, attributes:WebGLAttributes, info:WebGLInfo) : Void;
	function get(object:Object3D, geometry:BufferGeometry) : BufferGeometry;
	function update(geometry:BufferGeometry) : Void;
	function getWireframeAttribute(geometry:BufferGeometry) : BufferAttribute;
}