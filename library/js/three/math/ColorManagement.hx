package js.three.math;

@:jsRequire("three", "ColorManagement")
@:native("THREE.ColorManagement")
extern class ColorManagement
{
	/**
	 * @default false
	 */
    static var enabled : Bool;

    static var workingColorSpace: WorkingColorSpace;

    static var convert: (color: Color, sourceColorSpace: DefinedColorSpace, targetColorSpace: DefinedColorSpace) -> Color;

    static var fromWorkingColorSpace: (color: Color, targetColorSpace: DefinedColorSpace) -> Color;

    static var toWorkingColorSpace: (color: Color, sourceColorSpace: DefinedColorSpace) -> Color;

    static var getPrimaries: (colorSpace: DefinedColorSpace) -> ColorSpacePrimaries;

    static var getTransfer: (colorSpace: ColorSpace) -> ColorSpaceTransfer;
}
