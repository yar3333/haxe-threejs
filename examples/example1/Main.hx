import js.Browser;
import js.three.*;

class Main
{
    public static function main()
	{
		var w = Browser.window.innerWidth;
		var h = Browser.window.innerHeight;
		
		var scene = new Scene();
		
		var geometry = new BoxGeometry(50, 50, 50, 1, 1, 1);
		var cube = new Mesh(geometry, new MeshLambertMaterial({ color:0xcc0000 }));
		cube.position.set(0, 100, 0);
		scene.add(cube);
		
		var pointLight = new PointLight(0xffffff, 1, 0);
		pointLight.position.set(10, 50, 130);
		scene.add(pointLight);
		
		var camera = new PerspectiveCamera(70, w/h, 1, 1000);
		camera.position.z = 500;
		scene.add(camera);
		
		var renderer = new WebGLRenderer();
		renderer.setSize(w, h);
		
		Browser.document.body.appendChild(renderer.domElement);
		
		var update = null;
		update = function(f:Float) : Bool
		{
			Browser.window.requestAnimationFrame(update);
			renderer.render(scene, camera);
			return true;
		}
		update(0);
    }
}