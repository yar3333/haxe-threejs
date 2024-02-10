package js.three.math;

import haxe.extern.EitherType;
import js.three.core.BufferAttribute;
import js.three.core.InterleavedBufferAttribute;

typedef HSL =
{
    var h: Float;
    var s: Float;
    var l: Float;
}

typedef RGB =
{
    var r: Float;
    var g: Float;
    var b: Float;
}

/**
 * Represents a color. See also {@link ColorUtils}.
 * 
 * see {@link https://github.com/mrdoob/three.js/blob/master/src/math/Color.js|src/math/Color.js}
 * 
 * @example
 * const color = new THREE.Color( 0xff0000 );
 */
@:jsRequire("three", "Color")
@:native("THREE.Color")
extern class Color implements ArrayAccess<Float>
{
	var isColor(default, null) : Bool;
	/**
	 * Red channel value between 0 and 1. Default is 1.
	 * @default 1
	 */
	var r : Float;
	/**
	 * Green channel value between 0 and 1. Default is 1.
	 * @default 1
	 */
	var g : Float;
	/**
	 * Blue channel value between 0 and 1. Default is 1.
	 * @default 1
	 */
	var b : Float;
	/**
	 * List of X11 color names.
	 */
	//static var NAMES : String;
	static var NAMES : ColorKeywords;

	/**
	 * Represents a color. See also {@link ColorUtils}.
	 * 
	 * see {@link https://github.com/mrdoob/three.js/blob/master/src/math/Color.js|src/math/Color.js}
	 * 
	 * @example
	 * const color = new THREE.Color( 0xff0000 );
	 */
     @:overload(function(?color:ColorRepresentation) : Void {})
	function new(r:Float, g:Float, b:Float) : Void;
	
    overload function set(color: ColorRepresentation) : Color;
    overload function set(rgb:Array<Float>) : Color;
	
    /**
	 * Sets this color's {@link r}, {@link g} and {@link b} components from the x, y, and z components of the specified
	 * {@link Vector3 | vector}.
	 */
	function setFromVector3(vector:Vector3) : Color;
	function setScalar(scalar:Float) : Color;
	function setHex(hex:Int, ?colorSpace:ColorSpace) : Color;
	/**
	 * Sets this color from RGB values.
	 */
	function setRGB(r:Float, g:Float, b:Float, ?colorSpace:ColorSpace) : Color;
	/**
	 * Sets this color from HSL values.
	 * Based on MochiKit implementation by Bob Ippolito.
	 */
	function setHSL(h:Float, s:Float, l:Float, ?colorSpace:ColorSpace) : Color;
	/**
	 * Sets this color from a CSS context style string.
	 */
	function setStyle(style:String, ?colorSpace:ColorSpace) : Color;
	/**
	 * Sets this color from a color name.
	 * Faster than {@link Color#setStyle .setStyle()} method if you don't need the other CSS-style formats.
	 */
	function setColorName(style:String, ?colorSpace:ColorSpace) : Color;
	/**
	 * Clones this color.
	 */
	function clone() : Color;
	/**
	 * Copies given color.
	 */
	function copy(color:Color) : Color;
	/**
	 * Copies given color making conversion from sRGB to linear space.
	 */
	function copySRGBToLinear(color:Color) : Color;
	/**
	 * Copies given color making conversion from linear to sRGB space.
	 */
	function copyLinearToSRGB(color:Color) : Color;
	/**
	 * Converts this color from sRGB to linear space.
	 */
	function convertSRGBToLinear() : Color;
	/**
	 * Converts this color from linear to sRGB space.
	 */
	function convertLinearToSRGB() : Color;
	/**
	 * Returns the hexadecimal value of this color.
	 */
	function getHex(?colorSpace:ColorSpace) : Int;
	/**
	 * Returns the string formated hexadecimal value of this color.
	 */
	function getHexString(?colorSpace:ColorSpace) : String;
	function getHSL(target:HSL, ?colorSpace:ColorSpace) : HSL;
	function getRGB(target:RGB, ?colorSpace:ColorSpace) : RGB;
	/**
	 * Returns the value of this color in CSS context style.
	 * Example: rgb(r, g, b)
	 */
	function getStyle(?colorSpace:ColorSpace) : String;
	function offsetHSL(h:Float, s:Float, l:Float) : Color;
	function add(color:Color) : Color;
	function addColors(color1:Color, color2:Color) : Color;
	function addScalar(s:Float) : Color;
	/**
	 * Applies the transform {@link Matrix3 | m} to this color's RGB components.
	 */
	function applyMatrix3(m:Matrix3) : Color;
	function sub(color:Color) : Color;
	function multiply(color:Color) : Color;
	function multiplyScalar(s:Float) : Color;
	function lerp(color:Color, alpha:Float) : Color;
	function lerpColors(color1:Color, color2:Color, alpha:Float) : Color;
	function lerpHSL(color:Color, alpha:Float) : Color;
	function equals(color:Color) : Bool;
	/**
	 * Sets this color's red, green and blue value from the provided array or array-like.
	 */
	function fromArray(array:haxe.extern.EitherType<Array<Float>, ArrayLike<Float>>, ?offset:Float) : Color;
	/**
	 * Returns an array [red, green, blue], or copies red, green and blue into the provided array.
	 * @return The created or provided array.
	 * Copies red, green and blue into the provided array-like.
	 * @return The provided array-like.
	 */
	overload function toArray(?array:Array<Float>, ?offset:Float) : Array<Float>;
	/**
	 * Returns an array [red, green, blue], or copies red, green and blue into the provided array.
	 * @return The created or provided array.
	 * Copies red, green and blue into the provided array-like.
	 * @return The provided array-like.
	 */
	overload function toArray(xyz:ArrayLike<Float>, ?offset:Float) : ArrayLike<Float>;
	/**
	 * This method defines the serialization result of Color.
	 * @return The color as a hexadecimal value.
	 */
	function toJSON() : Float;
	function fromBufferAttribute(attribute:haxe.extern.EitherType<BufferAttribute, InterleavedBufferAttribute>, index:Int) : Color;
	
    //function [Symbol.iterator]() : Generator<Float, Void>;
}
