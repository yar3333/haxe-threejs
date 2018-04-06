import js.Browser;
import js.three.*;

// port of canvas_geometry_earth.html
class Main
{
    public static function main()
    {
        var mouseX = 0;
        var mouseY = 0;
        
        var scene = new Scene();
        
		var camera = new PerspectiveCamera(60, Browser.window.innerWidth / Browser.window.innerHeight, 1, 10000);
        camera.position.z = 500;
        scene.add(camera);
        
		var textureLoader = new TextureLoader();
		
		var mesh = new Mesh(new PlaneGeometry(300, 300, 3, 3), new MeshBasicMaterial({ map:textureLoader.load("shadow.png"), overdraw:0.2 }));
        mesh.position.y = -250;
        mesh.position.x = -90 * std.Math.PI / 180;
        scene.add(mesh);
        
		var mesh = new Mesh(new SphereGeometry(200, 20, 20), new MeshBasicMaterial({ map:textureLoader.load("land_ocean_ice_cloud_2048.jpg"), overdraw:0.2 }));
        scene.add(mesh);
        
		var renderer = new WebGLRenderer({ alpha:true });
        renderer.setSize(Browser.window.innerWidth, Browser.window.innerHeight);
		Browser.document.body.appendChild(renderer.domElement);
        
		Browser.document.addEventListener("mousemove", function(event)
        {
            mouseX = std.Math.round(event.clientX - Browser.window.innerWidth / 2);
            mouseY = std.Math.round(event.clientY - Browser.window.innerHeight / 2);
        }, false);
        
        var run = null;
        run = function(f) : Bool
        {
            Browser.window.requestAnimationFrame(run);
            camera.position.x += (mouseX - camera.position.x) * 0.05;
            camera.position.y += (-mouseY - camera.position.y) * 0.05;
            camera.lookAt(scene.position);
            mesh.rotation.y -= 0.005;
            renderer.render(scene, camera);
            return true;
        }
        run(0);
    }
}