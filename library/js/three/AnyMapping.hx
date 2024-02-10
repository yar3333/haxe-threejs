package js.three;

import haxe.extern.EitherType;

/**
 * Texture Mapping Modes for any type of Textures
 * @see {@link Mapping} and {@link CubeTextureMapping}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
 typedef AnyMapping = EitherType<Mapping, CubeTextureMapping>;