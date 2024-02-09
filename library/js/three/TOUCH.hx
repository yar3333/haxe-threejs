package js.three;

import js.lib.*;

@:native("THREE.TOUCH")
extern enum TOUCH
{
	ROTATE = 0;
	PAN = 1;
	DOLLY_PAN = 2;
	DOLLY_ROTATE = 3;
}