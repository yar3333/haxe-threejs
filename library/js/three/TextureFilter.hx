package js.three;

import js.html.*;

// Filters
@:native("THREE")
extern enum TextureFilter
{
	NearestFilter;
	NearestMipMapNearestFilter;
	NearestMipMapLinearFilter;
	LinearFilter;
	LinearMipMapNearestFilter;
	LinearMipMapLinearFilter;
}