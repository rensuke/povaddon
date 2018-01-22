//03-sweep_prism_A.pov
//  POV-Ray  3.6  scene  file  by  Kajiyama

#include  "colors.inc"
#include  "shapes.inc"

//カメラ設定
camera{
 location  <  15,15,-15>
 look_at  <2,4,2>
 angle  45
}
//ライト設定
light_source{
 <15,25,-8>  color  White*1.7
}
//  XYZ座標空間
//  チェック柄の床
object{
 Plane_XZ
 pigment{checker    color  Gray  color  White*0.9}
 translate  <0,0,0>
}  

//  座標系の表示
//  Z軸
cylinder{<0,0,-5>,<0,0,17>,0.05
             pigment{color  Red}
             finish{phong  1  reflection  0.1}
}
cone{<0,0,17>,0.3
         <0,0,18.5>,0
             pigment{color  Red}
}
//  Z文字
cylinder{<-0.5,0.5,0>,<0.5,0.5,0>,0.08
             pigment{color  Red}
             finish{phong  1  reflection  0.1}        
             translate  <0,1.1,19>
}
cylinder{<0.5,0.5,0>,<-0.5,-0.5,0>,0.08
               pigment{color  Red}
               finish{phong  1  reflection  0.1}      
               translate  <0,1.1,19>
}
cylinder{  <-0.5,-0.5,0>,  <0.5,-0.5,0>,0.08
               pigment{color  Red}
               finish{phong  1  reflection  0.1}
               translate  <0,1.1,19>
}
//  X軸
cylinder{<-5,0,0>,<7,0,0>,0.05
               pigment{color  Green}
               finish{phong  1  reflection  0.1}
}
cone{<7,0,0>,0.3
         <8.5,0,0>,0
             pigment{color  Green}
}
//  X文字
cylinder{<-0.5,-0.5,0>,<0.5,0.5,0>,0.08
             pigment{color  Green}
               finish{phong  1  reflection  0.1}
               rotate  y*90        
               translate  <9,1.1,0>
}
cylinder{  <-0.5,0.5,0>,  <0.5,-0.5,0>,0.08
               pigment{color  Green}
               finish{phong  1  reflection  0.1}
               rotate  y*90
               translate  <9,1.1,0>
}

//  Y軸
cylinder{<0,-5,0>,<0,7,0>,0.05
             pigment{color  Blue}
             finish{phong  1  reflection  0.1}
}
cone{<0,7,0>,0.3
         <0,8.5,0>,0
             pigment{color  Blue}
}
//  Y文字
cylinder{<-0.5,0.5,0>,<0,0,0>,0.08
               pigment{color  Blue}
               finish{phong  1  reflection  0.1}              
               translate  <0,9,0>
}
cylinder{<0.5,0.5,0>,<0,0,0>,0.08
               finish{phong  1  reflection  0.1}              
               translate  <0,9,0>
}
cylinder{  <0,0,0>,  <0,-0.5,0>,0.08
               pigment{color  Blue}
               finish{phong  1  reflection  0.1}
               translate  <0,9,0>
}



//■■■XZ平面をY軸に沿ってスイープする角柱
prism{linear_sweep//面を平行にスイープ
1,      //スイープの始点のy座標、角柱の底部の高さ
5,      //スイープの終点のy座標、角柱の頂部の高さ
5,      //頂点の総数
 <0,6>,  <-3,3>,  <-3,-3>,  <3,-3>,  <3,3>   //各頂点のxz座標
             pigment{color  rgb<0.5,0.8,0.4>}
}


text  {
ttf  "timrom.ttf"  
       "prism"  0.05,0
       pigment  {color  Blue  }
       scale  2
       rotate  y*-40        
       translate  <6,2,-1>
       }

background{color  White}