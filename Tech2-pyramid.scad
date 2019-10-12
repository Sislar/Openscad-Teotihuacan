module shape1() {
    scale (0.08) import (file = "Tech2-pyramid_part1.dxf");
}
module shape2() {
    scale (0.08) import (file = "Tech2-pyramid_part2.dxf");
}
module shape3() {
    scale (0.08) import (file = "Tech2-pyramid_part3.dxf");
}
module shape_mask() {
    scale (0.08) import (file = "Tech2-pyramid_mask.dxf");
}


difference() {  
 linear_extrude(2.8) shape_mask();
    
  translate([0,0,1.4]) linear_extrude (3.1) shape1();
  translate([0,0,1.4]) linear_extrude (3.1) shape2();
  translate([0,0,1.4]) linear_extrude (3.1) shape3();

 }