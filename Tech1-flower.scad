module shape() {
    offset (0.1) scale(0.13)  import (file = "Tech1-flower.dxf");
}
module shape_mask() {
    scale(0.13)  import (file = "Tech1-flower_mask.dxf");
}

scale(0.9) difference() {  
   linear_extrude(2.8) shape_mask();
    
   translate([0,0,1.4]) linear_extrude (3.1) shape();
 }