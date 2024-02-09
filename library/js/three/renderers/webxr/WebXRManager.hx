package js.three.renderers.webxr;

import js.lib.*;

// @:native("THREE.WebXRManager")
// extern class WebXRManager extends EventDispatcher<WebXRManagerEventMap>
// {
// 	/**
// 	 * @default false
// 	 */
// 	var enabled : Bool;
// 	/**
// 	 * @default false
// 	 */
// 	var isPresenting : Bool;
// 	/**
// 	 * @default true
// 	 */
// 	var cameraAutoUpdate : Bool;

// 	function new(renderer:WebGLRenderer, gl:js.html.webgl.RenderingContext) : Void;
// 	function getController(index:Int) : XRTargetRaySpace;
// 	function getControllerGrip(index:Int) : XRGripSpace;
// 	function getHand(index:Int) : XRHandSpace;
// 	function setFramebufferScaleFactor(value:Float) : Void;
// 	function setReferenceSpaceType(value:XRReferenceSpaceType) : Void;
// 	function getReferenceSpace() : XRReferenceSpace;
// 	function setReferenceSpace(value:XRReferenceSpace) : Void;
// 	function getBaseLayer() : haxe.extern.EitherType<XRWebGLLayer, XRProjectionLayer>;
// 	function getBinding() : XRWebGLBinding;
// 	function getFrame() : XRFrame;
// 	function getSession() : XRSession;
// 	function setSession(value:XRSession) : Promise<Void>;
// 	function getCamera() : WebXRArrayCamera;
// 	function updateCamera(camera:PerspectiveCamera) : Void;
// 	function setAnimationLoop(callback:XRFrameRequestCallback) : Void;
// 	function getFoveation() : haxe.extern.EitherType<Float, {}>;
// 	function setFoveation(value:Float) : Void;
// 	function dispose() : Void;
// }