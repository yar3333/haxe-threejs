package js.three.renderers.webgl;

extern interface WebGLLightsState
{
	var version : Float;
	var hash : { var directionalLength : Float; var pointLength : Float; var spotLength : Float; var rectAreaLength : Float; var hemiLength : Float; var numDirectionalShadows : Float; var numPointShadows : Float; var numSpotShadows : Float; var numSpotMaps : Float; var numLightProbes : Float; };
	var ambient : Array<Float>;
	var probe : Array<Dynamic>;
	var directional : Array<Dynamic>;
	var directionalShadow : Array<Dynamic>;
	var directionalShadowMap : Array<Dynamic>;
	var directionalShadowMatrix : Array<Dynamic>;
	var spot : Array<Dynamic>;
	var spotShadow : Array<Dynamic>;
	var spotShadowMap : Array<Dynamic>;
	var spotShadowMatrix : Array<Dynamic>;
	var rectArea : Array<Dynamic>;
	var point : Array<Dynamic>;
	var pointShadow : Array<Dynamic>;
	var pointShadowMap : Array<Dynamic>;
	var pointShadowMatrix : Array<Dynamic>;
	var hemi : Array<Dynamic>;
	var numSpotLightShadowsWithMaps : Float;
	var numLightProbes : Float;
}