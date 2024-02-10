package js.three;

import haxe.extern.EitherType;

/**
 * Texture all Magnification and Minification Filter Modes.
 * @see {@link MagnificationTextureFilter} and {@link MinificationTextureFilter}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 * @see {@link https://sbcode.net/threejs/mipmaps/ | Texture Mipmaps (non-official)}
 */
typedef TextureFilter = EitherType<MagnificationTextureFilter, MinificationTextureFilter>;
