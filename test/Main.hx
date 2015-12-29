import js.Browser.window;
import js.Browser.document;
import js.three.*;
import js.three.Embed; // include three.js into output js (also, you can use EmbedMin to include three.min.js)
import js.three.EmbedMin; // include three.js into output js (also, you can use EmbedMin to include three.min.js)

class Main
{
	static function main()
	{
		var scene = new Scene();
		var camera = new PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
		
		var renderer = new WebGLRenderer();
		renderer.setSize(window.innerWidth, window.innerHeight);
		document.body.appendChild(renderer.domElement);
		
		var geometry = new BoxGeometry(1, 1, 1);
		var material = new MeshBasicMaterial({ color:0x00ff00 });
		var cube = new Mesh(geometry, material);
		scene.add(cube);
		
		camera.position.z = 5;
		
		function render(_)
		{
			window.requestAnimationFrame(render);
			
			cube.rotation.x += 0.1;
			cube.rotation.y += 0.1;			
			
			renderer.render(scene, camera);
		}
		render(0);
    }
}
