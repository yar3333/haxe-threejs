package js.three;

import js.lib.*;

extern interface MeshToonMaterialParameters extends MaterialParameters
{
	/**
	 * geometry color in hexadecimal. Default is 0xffffff. 
	 */
	@:optional var color : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var opacity : haxe.extern.EitherType<Float, {}>;
	@:optional var gradientMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var map : haxe.extern.EitherType<Texture, {}>;
	@:optional var lightMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var lightMapIntensity : haxe.extern.EitherType<Float, {}>;
	@:optional var aoMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var aoMapIntensity : haxe.extern.EitherType<Float, {}>;
	@:optional var emissive : haxe.extern.EitherType<ColorRepresentation, {}>;
	@:optional var emissiveIntensity : haxe.extern.EitherType<Float, {}>;
	@:optional var emissiveMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var bumpMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var bumpScale : haxe.extern.EitherType<Float, {}>;
	@:optional var normalMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var normalMapType : haxe.extern.EitherType<NormalMapTypes, {}>;
	@:optional var normalScale : haxe.extern.EitherType<Vector2, {}>;
	@:optional var displacementMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var displacementScale : haxe.extern.EitherType<Float, {}>;
	@:optional var displacementBias : haxe.extern.EitherType<Float, {}>;
	@:optional var alphaMap : haxe.extern.EitherType<Texture, {}>;
	@:optional var wireframe : haxe.extern.EitherType<Bool, {}>;
	@:optional var wireframeLinewidth : haxe.extern.EitherType<Float, {}>;
	@:optional var wireframeLinecap : haxe.extern.EitherType<String, {}>;
	@:optional var wireframeLinejoin : haxe.extern.EitherType<String, {}>;
	@:optional var fog : haxe.extern.EitherType<Bool, {}>;
}