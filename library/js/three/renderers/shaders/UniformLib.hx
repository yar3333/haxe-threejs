package js.three.renderers.shaders;

import js.three.math.Vector2;
import js.three.math.Matrix3;
import js.three.math.Color;

@:jsRequire("three", "UniformsLib")
@:native("THREE.UniformsLib")
extern class UniformsLib
{
	static var common : {
		var diffuse : IUniform<Color>;
		var opacity : IUniform<Float>;
		var map : IUniform<Dynamic>;
		var mapTransform : IUniform<Matrix3>;
		var alphaMap : IUniform<Dynamic>;
		var alphaMapTransform : IUniform<Matrix3>;
		var alphaTest : IUniform<Float>;
	};

	static var specularmap : {
        var specularMap : IUniform<Dynamic>; 
        var specularMapTransform : IUniform<Matrix3>;
    };
	
    static var envmap : {
		var envMap : IUniform<Dynamic>;
		var flipEnvMap : IUniform<Float>;
		var reflectivity : IUniform<Float>;
		var ior : IUniform<Float>;
		var refractRatio : IUniform<Float>;
	};

	static var aomap : {
        var aoMap : IUniform<Dynamic>; 
        var aoMapIntensity : IUniform<Float>; 
        var aoMapTransform : IUniform<Matrix3>;
    };

	static var lightmap : {
        var lightMap : IUniform<Float>; 
        var lightMapIntensity : IUniform<Float>; 
        var lightMapTransform : IUniform<Matrix3>;
    };

	static var bumpmap : {
        var bumpMap : IUniform<Dynamic>; 
        var bumpMapTransform : IUniform<Matrix3>; 
        var bumpScale : IUniform<Float>;
    };

	static var normalmap : {
        var normalMap : IUniform<Dynamic>; 
        var normalMapTransform : IUniform<Matrix3>; 
        var normalScale : IUniform<Vector2>;
    };

	static var displacementmap : {
		var displacementMap : IUniform<Dynamic>;
		var displacementMapTransform : IUniform<Matrix3>;
		var displacementScale : IUniform<Float>;
		var displacementBias : IUniform<Float>;
	};

	static var emissivemap : {
        var emissiveMap : IUniform<Dynamic>; 
        var emissiveMapTransform : IUniform<Matrix3>;
    };

	static var metalnessmap : {
        var metalnessMap : IUniform<Dynamic>; 
        var metalnessMapTransform : IUniform<Matrix3>;
    };

	static var roughnessmap : {
        var roughnessMap : IUniform<Dynamic>; 
        var roughnessMapTransform : IUniform<Matrix3>;
    };

	static var gradientmap : {
        var gradientMap : IUniform<Dynamic>;
    };

	static var fog : {
		var fogDensity : IUniform<Float>;
		var fogNear : IUniform<Float>;
		var fogFar : IUniform<Float>;
		var fogColor : IUniform<Color>;
	};

	static var lights : {
		var ambientLightColor : IUniform<Array<Dynamic>>;
		var lightProbe : IUniform<Array<Dynamic>>;
		var directionalLights : {var value : Array<Dynamic>; var properties : {var direction : {}; var color : {};};};
		var directionalLightShadows : {
            var value : Array<Dynamic>; 
            var properties : {
                var shadowBias : {};
                var shadowNormalBias : {};
                var shadowRadius : {};
                var shadowMapSize : {};
		    };
        };
		var directionalShadowMap : IUniform<Array<Dynamic>>;
		var directionalShadowMatrix : IUniform<Array<Dynamic>>;
		var spotLights : {
            var value : Array<Dynamic>; 
            var properties : {
                var color : {};
                var position : {};
                var direction : {};
                var distance : {};
                var coneCos : {};
                var penumbraCos : {};
                var decay : {};
            };
        };
		var spotLightShadows : {
            var value : Array<Dynamic>; 
            var properties : {
                var shadowBias : {};
                var shadowNormalBias : {};
                var shadowRadius : {};
                var shadowMapSize : {};
            };
        };
		var spotLightMap : IUniform<Array<Dynamic>>;
		var spotShadowMap : IUniform<Array<Dynamic>>;
		var spotLightMatrix : IUniform<Array<Dynamic>>;
		var pointLights : {
            var value : Array<Dynamic>; 
            var properties : {
			    var color : {};
                var position : {};
                var decay : {};
                var distance : {};
            };
        };
		var pointLightShadows : {
            var value : Array<Dynamic>; 
            var properties : {
                var shadowBias : {};
                var shadowNormalBias : {};
                var shadowRadius : {};
                var shadowMapSize : {};
                var shadowCameraNear : {};
                var shadowCameraFar : {};
            };
        };
		var pointShadowMap : IUniform<Array<Dynamic>>;
		var pointShadowMatrix : IUniform<Array<Dynamic>>;
		var hemisphereLights : {
            var value : Array<Dynamic>; 
            var properties : {var direction : {}; var skycolor : {}; var groundColor : {};};
        };
		var rectAreaLights : {
            var value : Array<Dynamic>; 
            var properties : {
                var color : {};
                var position : {};
                var width : {};
                var height : {};
            };
        };
		var ltc_1 : IUniform<Dynamic>;
		var ltc_2 : IUniform<Dynamic>;
	};

	static var points : {
		var diffuse : IUniform<Color>;
		var opacity : IUniform<Float>;
		var size : IUniform<Float>;
		var scale : IUniform<Float>;
		var map : IUniform<Dynamic>;
		var alphaMap : IUniform<Dynamic>;
		var alphaTest : IUniform<Float>;
		var uvTransform : IUniform<Matrix3>;
	};
    
	static var sprite : {
		var diffuse : IUniform<Color>;
		var opacity : IUniform<Float>;
		var center : IUniform<Vector2>;
		var rotation : IUniform<Float>;
		var map : IUniform<Dynamic>;
		var mapTransform : IUniform<Matrix3>;
		var alphaMap : IUniform<Dynamic>;
		var alphaTest : IUniform<Float>;
	};
}
