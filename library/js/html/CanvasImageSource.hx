package js.html;

import haxe.extern.EitherType;
import js.three.textures.OffscreenCanvas;

typedef CanvasImageSource = EitherType<ImageBitmap, 
                            EitherType<ImageElement, 
                            EitherType<CanvasElement, 
                            EitherType<VideoElement, 
                            EitherType<OffscreenCanvas, 
                                       VideoFrame
                            >>>>>;
