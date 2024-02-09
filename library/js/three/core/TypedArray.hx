package js.three.core;

import haxe.extern.EitherType;
import js.lib.*;

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
