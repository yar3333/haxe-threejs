package js.three.core;

import haxe.extern.EitherType;
import js.lib.Float64Array;
import js.lib.Float32Array;
import js.lib.Uint32Array;
import js.lib.Int32Array;
import js.lib.Uint16Array;
import js.lib.Int16Array;
import js.lib.Uint8ClampedArray;
import js.lib.Uint8Array;
import js.lib.Int8Array;

typedef TypedArray = EitherType<Int8Array, 
                     EitherType<Uint8Array, 
                     EitherType<Uint8ClampedArray, 
                     EitherType<Int16Array, 
                     EitherType<Uint16Array, 
                     EitherType<Int32Array, 
                     EitherType<Uint32Array, 
                     EitherType<Float32Array, 
                                Float64Array
                     >>>>>>>>;
