package js.html.webgl;

import haxe.extern.EitherType;

typedef OffscreenRenderingContext = EitherType<OffscreenCanvasRenderingContext2D,
                                    EitherType<ImageBitmapRenderingContext,
                                    EitherType<RenderingContext,
                                               WebGL2RenderingContext
                                    >>>;
