(function () { "use strict";
var Main = function() { };
Main.__name__ = true;
Main.main = function() {
	var camera = new THREE.PerspectiveCamera(20,window.innerWidth / window.innerHeight,1,10000);
	camera.position.z = 1800;
	var scene = new THREE.Scene();
	var light = new THREE.DirectionalLight(16777215);
	light.position.set(0,0,1);
	light.position.normalize();
	scene.add(light);
	var shadowMaterial = new THREE.MeshBasicMaterial({ map : THREE.ImageUtils.loadTexture("shadow.png")});
	var shadowGeo = new THREE.PlaneGeometry(300,300,1,1);
	var mesh = new THREE.Mesh(shadowGeo,shadowMaterial);
	mesh.position.y = -250;
	mesh.position.x = -90 * Math.PI / 180;
	scene.add(mesh);
	var mesh1 = new THREE.Mesh(shadowGeo,shadowMaterial);
	mesh1.position.y = -250;
	mesh1.position.x = -400;
	mesh1.position.x = -90 * Math.PI / 180;
	scene.add(mesh1);
	var mesh2 = new THREE.Mesh(shadowGeo,shadowMaterial);
	mesh2.position.y = -250;
	mesh2.position.x = 400;
	mesh2.position.x = -90 * Math.PI / 180;
	scene.add(mesh2);
	var faceIndices = ["a","b","c","d"];
	var color;
	var f;
	var f2;
	var f3;
	var p;
	var n;
	var vertexIndex;
	var radius = 200;
	var geometry = new THREE.IcosahedronGeometry(radius,1);
	var geometry2 = new THREE.IcosahedronGeometry(radius,1);
	var geometry3 = new THREE.IcosahedronGeometry(radius,1);
	var _g1 = 0;
	var _g = geometry.faces.length;
	while(_g1 < _g) {
		var i = _g1++;
		f = geometry.faces[i];
		f2 = geometry2.faces[i];
		f3 = geometry3.faces[i];
		if(js.Boot.__instanceof(f,THREE.Face3)) n = 3; else n = 4;
		var _g2 = 0;
		while(_g2 < n) {
			var j = _g2++;
			vertexIndex = Reflect.field(f,faceIndices[j]);
			p = geometry.vertices[vertexIndex];
			color = new THREE.Color(16777215);
			color.setHSL((p.y / radius + 1) / 2,1.0,0.5);
			f.vertexColors[j] = color;
			color = new THREE.Color(16777215);
			color.setHSL(0,(p.y / radius + 1) / 2,0.5);
			f2.vertexColors[j] = color;
			color = new THREE.Color(16777215);
			color.setHSL(0.125 * vertexIndex / geometry.vertices.length,1,0.5);
			f3.vertexColors[j] = color;
		}
	}
	var materials = [new THREE.MeshLambertMaterial({ color : 16777215, shading : THREE.FlatShading, vertexColors : THREE.VertexColors}),new THREE.MeshLambertMaterial({ color : 0, shading : THREE.FlatShading, wireframe : true, transparent : true})];
	var group1 = THREE.SceneUtils.createMultiMaterialObject(geometry,materials);
	group1.position.x = -400;
	group1.rotation.x = -1.87;
	scene.add(group1);
	var group2 = THREE.SceneUtils.createMultiMaterialObject(geometry2,materials);
	group2.position.x = 400;
	group2.rotation.x = 0;
	scene.add(group2);
	var group3 = THREE.SceneUtils.createMultiMaterialObject(geometry3,materials);
	group3.position.x = 0;
	group3.rotation.x = 0;
	scene.add(group3);
	var renderer = new THREE.CanvasRenderer();
	renderer.setSize(window.innerWidth,window.innerHeight);
	window.document.body.appendChild(renderer.domElement);
	var mouseX = 0;
	var mouseY = 0;
	window.document.addEventListener("mousemove",function(event) {
		mouseX = Math.round(event.clientX - window.innerWidth / 2);
		mouseY = Math.round(event.clientY - window.innerHeight / 2);
	},false);
	var timer = new haxe.Timer(Math.round(16.666666666666668));
	timer.run = function() {
		camera.position.x += (mouseX - camera.position.x) * 0.05;
		camera.position.y += (-mouseY - camera.position.y) * 0.05;
		camera.lookAt(scene.position);
		renderer.render(scene,camera);
	};
};
Math.__name__ = true;
var Reflect = function() { };
Reflect.__name__ = true;
Reflect.field = function(o,field) {
	try {
		return o[field];
	} catch( e ) {
		return null;
	}
};
var haxe = {};
haxe.Timer = function(time_ms) {
	var me = this;
	this.id = setInterval(function() {
		me.run();
	},time_ms);
};
haxe.Timer.__name__ = true;
haxe.Timer.prototype = {
	run: function() {
	}
	,__class__: haxe.Timer
};
var js = {};
js.Boot = function() { };
js.Boot.__name__ = true;
js.Boot.getClass = function(o) {
	if((o instanceof Array) && o.__enum__ == null) return Array; else return o.__class__;
};
js.Boot.__interfLoop = function(cc,cl) {
	if(cc == null) return false;
	if(cc == cl) return true;
	var intf = cc.__interfaces__;
	if(intf != null) {
		var _g1 = 0;
		var _g = intf.length;
		while(_g1 < _g) {
			var i = _g1++;
			var i1 = intf[i];
			if(i1 == cl || js.Boot.__interfLoop(i1,cl)) return true;
		}
	}
	return js.Boot.__interfLoop(cc.__super__,cl);
};
js.Boot.__instanceof = function(o,cl) {
	if(cl == null) return false;
	switch(cl) {
	case Int:
		return (o|0) === o;
	case Float:
		return typeof(o) == "number";
	case Bool:
		return typeof(o) == "boolean";
	case String:
		return typeof(o) == "string";
	case Array:
		return (o instanceof Array) && o.__enum__ == null;
	case Dynamic:
		return true;
	default:
		if(o != null) {
			if(typeof(cl) == "function") {
				if(o instanceof cl) return true;
				if(js.Boot.__interfLoop(js.Boot.getClass(o),cl)) return true;
			}
		} else return false;
		if(cl == Class && o.__name__ != null) return true;
		if(cl == Enum && o.__ename__ != null) return true;
		return o.__enum__ == cl;
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
String.prototype.__class__ = String;
String.__name__ = true;
Array.__name__ = true;
var Int = { __name__ : ["Int"]};
var Dynamic = { __name__ : ["Dynamic"]};
var Float = Number;
Float.__name__ = ["Float"];
var Bool = Boolean;
Bool.__ename__ = ["Bool"];
var Class = { __name__ : ["Class"]};
var Enum = { };
Main.main();
})();
