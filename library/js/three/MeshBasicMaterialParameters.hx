package js.three;

import js.lib.*;

extern interface MeshBasicMaterialParameters extends MaterialParameters
{
	@:optional var color : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var opacity : haxe.extern.EitherType<Float, {}>;
	@:optional var map : haxe.extern.EitherType<Texture, {}>;
	@:optional var lightMap : Texture;
	@:optional var lightMapIntensity : haxe.extern.EitherType<Float, {}>;
	@:optional var aoMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var aoMapIntensity : haxe.extern.EitherType<Float, {}>;
	@:optional var specularMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var alphaMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var fog : haxe.extern.EitherType<Bool, {}>;
	@:optional var envMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var combine : haxe.extern.EitherType<Combine, {}>;
	@:optional var reflectivity : haxe.extern.EitherType<Float, {}>;
	@:optional var refractionRatio : haxe.extern.EitherType<Float, {}>;
	@:optional var wireframe : haxe.extern.EitherType<Bool, {}>;
	@:optional var wireframeLinewidth : haxe.extern.EitherType<Float, {}>;
	@:optional var wireframeLinecap : haxe.extern.EitherType<String, {}>;
	@:optional var wireframeLinejoin : haxe.extern.EitherType<String, {}>;
}