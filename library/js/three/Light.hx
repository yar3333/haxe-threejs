package js.three;

import js.lib.*;

/**
 * Abstract base class for lights.
 * @remarks All other light types inherit the properties and methods described here.
 */
@:native("THREE.Light")
extern class Light<TShadowSupport:haxe.extern.EitherType<LightShadow, {}>, LightShadow:Dynamic>
{
}