package js.three;

typedef SceneLoaderResult = {
	var scene : Scene;
	var geometries : Dynamic<Geometry>;
	var materials : Dynamic<Material>;
	var face_materials : Dynamic<MeshFaceMaterial>;
	var textures : Dynamic<Texture>;
	var objects : Dynamic<Object3D>;
	var cameras : Dynamic<Camera>;
	var currentCamera : Camera;
	var lights : Dynamic<Light>;
	var fogs : Dynamic<Fog>;
	var empties : Dynamic<Object3D>;
	var groups : Dynamic<Array<Dynamic>>; // hash of arrays of objIDs (where each objID is a key from the objects hash)
};

typedef SceneLoaderProgress = {
	var totalModels : Int;
	var totalTextures : Int;
	var loadedModels : Int;
	var loadedTextures : Int;
};


@:native("THREE.SceneLoader")
extern class SceneLoader
{
	var onLoadStart : Void -> Void;
	var onLoadProgress : Void -> Void;
	var onLoadComplete : Void -> Void;
	var callbackSync : SceneLoaderResult -> Void;
	var callbackProgress : SceneLoaderProgress -> SceneLoaderResult -> Void;
	function new() : Void;
	function load(url:String, callbackFinished:SceneLoaderResult->Void) : Void;
	function addGeometryHandler(timeID:Dynamic, loaderClass:Dynamic) : Void;
	function addHierarchyHandler(timeID:Dynamic, loaderClass:Dynamic) : Void;
}
