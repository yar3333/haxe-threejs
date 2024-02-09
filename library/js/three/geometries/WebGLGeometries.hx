package js.three.geometries;

import js.lib.*;

@:native("THREE.WebGLGeometries")
extern class WebGLGeometries
{
	function new(gl:js.html.webgl.RenderingContext, attributes:WebGLAttributes, info:WebGLInfo) : Void;
	function get(object:Object3D, geometry:BufferGeometry) : BufferGeometry;
	function update(geometry:BufferGeometry) : Void;
	function getWireframeAttribute(geometry:BufferGeometry) : BufferAttribute;
}