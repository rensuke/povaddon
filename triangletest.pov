// prism の実験

#include "colors.inc"
#include "shapes.inc"

// 正三角柱（regular-triangle prism）
// R：三角形の半径（radius of triangle
// H：高さの半分（half height）
#macro TriPrism(R, H)
object {
	prism {
		linear_sweep
		linear_spline
		-H, +H
		3				// number of vertices
		<R*cos(0),      R*sin(0)>	// <x, z>
		<R*cos(2*pi/3), R*sin(2*pi/3)>
		<R*cos(4*pi/3), R*sin(4*pi/3)>
	}
}
#end

object {
	TriPrism(1.0, 0.5)
	pigment { color NeonPink } 
	rotate<0, 40, 90>
}

// 座標軸
//object { Cylinder_X scale 0.02 pigment{color Red} }	// x軸
//object { Cylinder_Y scale 0.02 pigment{color Green} }	// y軸
//object { Cylinder_Z scale 0.02 pigment{color Blue} }	// z軸

// 背景
background { color LightBlue }

// 光源
light_source {
	<500, 600, -800>
	color White*2
	parallel point_at <0, 0, 0>
}

// カメラ
camera {
	location <5.0, 6.0, -8.0>
	look_at <0.0, 0.0, 0.0>
	angle 35
}