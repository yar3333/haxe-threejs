package js.three;

import js.html.*;

@:native("THREE.DetectorStatic")
extern interface DetectorStatic
{
var canvas : Bool;
var webgl : Bool;
var workers : Bool;
var fileapi : Bool;

function getWebGLErrorMessage() : HtmlElement;
function addGetWebGLMessage(?parameters:{?id:String, ?parent:HtmlElement }) : Void;
}