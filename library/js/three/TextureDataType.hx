package js.three;

/**
 * Texture Types.
 * @remarks Must correspond to the correct {@link PixelFormat | format}.
 * @see {@link THREE.Texture.type}
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
@:jsRequire("three")
@:native("THREE")
extern enum abstract TextureDataType(Int)
{
    var UnsignedByteType; // = 1009;
    var ByteType; // = 1010;
    var ShortType; // = 1011;
    var UnsignedShortType; // = 1012;
    var IntType; // = 1013;
    var UnsignedIntType; // = 1014;
    var FloatType; // = 1015;
    var HalfFloatType; // = 1016;
    var UnsignedShort4444Type; // = 1017;
    var UnsignedShort5551Type; // = 1018;
    var UnsignedInt248Type; // = 1020;    
}