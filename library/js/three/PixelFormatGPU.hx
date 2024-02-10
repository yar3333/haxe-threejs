package js.three;

/**
 * For use with a texture's {@link THREE.Texture.internalFormat} property, these define how elements of a {@link THREE.Texture}, or texels, are stored on the GPU.
 * - `R8` stores the red component on 8 bits.
 * - `R8_SNORM` stores the red component on 8 bits. The component is stored as normalized.
 * - `R8I` stores the red component on 8 bits. The component is stored as an integer.
 * - `R8UI` stores the red component on 8 bits. The component is stored as an unsigned integer.
 * - `R16I` stores the red component on 16 bits. The component is stored as an integer.
 * - `R16UI` stores the red component on 16 bits. The component is stored as an unsigned integer.
 * - `R16F` stores the red component on 16 bits. The component is stored as floating point.
 * - `R32I` stores the red component on 32 bits. The component is stored as an integer.
 * - `R32UI` stores the red component on 32 bits. The component is stored as an unsigned integer.
 * - `R32F` stores the red component on 32 bits. The component is stored as floating point.
 * - `RG8` stores the red and green components on 8 bits each.
 * - `RG8_SNORM` stores the red and green components on 8 bits each. Every component is stored as normalized.
 * - `RG8I` stores the red and green components on 8 bits each. Every component is stored as an integer.
 * - `RG8UI` stores the red and green components on 8 bits each. Every component is stored as an unsigned integer.
 * - `RG16I` stores the red and green components on 16 bits each. Every component is stored as an integer.
 * - `RG16UI` stores the red and green components on 16 bits each. Every component is stored as an unsigned integer.
 * - `RG16F` stores the red and green components on 16 bits each. Every component is stored as floating point.
 * - `RG32I` stores the red and green components on 32 bits each. Every component is stored as an integer.
 * - `RG32UI` stores the red and green components on 32 bits. Every component is stored as an unsigned integer.
 * - `RG32F` stores the red and green components on 32 bits. Every component is stored as floating point.
 * - `RGB8` stores the red, green, and blue components on 8 bits each. RGB8_SNORM` stores the red, green, and blue components on 8 bits each. Every component is stored as normalized.
 * - `RGB8I` stores the red, green, and blue components on 8 bits each. Every component is stored as an integer.
 * - `RGB8UI` stores the red, green, and blue components on 8 bits each. Every component is stored as an unsigned integer.
 * - `RGB16I` stores the red, green, and blue components on 16 bits each. Every component is stored as an integer.
 * - `RGB16UI` stores the red, green, and blue components on 16 bits each. Every component is stored as an unsigned integer.
 * - `RGB16F` stores the red, green, and blue components on 16 bits each. Every component is stored as floating point
 * - `RGB32I` stores the red, green, and blue components on 32 bits each. Every component is stored as an integer.
 * - `RGB32UI` stores the red, green, and blue components on 32 bits each. Every component is stored as an unsigned integer.
 * - `RGB32F` stores the red, green, and blue components on 32 bits each. Every component is stored as floating point
 * - `R11F_G11F_B10F` stores the red, green, and blue components respectively on 11 bits, 11 bits, and 10bits. Every component is stored as floating point.
 * - `RGB565` stores the red, green, and blue components respectively on 5 bits, 6 bits, and 5 bits.
 * - `RGB9_E5` stores the red, green, and blue components on 9 bits each.
 * - `RGBA8` stores the red, green, blue, and alpha components on 8 bits each.
 * - `RGBA8_SNORM` stores the red, green, blue, and alpha components on 8 bits. Every component is stored as normalized.
 * - `RGBA8I` stores the red, green, blue, and alpha components on 8 bits each. Every component is stored as an integer.
 * - `RGBA8UI` stores the red, green, blue, and alpha components on 8 bits. Every component is stored as an unsigned integer.
 * - `RGBA16I` stores the red, green, blue, and alpha components on 16 bits. Every component is stored as an integer.
 * - `RGBA16UI` stores the red, green, blue, and alpha components on 16 bits. Every component is stored as an unsigned integer.
 * - `RGBA16F` stores the red, green, blue, and alpha components on 16 bits. Every component is stored as floating point.
 * - `RGBA32I` stores the red, green, blue, and alpha components on 32 bits. Every component is stored as an integer.
 * - `RGBA32UI` stores the red, green, blue, and alpha components on 32 bits. Every component is stored as an unsigned integer.
 * - `RGBA32F` stores the red, green, blue, and alpha components on 32 bits. Every component is stored as floating point.
 * - `RGB5_A1` stores the red, green, blue, and alpha components respectively on 5 bits, 5 bits, 5 bits, and 1 bit.
 * - `RGB10_A2` stores the red, green, blue, and alpha components respectively on 10 bits, 10 bits, 10 bits and 2 bits.
 * - `RGB10_A2UI` stores the red, green, blue, and alpha components respectively on 10 bits, 10 bits, 10 bits and 2 bits. Every component is stored as an unsigned integer.
 * - `SRGB8` stores the red, green, and blue components on 8 bits each.
 * - `SRGB8_ALPHA8` stores the red, green, blue, and alpha components on 8 bits each.
 * - `DEPTH_COMPONENT16` stores the depth component on 16bits.
 * - `DEPTH_COMPONENT24` stores the depth component on 24bits.
 * - `DEPTH_COMPONENT32F` stores the depth component on 32bits. The component is stored as floating point.
 * - `DEPTH24_STENCIL8` stores the depth, and stencil components respectively on 24 bits and 8 bits. The stencil component is stored as an unsigned integer.
 * - `DEPTH32F_STENCIL8` stores the depth, and stencil components respectively on 32 bits and 8 bits. The depth component is stored as floating point, and the stencil component as an unsigned integer.
 * @remark Note that the texture must have the correct {@link THREE.Texture.type} set, as well as the correct {@link THREE.Texture.format}.
 * @see {@link WebGLRenderingContext.texImage2D} and {@link WebGLRenderingContext.texImage3D} for more details regarding the possible combination
 * of {@link THREE.Texture.format}, {@link THREE.Texture.internalFormat}, and {@link THREE.Texture.type}.
 * @see {@link https://registry.khronos.org/webgl/specs/latest/2.0/ | WebGL2 Specification} and
 * {@link https://registry.khronos.org/OpenGL/specs/es/3.0/es_spec_3.0.pdf | OpenGL ES 3.0 Specification} For more in-depth information regarding internal formats.
 */
@:jsRequire("three")
@:native("THREE")
extern enum abstract PixelFormatGPU(String)
{
    var ALPHA; // = "ALPHA";
    var RGB; // = "RGB";
    var RGBA; // = "RGBA";
    var LUMINANCE; // = "LUMINANCE";
    var LUMINANCE_ALPHA; // = "LUMINANCE_ALPHA";
    var RED_INTEGER; // = "RED_INTEGER";
    var R8; // = "R8";
    var R8_SNORM; // = "R8_SNORM";
    var R8I; // = "R8I";
    var R8UI; // = "R8UI";
    var R16I; // = "R16I";
    var R16UI; // = "R16UI";
    var R16F; // = "R16F";
    var R32I; // = "R32I";
    var R32UI; // = "R32UI";
    var R32F; // = "R32F";
    var RG8; // = "RG8";
    var RG8_SNORM; // = "RG8_SNORM";
    var RG8I; // = "RG8I";
    var RG8UI; // = "RG8UI";
    var RG16I; // = "RG16I";
    var RG16UI; // = "RG16UI";
    var RG16F; // = "RG16F";
    var RG32I; // = "RG32I";
    var RG32UI; // = "RG32UI";
    var RG32F; // = "RG32F";
    var RGB565; // = "RGB565";
    var RGB8; // = "RGB8";
    var RGB8_SNORM; // = "RGB8_SNORM";
    var RGB8I; // = "RGB8I";
    var RGB8UI; // = "RGB8UI";
    var RGB16I; // = "RGB16I";
    var RGB16UI; // = "RGB16UI";
    var RGB16F; // = "RGB16F";
    var RGB32I; // = "RGB32I";
    var RGB32UI; // = "RGB32UI";
    var RGB32F; // = "RGB32F";
    var RGB9_E5; // = "RGB9_E5";
    var SRGB8; // = "SRGB8";
    var R11F_G11F_B10F; // = "R11F_G11F_B10F";
    var RGBA4; // = "RGBA4";
    var RGBA8; // = "RGBA8";
    var RGBA8_SNORM; // = "RGBA8_SNORM";
    var RGBA8I; // = "RGBA8I";
    var RGBA8UI; // = "RGBA8UI";
    var RGBA16I; // = "RGBA16I";
    var RGBA16UI; // = "RGBA16UI";
    var RGBA16F; // = "RGBA16F";
    var RGBA32I; // = "RGBA32I";
    var RGBA32UI; // = "RGBA32UI";
    var RGBA32F; // = "RGBA32F";
    var RGB5_A1; // = "RGB5_A1";
    var RGB10_A2; // = "RGB10_A2";
    var RGB10_A2UI; // = "RGB10_A2UI";
    var SRGB8_ALPHA8; // = "SRGB8_ALPHA8";
    var DEPTH_COMPONENT16; // = "DEPTH_COMPONENT16";
    var DEPTH_COMPONENT24; // = "DEPTH_COMPONENT24";
    var DEPTH_COMPONENT32F; // = "DEPTH_COMPONENT32F";
    var DEPTH24_STENCIL8; // = "DEPTH24_STENCIL8";
    var DEPTH32F_STENCIL8; // = "DEPTH32F_STENCIL8";
}