package js.three.renderers;

import js.lib.Set;
import js.lib.Promise;
import js.html.webgl.WebGL2RenderingContext;
import js.three.Constants;
import js.three.renderers.webgl.WebGLExtensions;
import js.three.renderers.webgl.WebGLInfo;
import js.three.renderers.webgl.WebGLShadowMap;
import js.three.renderers.webgl.WebGLCapabilities;
import js.three.renderers.webgl.WebGLProperties;
import js.three.renderers.webgl.WebGLRenderLists;
import js.three.renderers.webgl.WebGLState;
import js.three.materials.Material;
import js.three.core.Object3D;
import js.three.cameras.Camera;
import js.three.scenes.Scene;
import js.three.math.Vector2;
import js.three.math.Vector4;
import js.three.math.Color;
import js.three.math.ColorRepresentation;
import js.three.core.BufferGeometry;
import js.three.textures.Texture;
import js.three.math.Box3;
import js.three.math.Vector3;
import js.three.textures.Data3DTexture;
import js.three.textures.DataArrayTexture;

/**
 * The WebGL renderer displays your beautifully crafted scenes using WebGL, if your device supports it.
 * This renderer has way better performance than CanvasRenderer.
 * 
 * see {@link https://github.com/mrdoob/three.js/blob/master/src/renderers/WebGLRenderer.js|src/renderers/WebGLRenderer.js}
 */
@:jsRequire("three")
@:native("THREE.WebGLRenderer")
extern class WebGLRenderer
	implements Renderer
{
	/**
	 * A Canvas where the renderer draws its output.
	 * This is automatically created by the renderer in the constructor (if not provided already); you just need to add it to your page.
	 * @default document.createElementNS( 'http://www.w3.org/1999/xhtml', 'canvas' )
	 */
	var domElement : js.html.CanvasElement;
	/**
	 * Defines whether the renderer should automatically clear its output before rendering.
	 * @default true
	 */
	var autoClear : Bool;
	/**
	 * If autoClear is true, defines whether the renderer should clear the color buffer. Default is true.
	 * @default true
	 */
	var autoClearColor : Bool;
	/**
	 * If autoClear is true, defines whether the renderer should clear the depth buffer. Default is true.
	 * @default true
	 */
	var autoClearDepth : Bool;
	/**
	 * If autoClear is true, defines whether the renderer should clear the stencil buffer. Default is true.
	 * @default true
	 */
	var autoClearStencil : Bool;
	/**
	 * Debug configurations.
	 * @default { checkShaderErrors: true }
	 */
	var debug : WebGLDebug;
	/**
	 * Defines whether the renderer should sort objects. Default is true.
	 * @default true
	 */
	var sortObjects : Bool;
	/**
	 * @default []
	 */
	final clippingPlanes : Array<Dynamic>;
	/**
	 * @default false
	 */
	var localClippingEnabled : Bool;
	var extensions : WebGLExtensions;
	/**
	 * Default is LinearEncoding.
	 * @default THREE.LinearEncoding
	 * @deprecated Use {@link WebGLRenderer.outputColorSpace .outputColorSpace} in three.js r152+.
	 */
	var outputEncoding : TextureEncoding;
	/**
	 * @deprecated Migrate your lighting according to the following guide:
	 * https://discourse.threejs.org/t/updates-to-lighting-in-three-js-r155/53733.
	 * @default true
	 */
	var useLegacyLights : Bool;
	/**
	 * @default THREE.NoToneMapping
	 */
	var toneMapping : ToneMapping;
	/**
	 * @default 1
	 */
	var toneMappingExposure : Float;
	var info : WebGLInfo;
	var shadowMap : WebGLShadowMap;
	var pixelRatio : Float;
	var capabilities : WebGLCapabilities;
	var properties : WebGLProperties;
	var renderLists : WebGLRenderLists;
	var state : WebGLState;
	//var xr : WebXRManager;
	/**
	 * Compiles all materials in the scene with the camera. This is useful to precompile shaders before the first
	 * rendering. If you want to add a 3D object to an existing scene, use the third optional parameter for applying the
	 * target scene.
	 * Note that the (target) scene's lighting should be configured before calling this method.
	 */
	var compile : Object3D->Camera->Scene->Set<Material>;
	/**
	 * Asynchronous version of {@link compile}(). The method returns a Promise that resolves when the given scene can be
	 * rendered without unnecessary stalling due to shader compilation.
	 * This method makes use of the KHR_parallel_shader_compile WebGL extension.
	 */
	var compileAsync : Object3D->Camera->Scene->Promise<Object3D>;
	/**
	 * @deprecated Use {@link WebGLRenderer#xr .xr} instead.
	 */
	var vr : Bool;
	/**
	 * @deprecated Use {@link WebGLShadowMap#enabled .shadowMap.enabled} instead.
	 */
	var shadowMapEnabled : Bool;
	/**
	 * @deprecated Use {@link WebGLShadowMap#type .shadowMap.type} instead.
	 */
	var shadowMapType : ShadowMapType;
	/**
	 * @deprecated Use {@link WebGLShadowMap#cullFace .shadowMap.cullFace} instead.
	 */
	var shadowMapCullFace : CullFace;

	/**
	 * The WebGL renderer displays your beautifully crafted scenes using WebGL, if your device supports it.
	 * This renderer has way better performance than CanvasRenderer.
	 * 
	 * see {@link https://github.com/mrdoob/three.js/blob/master/src/renderers/WebGLRenderer.js|src/renderers/WebGLRenderer.js}
	 */
	function new(?parameters:WebGLRendererParameters) : Void;
	/**
	 * Return the WebGL context.
	 */
	function getContext() : haxe.extern.EitherType<js.html.webgl.RenderingContext, WebGL2RenderingContext>;
	function getContextAttributes() : Dynamic;
	function forceContextLoss() : Void;
	function forceContextRestore() : Void;
	/**
	 * @deprecated Use {@link WebGLCapabilities#getMaxAnisotropy .capabilities.getMaxAnisotropy()} instead.
	 */
	function getMaxAnisotropy() : Int;
	/**
	 * @deprecated Use {@link WebGLCapabilities#precision .capabilities.precision} instead.
	 */
	function getPrecision() : String;
	function getPixelRatio() : Float;
	function setPixelRatio(value:Float) : Void;
	function getDrawingBufferSize(target:Vector2) : Vector2;
	function setDrawingBufferSize(width:Float, height:Float, pixelRatio:Float) : Void;
	function getSize(target:Vector2) : Vector2;
	/**
	 * Resizes the output canvas to (width, height), and also sets the viewport to fit that size, starting in (0, 0).
	 */
	function setSize(width:Float, height:Float, ?updateStyle:Bool) : Void;
	function getCurrentViewport(target:Vector4) : Vector4;
	/**
	 * Copies the viewport into target.
	 */
	function getViewport(target:Vector4) : Vector4;
	/**
	 * Sets the viewport to render from (x, y) to (x + width, y + height).
	 * (x, y) is the lower-left corner of the region.
	 */
	function setViewport(x:haxe.extern.EitherType<Vector4, Float>, ?y:Float, ?width:Float, ?height:Float) : Void;
	/**
	 * Copies the scissor area into target.
	 */
	function getScissor(target:Vector4) : Vector4;
	/**
	 * Sets the scissor area from (x, y) to (x + width, y + height).
	 */
	function setScissor(x:haxe.extern.EitherType<Vector4, Float>, ?y:Float, ?width:Float, ?height:Float) : Void;
	/**
	 * Returns true if scissor test is enabled; returns false otherwise.
	 */
	function getScissorTest() : Bool;
	/**
	 * Enable the scissor test. When this is enabled, only the pixels within the defined scissor area will be affected by further renderer actions.
	 */
	function setScissorTest(enable:Bool) : Void;
	/**
	 * Sets the custom opaque sort function for the WebGLRenderLists. Pass null to use the default painterSortStable function.
	 */
	function setOpaqueSort(method:Dynamic->Dynamic->Float) : Void;
	/**
	 * Sets the custom transparent sort function for the WebGLRenderLists. Pass null to use the default reversePainterSortStable function.
	 */
	function setTransparentSort(method:Dynamic->Dynamic->Float) : Void;
	/**
	 * Returns a THREE.Color instance with the current clear color.
	 */
	function getClearColor(target:Color) : Color;
	/**
	 * Sets the clear color, using color for the color and alpha for the opacity.
	 */
	function setClearColor(color:ColorRepresentation, ?alpha:Float) : Void;
	/**
	 * Returns a float with the current clear alpha. Ranges from 0 to 1.
	 */
	function getClearAlpha() : Float;
	function setClearAlpha(alpha:Float) : Void;
	/**
	 * Tells the renderer to clear its color, depth or stencil drawing buffer(s).
	 * Arguments default to true
	 */
	function clear(?color:Bool, ?depth:Bool, ?stencil:Bool) : Void;
	function clearColor() : Void;
	function clearDepth() : Void;
	function clearStencil() : Void;
	function clearTarget(renderTarget:WebGLRenderTarget, color:Bool, depth:Bool, stencil:Bool) : Void;
	/**
	 * @deprecated Use {@link WebGLState#reset .state.reset()} instead.
	 */
	function resetGLState() : Void;
	function dispose() : Void;
	function renderBufferDirect(camera:Camera, scene:Scene, geometry:BufferGeometry, material:Material, object:Object3D, geometryGroup:Dynamic) : Void;
	
    /**
	 * A build in function that can be used instead of requestAnimationFrame. For WebXR projects this function must be used.
	 */
	//function setAnimationLoop(callback:XRFrameRequestCallback) : Void;
	
    /**
	 * @deprecated Use {@link WebGLRenderer#setAnimationLoop .setAnimationLoop()} instead.
	 */
	function animate(callback:Void->Void) : Void;
	/**
	 * Render a scene or an object using a camera.
	 * The render is done to a previously specified {@link WebGLRenderTarget#renderTarget .renderTarget} set by calling
	 * {@link WebGLRenderer#setRenderTarget .setRenderTarget} or to the canvas as usual.
	 * 
	 * By default render buffers are cleared before rendering but you can prevent this by setting the property
	 * {@link WebGLRenderer#autoClear autoClear} to false. If you want to prevent only certain buffers being cleared
	 * you can set either the {@link WebGLRenderer#autoClearColor autoClearColor},
	 * {@link WebGLRenderer#autoClearStencil autoClearStencil} or {@link WebGLRenderer#autoClearDepth autoClearDepth}
	 * properties to false. To forcibly clear one ore more buffers call {@link WebGLRenderer#clear .clear}.
	 */
	function render(scene:Object3D, camera:Camera) : Void;
	/**
	 * Returns the current active cube face.
	 */
	function getActiveCubeFace() : Float;
	/**
	 * Returns the current active mipmap level.
	 */
	function getActiveMipmapLevel() : Float;
	/**
	 * Returns the current render target. If no render target is set, null is returned.
	 */
	function getRenderTarget() : WebGLRenderTarget;
	/**
	 * @deprecated Use {@link WebGLRenderer#getRenderTarget .getRenderTarget()} instead.
	 */
	function getCurrentRenderTarget() : WebGLRenderTarget;
	/**
	 * Sets the active render target.
	 * 
	 * @link WebGLRenderTarget renderTarget} that needs to be activated. When `null` is given, the canvas is set as the active render target instead.
	 * @link WebGLCubeRenderTarget}.
	 */
	function setRenderTarget(renderTarget:haxe.extern.EitherType<WebGLRenderTarget, WebGLMultipleRenderTargets>, ?activeCubeFace:Float, ?activeMipmapLevel:Float) : Void;
	function readRenderTargetPixels(renderTarget:haxe.extern.EitherType<WebGLRenderTarget, WebGLMultipleRenderTargets>, x:Float, y:Float, width:Float, height:Float, buffer:Dynamic, ?activeCubeFaceIndex:Float) : Void;
	/**
	 * Copies a region of the currently bound framebuffer into the selected mipmap level of the selected texture.
	 * This region is defined by the size of the destination texture's mip level, offset by the input position.
	 */
	function copyFramebufferToTexture(position:Vector2, texture:Texture, ?level:Float) : Void;
	/**
	 * Copies srcTexture to the specified level of dstTexture, offset by the input position.
	 */
	function copyTextureToTexture(position:Vector2, srcTexture:Texture, dstTexture:Texture, ?level:Float) : Void;
	/**
	 * Copies the pixels of a texture in the bounds sourceBox in the desination texture starting from the given position.
	 */
	function copyTextureToTexture3D(sourceBox:Box3, position:Vector3, srcTexture:Texture, dstTexture:haxe.extern.EitherType<Data3DTexture, DataArrayTexture>, ?level:Float) : Void;
	/**
	 * Initializes the given texture. Can be used to preload a texture rather than waiting until first render (which can cause noticeable lags due to decode and GPU upload overhead).
	 */
	function initTexture(texture:Texture) : Void;
	/**
	 * Can be used to reset the internal WebGL state.
	 */
	function resetState() : Void;
	/**
	 * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'OES_texture_float' )} instead.
	 */
	function supportsFloatTextures() : Dynamic;
	/**
	 * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'OES_texture_half_float' )} instead.
	 */
	function supportsHalfFloatTextures() : Dynamic;
	/**
	 * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'OES_standard_derivatives' )} instead.
	 */
	function supportsStandardDerivatives() : Dynamic;
	/**
	 * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'WEBGL_compressed_texture_s3tc' )} instead.
	 */
	function supportsCompressedTextureS3TC() : Dynamic;
	/**
	 * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'WEBGL_compressed_texture_pvrtc' )} instead.
	 */
	function supportsCompressedTexturePVRTC() : Dynamic;
	/**
	 * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'EXT_blend_minmax' )} instead.
	 */
	function supportsBlendMinMax() : Dynamic;
	/**
	 * @deprecated Use {@link WebGLCapabilities#vertexTextures .capabilities.vertexTextures} instead.
	 */
	function supportsVertexTextures() : Dynamic;
	/**
	 * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'ANGLE_instanced_arrays' )} instead.
	 */
	function supportsInstancedArrays() : Dynamic;
	/**
	 * @deprecated Use {@link WebGLRenderer#setScissorTest .setScissorTest()} instead.
	 */
	function enableScissorTest(boolean:Dynamic) : Dynamic;
}