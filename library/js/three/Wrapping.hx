package js.three;

 /**
 * Texture Wrapping Modes
 * @remarks {@link ClampToEdgeWrapping} is the _default_ value and behaver for Wrapping Mapping.
 * @see {@link https://threejs.org/docs/index.html#api/en/constants/Textures | Texture Constants}
 */
@:jsRequire("three")
@:native("THREE")
extern enum abstract Wrapping(Int)
{
    // Wrapping modes ==========================================

    /** With {@link RepeatWrapping} the texture will simply repeat to infinity. */
    var RepeatWrapping; // = 1000;
    /**
    * With {@link ClampToEdgeWrapping} the last pixel of the texture stretches to the edge of the mesh.
    * @remarks This is the _default_ value and behaver for Wrapping Mapping.
    */
    var ClampToEdgeWrapping; // = 1001;
    /** With {@link MirroredRepeatWrapping} the texture will repeats to infinity, mirroring on each repeat. */
    var MirroredRepeatWrapping; // = 1002;
}