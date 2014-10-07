(function () { "use strict";
var Main = function() { };
Main.main = function() {
	var container;
	var stats;
	var camera;
	var scene;
	var projector;
	var renderer;
	var mouse_x = 0.0;
	var mouse_y = 0.0;
	var objects = new Array();
	var INTERSECTED = null;
	container = window.document.createElement("div");
	window.document.body.appendChild(container);
	var info = window.document.createElement("div");
	info.style.position = "absolute";
	info.style.top = "10px";
	info.style.width = "100%";
	info.style.textAlign = "center";
	info.innerHTML = "<a href=\"http://github.com/mrdoob/three.js\" target=\"_blank\">three.js</a> webgl - interactive cubes";
	container.appendChild(info);
	camera = new THREE.PerspectiveCamera(70,window.innerWidth / window.innerHeight,1,10000);
	camera.position.set(0,300,500);
	scene = new THREE.Scene();
	scene.add(camera);
	var light = new THREE.DirectionalLight(16777215,2);
	light.position.set(1,1,1).normalize();
	scene.add(light);
	var light1 = new THREE.DirectionalLight(16777215);
	light1.position.set(-1,-1,-1).normalize();
	scene.add(light1);
	var geometry = new THREE.CubeGeometry(20,20,20);
	var _g = 0;
	while(_g < 500) {
		var i = _g++;
		var object = new THREE.Mesh(geometry,new THREE.MeshLambertMaterial({ color : Math.round(Math.random() * 16777215)}));
		object.position.x = Math.random() * 800 - 400;
		object.position.y = Math.random() * 800 - 400;
		object.position.z = Math.random() * 800 - 400;
		object.rotation.x = Math.random() * 360 * Math.PI / 180;
		object.rotation.y = Math.random() * 360 * Math.PI / 180;
		object.rotation.z = Math.random() * 360 * Math.PI / 180;
		object.scale.x = Math.random() * 2 + 1;
		object.scale.y = Math.random() * 2 + 1;
		object.scale.z = Math.random() * 2 + 1;
		scene.add(object);
		objects.push(object);
	}
	projector = new THREE.Projector();
	renderer = new THREE.CanvasRenderer();
	renderer.sortObjects = false;
	renderer.setSize(window.innerWidth,window.innerHeight);
	container.appendChild(renderer.domElement);
	stats = new Stats();
	stats.domElement.style.position = "absolute";
	stats.domElement.style.top = "0px";
	container.appendChild(stats.domElement);
	window.document.addEventListener("mousemove",function(event) {
		event.preventDefault();
		mouse_x = event.clientX / window.innerWidth * 2 - 1;
		mouse_y = -(event.clientY / window.innerHeight) * 2 + 1;
	},false);
	var radius = 100;
	var theta = 0.0;
	var timer = new haxe.Timer(Math.round(16.666666666666668));
	timer.run = function() {
		theta += 0.2;
		camera.position.x = radius * Math.sin(theta * Math.PI / 360);
		camera.position.y = radius * Math.sin(theta * Math.PI / 360);
		camera.position.z = radius * Math.cos(theta * Math.PI / 360);
		camera.lookAt(scene.position);
		var vector = new THREE.Vector3(mouse_x,mouse_y,1);
		projector.unprojectVector(vector,camera);
		var raycaster = new THREE.Raycaster(camera.position,vector.sub(camera.position).normalize());
		var intersects = raycaster.intersectObjects(objects);
		if(intersects.length > 0) {
			if(INTERSECTED != intersects[0].object) {
				if(INTERSECTED != null) INTERSECTED.material.color.setHex(INTERSECTED.currentHex);
				INTERSECTED = intersects[0].object;
				INTERSECTED.currentHex = INTERSECTED.material.color.getHex();
				INTERSECTED.material.color.setHex(16711680);
			}
		} else {
			if(INTERSECTED != null) INTERSECTED.material.color.setHex(INTERSECTED.currentHex);
			INTERSECTED = null;
		}
		renderer.render(scene,camera);
		stats.update();
	};
};
var haxe = {};
haxe.Timer = function(time_ms) {
	var me = this;
	this.id = setInterval(function() {
		me.run();
	},time_ms);
};
haxe.Timer.prototype = {
	run: function() {
	}
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
/**
 * @author mrdoob / http://mrdoob.com/
 */

var Stats = function () {

	var startTime = Date.now(), prevTime = startTime;
	var ms = 0, msMin = Infinity, msMax = 0;
	var fps = 0, fpsMin = Infinity, fpsMax = 0;
	var frames = 0, mode = 0;

	var container = document.createElement( 'div' );
	container.id = 'stats';
	container.addEventListener( 'mousedown', function ( event ) { event.preventDefault(); setMode( ++ mode % 2 ) }, false );
	container.style.cssText = 'width:80px;opacity:0.9;cursor:pointer';

	var fpsDiv = document.createElement( 'div' );
	fpsDiv.id = 'fps';
	fpsDiv.style.cssText = 'padding:0 0 3px 3px;text-align:left;background-color:#002';
	container.appendChild( fpsDiv );

	var fpsText = document.createElement( 'div' );
	fpsText.id = 'fpsText';
	fpsText.style.cssText = 'color:#0ff;font-family:Helvetica,Arial,sans-serif;font-size:9px;font-weight:bold;line-height:15px';
	fpsText.innerHTML = 'FPS';
	fpsDiv.appendChild( fpsText );

	var fpsGraph = document.createElement( 'div' );
	fpsGraph.id = 'fpsGraph';
	fpsGraph.style.cssText = 'position:relative;width:74px;height:30px;background-color:#0ff';
	fpsDiv.appendChild( fpsGraph );

	while ( fpsGraph.children.length < 74 ) {

		var bar = document.createElement( 'span' );
		bar.style.cssText = 'width:1px;height:30px;float:left;background-color:#113';
		fpsGraph.appendChild( bar );

	}

	var msDiv = document.createElement( 'div' );
	msDiv.id = 'ms';
	msDiv.style.cssText = 'padding:0 0 3px 3px;text-align:left;background-color:#020;display:none';
	container.appendChild( msDiv );

	var msText = document.createElement( 'div' );
	msText.id = 'msText';
	msText.style.cssText = 'color:#0f0;font-family:Helvetica,Arial,sans-serif;font-size:9px;font-weight:bold;line-height:15px';
	msText.innerHTML = 'MS';
	msDiv.appendChild( msText );

	var msGraph = document.createElement( 'div' );
	msGraph.id = 'msGraph';
	msGraph.style.cssText = 'position:relative;width:74px;height:30px;background-color:#0f0';
	msDiv.appendChild( msGraph );

	while ( msGraph.children.length < 74 ) {

		var bar = document.createElement( 'span' );
		bar.style.cssText = 'width:1px;height:30px;float:left;background-color:#131';
		msGraph.appendChild( bar );

	}

	var setMode = function ( value ) {

		mode = value;

		switch ( mode ) {

			case 0:
				fpsDiv.style.display = 'block';
				msDiv.style.display = 'none';
				break;
			case 1:
				fpsDiv.style.display = 'none';
				msDiv.style.display = 'block';
				break;
		}

	}

	var updateGraph = function ( dom, value ) {

		var child = dom.appendChild( dom.firstChild );
		child.style.height = value + 'px';

	}

	return {

		REVISION: 11,

		domElement: container,

		setMode: setMode,

		begin: function () {

			startTime = Date.now();

		},

		end: function () {

			var time = Date.now();

			ms = time - startTime;
			msMin = Math.min( msMin, ms );
			msMax = Math.max( msMax, ms );

			msText.textContent = ms + ' MS (' + msMin + '-' + msMax + ')';
			updateGraph( msGraph, Math.min( 30, 30 - ( ms / 200 ) * 30 ) );

			frames ++;

			if ( time > prevTime + 1000 ) {

				fps = Math.round( ( frames * 1000 ) / ( time - prevTime ) );
				fpsMin = Math.min( fpsMin, fps );
				fpsMax = Math.max( fpsMax, fps );

				fpsText.textContent = fps + ' FPS (' + fpsMin + '-' + fpsMax + ')';
				updateGraph( fpsGraph, Math.min( 30, 30 - ( fps / 100 ) * 30 ) );

				prevTime = time;
				frames = 0;

			}

			return time;

		},

		update: function () {

			startTime = this.end();

		}

	}

};
;
Main.main();
})();
