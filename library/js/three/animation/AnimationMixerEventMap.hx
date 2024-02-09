package js.three.animation;

import js.lib.*;

extern interface AnimationMixerEventMap
{
	var loop : { var action : AnimationAction; var loopDelta : Float; };
	var finished : { var action : AnimationAction; var direction : Float; };
}