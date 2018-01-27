#include "colors.inc"
#include "shapes.inc"

// ���O�p���iregular-triangle prism�j
// R�F�O�p�`�̔��a�iradius of triangle�j
// H�F�����̔����ihalf height�j
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

// �w�i
background { color LightBlue }

//�J�����ݒ�
camera{
    location <100, 100, 100> //�ʒu<x, y, z>
    look_at <0, 0, 0> //�����_<x, y, z>
    angle 5 //�p�x
}

// ���W��
object { Cylinder_X scale 0.02 pigment{color Red} }	// x��
object { Cylinder_Y scale 0.02 pigment{color Green} }	// y��
object { Cylinder_Z scale 0.02 pigment{color Blue} }	// z��


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
