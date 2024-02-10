package js.three.renderers.webgl;

/**
 * An object with a series of statistical information about the graphics board memory and the rendering process.
 */
@:native("THREE.WebGLInfo")
extern class WebGLInfo
{
	/**
	 * @default true
	 */
	var autoReset : Bool;
	/**
	 * @default { geometries: 0, textures: 0 }
	 */
	var memory : { var geometries : Float; var textures : Float; };
	/**
	 * @default null
	 */
	var programs : Array<WebGLProgram>;
	/**
	 * @default { frame: 0, calls: 0, triangles: 0, points: 0, lines: 0 }
	 */
	var render : { var calls : Float; var frame : Float; var lines : Float; var points : Float; var triangles : Float; };

	/**
	 * An object with a series of statistical information about the graphics board memory and the rendering process.
	 */
	function new(gl:js.html.webgl.RenderingContext) : Void;
	function update(count:Int, mode:Float, instanceCount:Float) : Void;
	function reset() : Void;
}