package js.html;

import haxe.extern.EitherType;
import js.three.textures.OffscreenCanvas;

typedef TexImageSource = EitherType<ImageBitmap, 
                         EitherType<ImageData, 
                         EitherType<ImageElement, 
                         EitherType<CanvasElement, 
                         EitherType<VideoElement, 
                         EitherType<OffscreenCanvas, 
                                    VideoFrame
                         >>>>>>;
