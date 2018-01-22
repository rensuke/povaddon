// prism �̎���

#include "colors.inc"
#include "shapes.inc"

// ���O�p���iregular-triangle prism�j
// R�F�O�p�`�̔��a�iradius of triangle
// H�F�����̔����ihalf height�j
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

// ���W��
//object { Cylinder_X scale 0.02 pigment{color Red} }	// x��
//object { Cylinder_Y scale 0.02 pigment{color Green} }	// y��
//object { Cylinder_Z scale 0.02 pigment{color Blue} }	// z��

// �w�i
background { color LightBlue }

// ����
light_source {
	<500, 600, -800>
	color White*2
	parallel point_at <0, 0, 0>
}

// �J����
camera {
	location <5.0, 6.0, -8.0>
	look_at <0.0, 0.0, 0.0>
	angle 35
}