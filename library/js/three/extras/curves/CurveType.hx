package js.three.extras.curves;

enum abstract CurveType(String)
{
	var Curve = "Curve";
	var ArcCurve = "ArcCurve";
	var CatmullRomCurve3 = "CatmullRomCurve3";
	var LineCurve = "LineCurve";
	var LineCurve3 = "LineCurve3";
	var CubicBezierCurve = "CubicBezierCurve";
	var CubicBezierCurve3 = "CubicBezierCurve3";
	var QuadraticBezierCurve = "QuadraticBezierCurve";
	var QuadraticBezierCurve3 = "QuadraticBezierCurve3";
	var SplineCurve = "SplineCurve";
	var Path = "Path";
	var Shape = "Shape";
}