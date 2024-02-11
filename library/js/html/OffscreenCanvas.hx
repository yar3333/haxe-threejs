package js.html;

import js.lib.Promise;
import js.html.webgl.OffscreenRenderingContext;
import js.html.webgl.OffscreenRenderingContextId;

/** [MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas) */
@:native("OffscreenCanvas")
extern class OffscreenCanvas extends EventTarget 
{
    /**
     * These attributes return the dimensions of the OffscreenCanvas object's bitmap.
     *
     * They can be set, to replace the bitmap with a new, transparent black bitmap of the specified dimensions (effectively resizing it).
     *
     * [MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/height)
     */
    var height : Int;
    var oncontextlost : OffscreenCanvas->Event->Dynamic;
    var oncontextrestored : OffscreenCanvas->Event->Dynamic;
    /**
     * These attributes return the dimensions of the OffscreenCanvas object's bitmap.
     *
     * They can be set, to replace the bitmap with a new, transparent black bitmap of the specified dimensions (effectively resizing it).
     *
     * [MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/width)
     */
    var width : Int;
    
    function new(width: Int, height: Int): Void;
    
    /**
     * Returns a promise that will fulfill with a new Blob object representing a file containing the image in the OffscreenCanvas object.
     *
     * The argument, if provided, is a dictionary that controls the encoding options of the image file to be created. The type field specifies the file format and has a default value of "image/png"; that type is also used if the requested type isn't supported. If the image format supports variable quality (such as "image/jpeg"), then the quality field is a number in the range 0.0 to 1.0 inclusive indicating the desired quality level for the resulting image.
     *
     * [MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/convertToBlob)
     */
    function convertToBlob(?options:ImageEncodeOptions): Promise<Blob>;
    /**
     * Returns an object that exposes an API for drawing on the OffscreenCanvas object. contextId specifies the desired API: "2d", "bitmaprenderer", "webgl", or "webgl2". options is handled by that API.
     *
     * This specification defines the "2d" context below, which is similar but distinct from the "2d" context that is created from a canvas element. The WebGL specifications define the "webgl" and "webgl2" contexts. [WEBGL]
     *
     * Returns null if the canvas has already been initialized with another context type (e.g., trying to get a "2d" context after getting a "webgl" context).
     *
     * [MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/getContext)
     */
    //inline function getContext_2d(?options:Dynamic): OffscreenCanvasRenderingContext2D return getContext("2d", options);
    //inline function getContext_bitmaprenderer(?options:Dynamic): ImageBitmapRenderingContext return getContext("bitmaprenderer", options);
    //inline function getContext_webgl(?options:Dynamic): js.html.webgl.RenderingContext return getContext("webgl", options);
    //inline function getContext_webgl2(?options:Dynamic): WebGL2RenderingContext return getContext("webgl2", options);
    function getContext(contextId: OffscreenRenderingContextId, ?options:Dynamic): OffscreenRenderingContext;
    /**
     * Returns a newly created ImageBitmap object with the image in the OffscreenCanvas object. The image in the OffscreenCanvas object is replaced with a new blank image.
     *
     * [MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/transferToImageBitmap)
     */
    function transferToImageBitmap(): ImageBitmap;
    
    //function addEventListener<K extends keyof OffscreenCanvasEventMap>(type: K, listener: (this: OffscreenCanvas, ev: OffscreenCanvasEventMap[K]) => any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>): Void;
    function addEventListener(type: String, listener: EventListenerOrEventListenerObject, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>): Void;
    
    //function removeEventListener<K extends keyof OffscreenCanvasEventMap>(type: K, listener: (this: OffscreenCanvas, ev: OffscreenCanvasEventMap[K]) => any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>): Void;
    function removeEventListener(type: String, listener: EventListenerOrEventListenerObject, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>): Void;
}
