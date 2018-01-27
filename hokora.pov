#include "colors.inc"
#include "shapes.inc"

// 正三角柱（regular-triangle prism）
// R：三角形の半径（radius of triangle）
// H：高さの半分（half height）
#macro TriPrism(R, H)
object {
	prism {
		linear_sweep
		linear_spline
		-H, +H
		3,				// number of vertices
		<R*cos(0),      R*sin(0)>	// <x, z>
		<R*cos(2*pi/3), R*sin(2*pi/3)>
		<R*cos(4*pi/3), R*sin(4*pi/3)>
	}
}
#end

// 背景
background { color LightBlue }

//カメラ設定
camera{
    location <100, 100, 100> //位置<x, y, z>
    look_at <0, 0, 0> //注視点<x, y, z>
    angle 5 //角度
}

// 座標軸
object { Cylinder_X scale 0.02 pigment{color Red} }	// x軸
object { Cylinder_Y scale 0.02 pigment{color Green} }	// y軸
object { Cylinder_Z scale 0.02 pigment{color Blue} }	// z軸


light_source{<35, 15, 10> color White}

//merge{
    object{
        box{<0, 0, 0>, <-1, -1, -1>}
        pigment{color Orange}
    }
    object {
    	TriPrism(0.5, 1)
    	pigment { color NeonPink } 
//    	rotate<0, 0, 90>
    }
//}
