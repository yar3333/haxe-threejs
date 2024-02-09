package js.three.types;

enum abstract Object3dType(String)
{
	var Object3D = "Object3D";
    var ArrowHelper = "ArrowHelper";
    var Line = "Line";
    var LineSegments = "LineSegments";
	var BoxHelper = "BoxHelper";
    var Box3Helper = "Box3Helper";
    
	var Camera = "Camera";
	var CubeCamera = "CubeCamera";
	var OrthographicCamera = "OrthographicCamera";
	var PerspectiveCamera = "PerspectiveCamera";
	var CameraHelper = "CameraHelper";
    
	var AmbientLight = "AmbientLight";
	var DirectionalLight = "DirectionalLight";
	var DirectionalLightHelper = "DirectionalLightHelper";
	var HemisphereLight = "HemisphereLight";
	var HemisphereLightHelper = "HemisphereLightHelper";
	var RectAreaLight = "RectAreaLight";
	var PointLightHelper = "PointLightHelper";
	var SpotLight = "SpotLight";
	var SpotLightHelper = "SpotLightHelper";
		
	var LOD = "LOD";
	var PlaneHelper = "PlaneHelper";
	var PolarGridHelper = "PolarGridHelper";
	var SkeletonHelper = "SkeletonHelper";
	
	var Audio = "Audio";
	var AudioListener = "AudioListener";
}