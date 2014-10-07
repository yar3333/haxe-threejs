(function () { "use strict";
var Main = function() { };
Main.main = function() {
	var w = window.innerWidth;
	var h = window.innerHeight;
	var scene = new THREE.Scene();
	var geometry = new THREE.BoxGeometry(50,50,50,1,1,1);
	var cube = new THREE.Mesh(geometry,new THREE.MeshLambertMaterial({ color : 13369344}));
	cube.position.set(0,100,0);
	scene.add(cube);
	var pointLight = new THREE.PointLight(16777215,1,0);
	pointLight.position.set(10,50,130);
	scene.add(pointLight);
	var camera = new THREE.PerspectiveCamera(70,w / h,1,1000);
	camera.position.z = 500;
	scene.add(camera);
	var renderer = new THREE.CanvasRenderer();
	renderer.setSize(w,h);
	window.document.body.appendChild(renderer.domElement);
	var update = null;
	update = function(f) {
		window.requestAnimationFrame(update);
		renderer.render(scene,camera);
		return true;
	};
	update(0);
};
Main.main();
})();
