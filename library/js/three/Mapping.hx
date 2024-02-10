package js.three;

/**
 * Texture Mapping Modes for non-cube Textures
 * @remarks {@link UVMapping} is the _default_ value and behaver for Texture Mapping.
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
@:jsRequire("three")
@:native("THREE")
extern enum abstract Mapping(Int)
{
    /**
    * Maps the texture using the mesh's UV coordinates.
    * @remarks This is the _default_ value and behaver for Texture Mapping.
    */
    var UVMapping; // = 300;
    var EquirectangularReflectionMapping; // = 303;
    var EquirectangularRefractionMapping; // = 304;
}