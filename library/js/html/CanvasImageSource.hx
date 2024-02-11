package js.html;

import haxe.extern.EitherType;
import js.html.OffscreenCanvas;

typedef CanvasImageSource = EitherType<ImageBitmap, 
                            EitherType<ImageElement, 
                            EitherType<CanvasElement, 
                            EitherType<VideoElement, 
                            EitherType<OffscreenCanvas, 
                                       VideoFrame
                            >>>>>;
