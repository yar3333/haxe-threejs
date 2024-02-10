package js.three;

/**
 * Texture Mapping Modes for cube Textures
 * @remarks {@link CubeReflectionMapping} is the _default_ value and behaver for Cube Texture Mapping.
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
 @:jsRequire("three")
 @:native("THREE")
 extern enum abstract CubeTextureMapping(Int)
 {
     /**
     * @remarks This is the _default_ value and behaver for Cube Texture Mapping.
     */
     var CubeReflectionMapping; // = 301;
     var CubeRefractionMapping; // = 302;
     var CubeUVReflectionMapping; // = 306;
 }