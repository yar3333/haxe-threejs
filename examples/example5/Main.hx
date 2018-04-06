import js.Browser;
import js.three.*;

class Main
{
	static var data =
	{
		name : "CubeGeometry", 
		faces : [33,0,1,2,3,0,1,2,3,33,4,7,6,5,4,5,6,7,33,0,4,5,1,0,4,7,1,33,1,5,6,2,1,7,6,2,33,2,6,7,3,2,6,5,3,33,4,0,3,7,4,0,3,5], 
		metadata : {
			type : "Geometry", 
			uvs : 0, 
			vertices : 8, 
			generator : "io_three", 
			version : 3, 
			faces : 6, 
			normals : 8
		}, 
		normals : [0.577349,-0.577349,-0.577349,0.577349,-0.577349,0.577349,-0.577349,-0.577349,0.577349,-0.577349,-0.577349,-0.577349,0.577349,0.577349,-0.577349,-0.577349,0.577349,-0.577349,-0.577349,0.577349,0.577349,0.577349,0.577349,0.577349], 
		vertices : [1,-1,-1,1,-1,1,-1,-1,1,-1,-1,-1,1,1,-1,0.999999,1,1,-1,1,1,-1,1,-1], 
		uvs : []
	};
	
    public static function main()
	{
		var loader = new js.three.JSONLoader();
		var d = loader.parse(data, "");
		trace(d.geometry);
		trace(d.materials);
		
		var w = js.Browser.window.innerWidth;
        var h = js.Browser.window.innerHeight;
		
        var scene = new js.three.Scene();
        
		var mesh = new js.three.Mesh(d.geometry/*, new js.three.MeshFaceMaterial(d.materials)*/);
        //mesh.position.set(0, 100, 0);
        scene.add(mesh);
        
		scene.add(new js.three.DirectionalLight(0xffffff, 1));
        
		var camera = new js.three.PerspectiveCamera(70, w / h, 1, 1000);
		camera.position.z = 3;
        camera.lookAt(new js.three.Vector3(0, 0, 0));
		camera.updateMatrix();
		camera.updateProjectionMatrix();
        scene.add(camera);
        
		var renderer = new WebGLRenderer( { alpha:true } );
        renderer.setSize(w, h);
        
		//renderer.render(scene, camera, null, null);
		renderer.render(scene, camera);
		
		Browser.document.body.appendChild(renderer.domElement);
	}
}