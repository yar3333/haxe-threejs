package js.html.webgl;

@:native("WebGL2RenderingContext")
extern class WebGL2RenderingContext
{
    function new();

    static inline final READ_BUFFER = 0x0C02;
    static inline final UNPACK_ROW_LENGTH = 0x0CF2;
    static inline final UNPACK_SKIP_ROWS = 0x0CF3;
    static inline final UNPACK_SKIP_PIXELS = 0x0CF4;
    static inline final PACK_ROW_LENGTH = 0x0D02;
    static inline final PACK_SKIP_ROWS = 0x0D03;
    static inline final PACK_SKIP_PIXELS = 0x0D04;
    static inline final COLOR = 0x1800;
    static inline final DEPTH = 0x1801;
    static inline final STENCIL = 0x1802;
    static inline final RED = 0x1903;
    static inline final RGB8 = 0x8051;
    static inline final RGBA8 = 0x8058;
    static inline final RGB10_A2 = 0x8059;
    static inline final TEXTURE_BINDING_3D = 0x806A;
    static inline final UNPACK_SKIP_IMAGES = 0x806D;
    static inline final UNPACK_IMAGE_HEIGHT = 0x806E;
    static inline final TEXTURE_3D = 0x806F;
    static inline final TEXTURE_WRAP_R = 0x8072;
    static inline final MAX_3D_TEXTURE_SIZE = 0x8073;
    static inline final UNSIGNED_INT_2_10_10_10_REV = 0x8368;
    static inline final MAX_ELEMENTS_VERTICES = 0x80E8;
    static inline final MAX_ELEMENTS_INDICES = 0x80E9;
    static inline final TEXTURE_MIN_LOD = 0x813A;
    static inline final TEXTURE_MAX_LOD = 0x813B;
    static inline final TEXTURE_BASE_LEVEL = 0x813C;
    static inline final TEXTURE_MAX_LEVEL = 0x813D;
    static inline final MIN = 0x8007;
    static inline final MAX = 0x8008;
    static inline final DEPTH_COMPONENT24 = 0x81A6;
    static inline final MAX_TEXTURE_LOD_BIAS = 0x84FD;
    static inline final TEXTURE_COMPARE_MODE = 0x884C;
    static inline final TEXTURE_COMPARE_FUNC = 0x884D;
    static inline final CURRENT_QUERY = 0x8865;
    static inline final QUERY_RESULT = 0x8866;
    static inline final QUERY_RESULT_AVAILABLE = 0x8867;
    static inline final STREAM_READ = 0x88E1;
    static inline final STREAM_COPY = 0x88E2;
    static inline final STATIC_READ = 0x88E5;
    static inline final STATIC_COPY = 0x88E6;
    static inline final DYNAMIC_READ = 0x88E9;
    static inline final DYNAMIC_COPY = 0x88EA;
    static inline final MAX_DRAW_BUFFERS = 0x8824;
    static inline final DRAW_BUFFER0 = 0x8825;
    static inline final DRAW_BUFFER1 = 0x8826;
    static inline final DRAW_BUFFER2 = 0x8827;
    static inline final DRAW_BUFFER3 = 0x8828;
    static inline final DRAW_BUFFER4 = 0x8829;
    static inline final DRAW_BUFFER5 = 0x882A;
    static inline final DRAW_BUFFER6 = 0x882B;
    static inline final DRAW_BUFFER7 = 0x882C;
    static inline final DRAW_BUFFER8 = 0x882D;
    static inline final DRAW_BUFFER9 = 0x882E;
    static inline final DRAW_BUFFER10 = 0x882F;
    static inline final DRAW_BUFFER11 = 0x8830;
    static inline final DRAW_BUFFER12 = 0x8831;
    static inline final DRAW_BUFFER13 = 0x8832;
    static inline final DRAW_BUFFER14 = 0x8833;
    static inline final DRAW_BUFFER15 = 0x8834;
    static inline final MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49;
    static inline final MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A;
    static inline final SAMPLER_3D = 0x8B5F;
    static inline final SAMPLER_2D_SHADOW = 0x8B62;
    static inline final FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B;
    static inline final PIXEL_PACK_BUFFER = 0x88EB;
    static inline final PIXEL_UNPACK_BUFFER = 0x88EC;
    static inline final PIXEL_PACK_BUFFER_BINDING = 0x88ED;
    static inline final PIXEL_UNPACK_BUFFER_BINDING = 0x88EF;
    static inline final FLOAT_MAT2x3 = 0x8B65;
    static inline final FLOAT_MAT2x4 = 0x8B66;
    static inline final FLOAT_MAT3x2 = 0x8B67;
    static inline final FLOAT_MAT3x4 = 0x8B68;
    static inline final FLOAT_MAT4x2 = 0x8B69;
    static inline final FLOAT_MAT4x3 = 0x8B6A;
    static inline final SRGB = 0x8C40;
    static inline final SRGB8 = 0x8C41;
    static inline final SRGB8_ALPHA8 = 0x8C43;
    static inline final COMPARE_REF_TO_TEXTURE = 0x884E;
    static inline final RGBA32F = 0x8814;
    static inline final RGB32F = 0x8815;
    static inline final RGBA16F = 0x881A;
    static inline final RGB16F = 0x881B;
    static inline final VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD;
    static inline final MAX_ARRAY_TEXTURE_LAYERS = 0x88FF;
    static inline final MIN_PROGRAM_TEXEL_OFFSET = 0x8904;
    static inline final MAX_PROGRAM_TEXEL_OFFSET = 0x8905;
    static inline final MAX_VARYING_COMPONENTS = 0x8B4B;
    static inline final TEXTURE_2D_ARRAY = 0x8C1A;
    static inline final TEXTURE_BINDING_2D_ARRAY = 0x8C1D;
    static inline final R11F_G11F_B10F = 0x8C3A;
    static inline final UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B;
    static inline final RGB9_E5 = 0x8C3D;
    static inline final UNSIGNED_INT_5_9_9_9_REV = 0x8C3E;
    static inline final TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F;
    static inline final MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80;
    static inline final TRANSFORM_FEEDBACK_VARYINGS = 0x8C83;
    static inline final TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84;
    static inline final TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85;
    static inline final TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88;
    static inline final RASTERIZER_DISCARD = 0x8C89;
    static inline final MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A;
    static inline final MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B;
    static inline final INTERLEAVED_ATTRIBS = 0x8C8C;
    static inline final SEPARATE_ATTRIBS = 0x8C8D;
    static inline final TRANSFORM_FEEDBACK_BUFFER = 0x8C8E;
    static inline final TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F;
    static inline final RGBA32UI = 0x8D70;
    static inline final RGB32UI = 0x8D71;
    static inline final RGBA16UI = 0x8D76;
    static inline final RGB16UI = 0x8D77;
    static inline final RGBA8UI = 0x8D7C;
    static inline final RGB8UI = 0x8D7D;
    static inline final RGBA32I = 0x8D82;
    static inline final RGB32I = 0x8D83;
    static inline final RGBA16I = 0x8D88;
    static inline final RGB16I = 0x8D89;
    static inline final RGBA8I = 0x8D8E;
    static inline final RGB8I = 0x8D8F;
    static inline final RED_INTEGER = 0x8D94;
    static inline final RGB_INTEGER = 0x8D98;
    static inline final RGBA_INTEGER = 0x8D99;
    static inline final SAMPLER_2D_ARRAY = 0x8DC1;
    static inline final SAMPLER_2D_ARRAY_SHADOW = 0x8DC4;
    static inline final SAMPLER_CUBE_SHADOW = 0x8DC5;
    static inline final UNSIGNED_INT_VEC2 = 0x8DC6;
    static inline final UNSIGNED_INT_VEC3 = 0x8DC7;
    static inline final UNSIGNED_INT_VEC4 = 0x8DC8;
    static inline final INT_SAMPLER_2D = 0x8DCA;
    static inline final INT_SAMPLER_3D = 0x8DCB;
    static inline final INT_SAMPLER_CUBE = 0x8DCC;
    static inline final INT_SAMPLER_2D_ARRAY = 0x8DCF;
    static inline final UNSIGNED_INT_SAMPLER_2D = 0x8DD2;
    static inline final UNSIGNED_INT_SAMPLER_3D = 0x8DD3;
    static inline final UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4;
    static inline final UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7;
    static inline final DEPTH_COMPONENT32F = 0x8CAC;
    static inline final DEPTH32F_STENCIL8 = 0x8CAD;
    static inline final FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD;
    static inline final FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210;
    static inline final FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211;
    static inline final FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212;
    static inline final FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213;
    static inline final FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214;
    static inline final FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215;
    static inline final FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216;
    static inline final FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217;
    static inline final FRAMEBUFFER_DEFAULT = 0x8218;
    static inline final UNSIGNED_INT_24_8 = 0x84FA;
    static inline final DEPTH24_STENCIL8 = 0x88F0;
    static inline final UNSIGNED_NORMALIZED = 0x8C17;
    static inline final DRAW_FRAMEBUFFER_BINDING = 0x8CA6;
    static inline final READ_FRAMEBUFFER = 0x8CA8;
    static inline final DRAW_FRAMEBUFFER = 0x8CA9;
    static inline final READ_FRAMEBUFFER_BINDING = 0x8CAA;
    static inline final RENDERBUFFER_SAMPLES = 0x8CAB;
    static inline final FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4;
    static inline final MAX_COLOR_ATTACHMENTS = 0x8CDF;
    static inline final COLOR_ATTACHMENT1 = 0x8CE1;
    static inline final COLOR_ATTACHMENT2 = 0x8CE2;
    static inline final COLOR_ATTACHMENT3 = 0x8CE3;
    static inline final COLOR_ATTACHMENT4 = 0x8CE4;
    static inline final COLOR_ATTACHMENT5 = 0x8CE5;
    static inline final COLOR_ATTACHMENT6 = 0x8CE6;
    static inline final COLOR_ATTACHMENT7 = 0x8CE7;
    static inline final COLOR_ATTACHMENT8 = 0x8CE8;
    static inline final COLOR_ATTACHMENT9 = 0x8CE9;
    static inline final COLOR_ATTACHMENT10 = 0x8CEA;
    static inline final COLOR_ATTACHMENT11 = 0x8CEB;
    static inline final COLOR_ATTACHMENT12 = 0x8CEC;
    static inline final COLOR_ATTACHMENT13 = 0x8CED;
    static inline final COLOR_ATTACHMENT14 = 0x8CEE;
    static inline final COLOR_ATTACHMENT15 = 0x8CEF;
    static inline final FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56;
    static inline final MAX_SAMPLES = 0x8D57;
    static inline final HALF_FLOAT = 0x140B;
    static inline final RG = 0x8227;
    static inline final RG_INTEGER = 0x8228;
    static inline final R8 = 0x8229;
    static inline final RG8 = 0x822B;
    static inline final R16F = 0x822D;
    static inline final R32F = 0x822E;
    static inline final RG16F = 0x822F;
    static inline final RG32F = 0x8230;
    static inline final R8I = 0x8231;
    static inline final R8UI = 0x8232;
    static inline final R16I = 0x8233;
    static inline final R16UI = 0x8234;
    static inline final R32I = 0x8235;
    static inline final R32UI = 0x8236;
    static inline final RG8I = 0x8237;
    static inline final RG8UI = 0x8238;
    static inline final RG16I = 0x8239;
    static inline final RG16UI = 0x823A;
    static inline final RG32I = 0x823B;
    static inline final RG32UI = 0x823C;
    static inline final VERTEX_ARRAY_BINDING = 0x85B5;
    static inline final R8_SNORM = 0x8F94;
    static inline final RG8_SNORM = 0x8F95;
    static inline final RGB8_SNORM = 0x8F96;
    static inline final RGBA8_SNORM = 0x8F97;
    static inline final SIGNED_NORMALIZED = 0x8F9C;
    static inline final COPY_READ_BUFFER = 0x8F36;
    static inline final COPY_WRITE_BUFFER = 0x8F37;
    static inline final COPY_READ_BUFFER_BINDING = 0x8F36;
    static inline final COPY_WRITE_BUFFER_BINDING = 0x8F37;
    static inline final UNIFORM_BUFFER = 0x8A11;
    static inline final UNIFORM_BUFFER_BINDING = 0x8A28;
    static inline final UNIFORM_BUFFER_START = 0x8A29;
    static inline final UNIFORM_BUFFER_SIZE = 0x8A2A;
    static inline final MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B;
    static inline final MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D;
    static inline final MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E;
    static inline final MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F;
    static inline final MAX_UNIFORM_BLOCK_SIZE = 0x8A30;
    static inline final MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31;
    static inline final MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33;
    static inline final UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34;
    static inline final ACTIVE_UNIFORM_BLOCKS = 0x8A36;
    static inline final UNIFORM_TYPE = 0x8A37;
    static inline final UNIFORM_SIZE = 0x8A38;
    static inline final UNIFORM_BLOCK_INDEX = 0x8A3A;
    static inline final UNIFORM_OFFSET = 0x8A3B;
    static inline final UNIFORM_ARRAY_STRIDE = 0x8A3C;
    static inline final UNIFORM_MATRIX_STRIDE = 0x8A3D;
    static inline final UNIFORM_IS_ROW_MAJOR = 0x8A3E;
    static inline final UNIFORM_BLOCK_BINDING = 0x8A3F;
    static inline final UNIFORM_BLOCK_DATA_SIZE = 0x8A40;
    static inline final UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8A42;
    static inline final UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43;
    static inline final UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44;
    static inline final UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46;
    static inline final INVALID_INDEX = 0xFFFFFFFF;
    static inline final MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122;
    static inline final MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125;
    static inline final MAX_SERVER_WAIT_TIMEOUT = 0x9111;
    static inline final OBJECT_TYPE = 0x9112;
    static inline final SYNC_CONDITION = 0x9113;
    static inline final SYNC_STATUS = 0x9114;
    static inline final SYNC_FLAGS = 0x9115;
    static inline final SYNC_FENCE = 0x9116;
    static inline final SYNC_GPU_COMMANDS_COMPLETE = 0x9117;
    static inline final UNSIGNALED = 0x9118;
    static inline final SIGNALED = 0x9119;
    static inline final ALREADY_SIGNALED = 0x911A;
    static inline final TIMEOUT_EXPIRED = 0x911B;
    static inline final CONDITION_SATISFIED = 0x911C;
    static inline final WAIT_FAILED = 0x911D;
    static inline final SYNC_FLUSH_COMMANDS_BIT = 0x00000001;
    static inline final VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE;
    static inline final ANY_SAMPLES_PASSED = 0x8C2F;
    static inline final ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A;
    static inline final SAMPLER_BINDING = 0x8919;
    static inline final RGB10_A2UI = 0x906F;
    static inline final INT_2_10_10_10_REV = 0x8D9F;
    static inline final TRANSFORM_FEEDBACK = 0x8E22;
    static inline final TRANSFORM_FEEDBACK_PAUSED = 0x8E23;
    static inline final TRANSFORM_FEEDBACK_ACTIVE = 0x8E24;
    static inline final TRANSFORM_FEEDBACK_BINDING = 0x8E25;
    static inline final TEXTURE_IMMUTABLE_FORMAT = 0x912F;
    static inline final MAX_ELEMENT_INDEX = 0x8D6B;
    static inline final TEXTURE_IMMUTABLE_LEVELS = 0x82DF;
    static inline final TIMEOUT_IGNORED = -1;
    static inline final MAX_CLIENT_WAIT_TIMEOUT_WEBGL = 0x9247;
    static inline final DEPTH_BUFFER_BIT = 0x00000100;
    static inline final STENCIL_BUFFER_BIT = 0x00000400;
    static inline final COLOR_BUFFER_BIT = 0x00004000;
    static inline final POINTS = 0x0000;
    static inline final LINES = 0x0001;
    static inline final LINE_LOOP = 0x0002;
    static inline final LINE_STRIP = 0x0003;
    static inline final TRIANGLES = 0x0004;
    static inline final TRIANGLE_STRIP = 0x0005;
    static inline final TRIANGLE_FAN = 0x0006;
    static inline final ZERO = 0;
    static inline final ONE = 1;
    static inline final SRC_COLOR = 0x0300;
    static inline final ONE_MINUS_SRC_COLOR = 0x0301;
    static inline final SRC_ALPHA = 0x0302;
    static inline final ONE_MINUS_SRC_ALPHA = 0x0303;
    static inline final DST_ALPHA = 0x0304;
    static inline final ONE_MINUS_DST_ALPHA = 0x0305;
    static inline final DST_COLOR = 0x0306;
    static inline final ONE_MINUS_DST_COLOR = 0x0307;
    static inline final SRC_ALPHA_SATURATE = 0x0308;
    static inline final FUNC_ADD = 0x8006;
    static inline final BLEND_EQUATION = 0x8009;
    static inline final BLEND_EQUATION_RGB = 0x8009;
    static inline final BLEND_EQUATION_ALPHA = 0x883D;
    static inline final FUNC_SUBTRACT = 0x800A;
    static inline final FUNC_REVERSE_SUBTRACT = 0x800B;
    static inline final BLEND_DST_RGB = 0x80C8;
    static inline final BLEND_SRC_RGB = 0x80C9;
    static inline final BLEND_DST_ALPHA = 0x80CA;
    static inline final BLEND_SRC_ALPHA = 0x80CB;
    static inline final CONSTANT_COLOR = 0x8001;
    static inline final ONE_MINUS_CONSTANT_COLOR = 0x8002;
    static inline final CONSTANT_ALPHA = 0x8003;
    static inline final ONE_MINUS_CONSTANT_ALPHA = 0x8004;
    static inline final BLEND_COLOR = 0x8005;
    static inline final ARRAY_BUFFER = 0x8892;
    static inline final ELEMENT_ARRAY_BUFFER = 0x8893;
    static inline final ARRAY_BUFFER_BINDING = 0x8894;
    static inline final ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;
    static inline final STREAM_DRAW = 0x88E0;
    static inline final STATIC_DRAW = 0x88E4;
    static inline final DYNAMIC_DRAW = 0x88E8;
    static inline final BUFFER_SIZE = 0x8764;
    static inline final BUFFER_USAGE = 0x8765;
    static inline final CURRENT_VERTEX_ATTRIB = 0x8626;
    static inline final FRONT = 0x0404;
    static inline final BACK = 0x0405;
    static inline final FRONT_AND_BACK = 0x0408;
    static inline final CULL_FACE = 0x0B44;
    static inline final BLEND = 0x0BE2;
    static inline final DITHER = 0x0BD0;
    static inline final STENCIL_TEST = 0x0B90;
    static inline final DEPTH_TEST = 0x0B71;
    static inline final SCISSOR_TEST = 0x0C11;
    static inline final POLYGON_OFFSET_FILL = 0x8037;
    static inline final SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
    static inline final SAMPLE_COVERAGE = 0x80A0;
    static inline final NO_ERROR = 0;
    static inline final INVALID_ENUM = 0x0500;
    static inline final INVALID_VALUE = 0x0501;
    static inline final INVALID_OPERATION = 0x0502;
    static inline final OUT_OF_MEMORY = 0x0505;
    static inline final CW = 0x0900;
    static inline final CCW = 0x0901;
    static inline final LINE_WIDTH = 0x0B21;
    static inline final ALIASED_POINT_SIZE_RANGE = 0x846D;
    static inline final ALIASED_LINE_WIDTH_RANGE = 0x846E;
    static inline final CULL_FACE_MODE = 0x0B45;
    static inline final FRONT_FACE = 0x0B46;
    static inline final DEPTH_RANGE = 0x0B70;
    static inline final DEPTH_WRITEMASK = 0x0B72;
    static inline final DEPTH_CLEAR_VALUE = 0x0B73;
    static inline final DEPTH_FUNC = 0x0B74;
    static inline final STENCIL_CLEAR_VALUE = 0x0B91;
    static inline final STENCIL_FUNC = 0x0B92;
    static inline final STENCIL_FAIL = 0x0B94;
    static inline final STENCIL_PASS_DEPTH_FAIL = 0x0B95;
    static inline final STENCIL_PASS_DEPTH_PASS = 0x0B96;
    static inline final STENCIL_REF = 0x0B97;
    static inline final STENCIL_VALUE_MASK = 0x0B93;
    static inline final STENCIL_WRITEMASK = 0x0B98;
    static inline final STENCIL_BACK_FUNC = 0x8800;
    static inline final STENCIL_BACK_FAIL = 0x8801;
    static inline final STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;
    static inline final STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;
    static inline final STENCIL_BACK_REF = 0x8CA3;
    static inline final STENCIL_BACK_VALUE_MASK = 0x8CA4;
    static inline final STENCIL_BACK_WRITEMASK = 0x8CA5;
    static inline final VIEWPORT = 0x0BA2;
    static inline final SCISSOR_BOX = 0x0C10;
    static inline final COLOR_CLEAR_VALUE = 0x0C22;
    static inline final COLOR_WRITEMASK = 0x0C23;
    static inline final UNPACK_ALIGNMENT = 0x0CF5;
    static inline final PACK_ALIGNMENT = 0x0D05;
    static inline final MAX_TEXTURE_SIZE = 0x0D33;
    static inline final MAX_VIEWPORT_DIMS = 0x0D3A;
    static inline final SUBPIXEL_BITS = 0x0D50;
    static inline final RED_BITS = 0x0D52;
    static inline final GREEN_BITS = 0x0D53;
    static inline final BLUE_BITS = 0x0D54;
    static inline final ALPHA_BITS = 0x0D55;
    static inline final DEPTH_BITS = 0x0D56;
    static inline final STENCIL_BITS = 0x0D57;
    static inline final POLYGON_OFFSET_UNITS = 0x2A00;
    static inline final POLYGON_OFFSET_FACTOR = 0x8038;
    static inline final TEXTURE_BINDING_2D = 0x8069;
    static inline final SAMPLE_BUFFERS = 0x80A8;
    static inline final SAMPLES = 0x80A9;
    static inline final SAMPLE_COVERAGE_VALUE = 0x80AA;
    static inline final SAMPLE_COVERAGE_INVERT = 0x80AB;
    static inline final COMPRESSED_TEXTURE_FORMATS = 0x86A3;
    static inline final DONT_CARE = 0x1100;
    static inline final FASTEST = 0x1101;
    static inline final NICEST = 0x1102;
    static inline final GENERATE_MIPMAP_HINT = 0x8192;
    static inline final BYTE = 0x1400;
    static inline final UNSIGNED_BYTE = 0x1401;
    static inline final SHORT = 0x1402;
    static inline final UNSIGNED_SHORT = 0x1403;
    static inline final INT = 0x1404;
    static inline final UNSIGNED_INT = 0x1405;
    static inline final FLOAT = 0x1406;
    static inline final DEPTH_COMPONENT = 0x1902;
    static inline final ALPHA = 0x1906;
    static inline final RGB = 0x1907;
    static inline final RGBA = 0x1908;
    static inline final LUMINANCE = 0x1909;
    static inline final LUMINANCE_ALPHA = 0x190A;
    static inline final UNSIGNED_SHORT_4_4_4_4 = 0x8033;
    static inline final UNSIGNED_SHORT_5_5_5_1 = 0x8034;
    static inline final UNSIGNED_SHORT_5_6_5 = 0x8363;
    static inline final FRAGMENT_SHADER = 0x8B30;
    static inline final VERTEX_SHADER = 0x8B31;
    static inline final MAX_VERTEX_ATTRIBS = 0x8869;
    static inline final MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;
    static inline final MAX_VARYING_VECTORS = 0x8DFC;
    static inline final MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;
    static inline final MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;
    static inline final MAX_TEXTURE_IMAGE_UNITS = 0x8872;
    static inline final MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;
    static inline final SHADER_TYPE = 0x8B4F;
    static inline final DELETE_STATUS = 0x8B80;
    static inline final LINK_STATUS = 0x8B82;
    static inline final VALIDATE_STATUS = 0x8B83;
    static inline final ATTACHED_SHADERS = 0x8B85;
    static inline final ACTIVE_UNIFORMS = 0x8B86;
    static inline final ACTIVE_ATTRIBUTES = 0x8B89;
    static inline final SHADING_LANGUAGE_VERSION = 0x8B8C;
    static inline final CURRENT_PROGRAM = 0x8B8D;
    static inline final NEVER = 0x0200;
    static inline final LESS = 0x0201;
    static inline final EQUAL = 0x0202;
    static inline final LEQUAL = 0x0203;
    static inline final GREATER = 0x0204;
    static inline final NOTEQUAL = 0x0205;
    static inline final GEQUAL = 0x0206;
    static inline final ALWAYS = 0x0207;
    static inline final KEEP = 0x1E00;
    static inline final REPLACE = 0x1E01;
    static inline final INCR = 0x1E02;
    static inline final DECR = 0x1E03;
    static inline final INVERT = 0x150A;
    static inline final INCR_WRAP = 0x8507;
    static inline final DECR_WRAP = 0x8508;
    static inline final VENDOR = 0x1F00;
    static inline final RENDERER = 0x1F01;
    static inline final VERSION = 0x1F02;
    static inline final NEAREST = 0x2600;
    static inline final LINEAR = 0x2601;
    static inline final NEAREST_MIPMAP_NEAREST = 0x2700;
    static inline final LINEAR_MIPMAP_NEAREST = 0x2701;
    static inline final NEAREST_MIPMAP_LINEAR = 0x2702;
    static inline final LINEAR_MIPMAP_LINEAR = 0x2703;
    static inline final TEXTURE_MAG_FILTER = 0x2800;
    static inline final TEXTURE_MIN_FILTER = 0x2801;
    static inline final TEXTURE_WRAP_S = 0x2802;
    static inline final TEXTURE_WRAP_T = 0x2803;
    static inline final TEXTURE_2D = 0x0DE1;
    static inline final TEXTURE = 0x1702;
    static inline final TEXTURE_CUBE_MAP = 0x8513;
    static inline final TEXTURE_BINDING_CUBE_MAP = 0x8514;
    static inline final TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
    static inline final TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
    static inline final TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
    static inline final TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
    static inline final TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
    static inline final TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
    static inline final MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
    static inline final TEXTURE0 = 0x84C0;
    static inline final TEXTURE1 = 0x84C1;
    static inline final TEXTURE2 = 0x84C2;
    static inline final TEXTURE3 = 0x84C3;
    static inline final TEXTURE4 = 0x84C4;
    static inline final TEXTURE5 = 0x84C5;
    static inline final TEXTURE6 = 0x84C6;
    static inline final TEXTURE7 = 0x84C7;
    static inline final TEXTURE8 = 0x84C8;
    static inline final TEXTURE9 = 0x84C9;
    static inline final TEXTURE10 = 0x84CA;
    static inline final TEXTURE11 = 0x84CB;
    static inline final TEXTURE12 = 0x84CC;
    static inline final TEXTURE13 = 0x84CD;
    static inline final TEXTURE14 = 0x84CE;
    static inline final TEXTURE15 = 0x84CF;
    static inline final TEXTURE16 = 0x84D0;
    static inline final TEXTURE17 = 0x84D1;
    static inline final TEXTURE18 = 0x84D2;
    static inline final TEXTURE19 = 0x84D3;
    static inline final TEXTURE20 = 0x84D4;
    static inline final TEXTURE21 = 0x84D5;
    static inline final TEXTURE22 = 0x84D6;
    static inline final TEXTURE23 = 0x84D7;
    static inline final TEXTURE24 = 0x84D8;
    static inline final TEXTURE25 = 0x84D9;
    static inline final TEXTURE26 = 0x84DA;
    static inline final TEXTURE27 = 0x84DB;
    static inline final TEXTURE28 = 0x84DC;
    static inline final TEXTURE29 = 0x84DD;
    static inline final TEXTURE30 = 0x84DE;
    static inline final TEXTURE31 = 0x84DF;
    static inline final ACTIVE_TEXTURE = 0x84E0;
    static inline final REPEAT = 0x2901;
    static inline final CLAMP_TO_EDGE = 0x812F;
    static inline final MIRRORED_REPEAT = 0x8370;
    static inline final FLOAT_VEC2 = 0x8B50;
    static inline final FLOAT_VEC3 = 0x8B51;
    static inline final FLOAT_VEC4 = 0x8B52;
    static inline final INT_VEC2 = 0x8B53;
    static inline final INT_VEC3 = 0x8B54;
    static inline final INT_VEC4 = 0x8B55;
    static inline final BOOL = 0x8B56;
    static inline final BOOL_VEC2 = 0x8B57;
    static inline final BOOL_VEC3 = 0x8B58;
    static inline final BOOL_VEC4 = 0x8B59;
    static inline final FLOAT_MAT2 = 0x8B5A;
    static inline final FLOAT_MAT3 = 0x8B5B;
    static inline final FLOAT_MAT4 = 0x8B5C;
    static inline final SAMPLER_2D = 0x8B5E;
    static inline final SAMPLER_CUBE = 0x8B60;
    static inline final VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;
    static inline final VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;
    static inline final VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;
    static inline final VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;
    static inline final VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;
    static inline final VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;
    static inline final VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
    static inline final IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;
    static inline final IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;
    static inline final COMPILE_STATUS = 0x8B81;
    static inline final LOW_FLOAT = 0x8DF0;
    static inline final MEDIUM_FLOAT = 0x8DF1;
    static inline final HIGH_FLOAT = 0x8DF2;
    static inline final LOW_INT = 0x8DF3;
    static inline final MEDIUM_INT = 0x8DF4;
    static inline final HIGH_INT = 0x8DF5;
    static inline final FRAMEBUFFER = 0x8D40;
    static inline final RENDERBUFFER = 0x8D41;
    static inline final RGBA4 = 0x8056;
    static inline final RGB5_A1 = 0x8057;
    static inline final RGB565 = 0x8D62;
    static inline final DEPTH_COMPONENT16 = 0x81A5;
    static inline final STENCIL_INDEX8 = 0x8D48;
    static inline final DEPTH_STENCIL = 0x84F9;
    static inline final RENDERBUFFER_WIDTH = 0x8D42;
    static inline final RENDERBUFFER_HEIGHT = 0x8D43;
    static inline final RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;
    static inline final RENDERBUFFER_RED_SIZE = 0x8D50;
    static inline final RENDERBUFFER_GREEN_SIZE = 0x8D51;
    static inline final RENDERBUFFER_BLUE_SIZE = 0x8D52;
    static inline final RENDERBUFFER_ALPHA_SIZE = 0x8D53;
    static inline final RENDERBUFFER_DEPTH_SIZE = 0x8D54;
    static inline final RENDERBUFFER_STENCIL_SIZE = 0x8D55;
    static inline final FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;
    static inline final FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;
    static inline final FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;
    static inline final FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;
    static inline final COLOR_ATTACHMENT0 = 0x8CE0;
    static inline final DEPTH_ATTACHMENT = 0x8D00;
    static inline final STENCIL_ATTACHMENT = 0x8D20;
    static inline final DEPTH_STENCIL_ATTACHMENT = 0x821A;
    static inline final NONE = 0;
    static inline final FRAMEBUFFER_COMPLETE = 0x8CD5;
    static inline final FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;
    static inline final FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;
    static inline final FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;
    static inline final FRAMEBUFFER_UNSUPPORTED = 0x8CDD;
    static inline final FRAMEBUFFER_BINDING = 0x8CA6;
    static inline final RENDERBUFFER_BINDING = 0x8CA7;
    static inline final MAX_RENDERBUFFER_SIZE = 0x84E8;
    static inline final INVALID_FRAMEBUFFER_OPERATION = 0x0506;
    static inline final UNPACK_FLIP_Y_WEBGL = 0x9240;
    static inline final UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241;
    static inline final CONTEXT_LOST_WEBGL = 0x9242;
    static inline final UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;
    static inline final BROWSER_DEFAULT_WEBGL = 0x9244;
}