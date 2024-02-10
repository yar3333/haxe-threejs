import js.three.objects.Mesh;
import js.three.materials.MeshBasicMaterial;
import js.three.geometries.BoxGeometry;
import js.three.cameras.PerspectiveCamera;
import js.three.renderers.WebGLRenderer;
import js.Browser.window;
import js.Browser.document;
import js.three.scenes.Scene;

//import * as THREE from 'three'
//import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls'

function main()
{
    final scene = new Scene();

    final camera = new PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
    camera.position.z = 2;

    final renderer = new WebGLRenderer();
    renderer.setSize(window.innerWidth, window.innerHeight);
    document.body.appendChild(renderer.domElement);

    //final controls = new OrbitControls(camera, renderer.domElement);

    final geometry = new BoxGeometry();
    final material = new MeshBasicMaterial({
        color: 0x00ff00,
        wireframe: true,
    });

    final cube = new Mesh(geometry, material);
    scene.add(cube);

    function render() {
        renderer.render(scene, camera);
    }
    function onWindowResize(_) {
        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();
        renderer.setSize(window.innerWidth, window.innerHeight);
        render();
    };

    window.addEventListener('resize', onWindowResize, false);


    function animate() {
        window.requestAnimationFrame((_) -> animate());

        cube.rotation.x += 0.01;
        cube.rotation.y += 0.01;

        //controls.update();

        render();
    }

    animate();
}