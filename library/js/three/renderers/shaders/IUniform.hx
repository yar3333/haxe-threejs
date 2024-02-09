package js.three.renderers.shaders;

import js.lib.*;

extern interface IUniform<TValue = Dynamic>
{
	var value : TValue;
}