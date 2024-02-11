package js.html;

import js.lib.ArrayBuffer;
import haxe.extern.EitherType;

typedef Transferable = EitherType<OffscreenCanvas,
                       EitherType<ImageBitmap,
                       EitherType<MessagePort,
                       EitherType<ReadableStream,
                       EitherType<WritableStream,
                       EitherType<TransformStream,
                       EitherType<VideoFrame,
                                  ArrayBuffer
                       >>>>>>>;