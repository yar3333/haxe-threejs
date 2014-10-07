(function () { "use strict";
var Main = function() { };
Main.main = function() {
	var mouseX = 0;
	var mouseY = 0;
	var container = window.document.body;
	var scene = new THREE.Scene();
	var camera = new THREE.PerspectiveCamera(60,window.innerWidth / window.innerHeight,1,10000);
	camera.position.z = 500;
	scene.add(camera);
	var mesh = new THREE.Mesh(new THREE.PlaneGeometry(300,300,3,3),new THREE.MeshBasicMaterial({ map : THREE.ImageUtils.loadTexture("shadow.png"), overdraw : 0.2}));
	mesh.position.y = -250;
	mesh.position.x = -90 * Math.PI / 180;
	scene.add(mesh);
	var mesh1 = new THREE.Mesh(new THREE.SphereGeometry(200,20,20),new THREE.MeshBasicMaterial({ map : THREE.ImageUtils.loadTexture("land_ocean_ice_cloud_2048.jpg"), overdraw : 0.2}));
	scene.add(mesh1);
	var renderer = new THREE.CanvasRenderer();
	renderer.setSize(window.innerWidth,window.innerHeight);
	window.document.body.appendChild(renderer.domElement);
	window.document.addEventListener("mousemove",function(event) {
		mouseX = Math.round(event.clientX - window.innerWidth / 2);
		mouseY = Math.round(event.clientY - window.innerHeight / 2);
	},false);
	var run = null;
	run = function(f) {
		window.requestAnimationFrame(run);
		camera.position.x += (mouseX - camera.position.x) * 0.05;
		camera.position.y += (-mouseY - camera.position.y) * 0.05;
		camera.lookAt(scene.position);
		mesh1.rotation.y -= 0.005;
		renderer.render(scene,camera);
		return true;
	};
	run(0);
};
Math.NaN = Number.NaN;
Math.NEGATIVE_INFINITY = Number.NEGATIVE_INFINITY;
Math.POSITIVE_INFINITY = Number.POSITIVE_INFINITY;
Math.isFinite = function(i) {
	return isFinite(i);
};
Math.isNaN = function(i1) {
	return isNaN(i1);
};
Main.main();
})();
