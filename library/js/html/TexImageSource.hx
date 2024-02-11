package js.html;

import haxe.extern.EitherType;

typedef TexImageSource = EitherType<ImageBitmap, 
                         EitherType<ImageData, 
                         EitherType<ImageElement, 
                         EitherType<CanvasElement, 
                         EitherType<VideoElement, 
                         EitherType<OffscreenCanvas, 
                                    VideoFrame
                         >>>>>>;
