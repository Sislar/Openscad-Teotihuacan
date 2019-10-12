module shape() {
    offset (0.15) scale(0.01)  import (file = "icon4.dxf");
}
module shape_mask() {
    offset (0.15) scale(0.01)  import (file = "icon4_mask.dxf");
}

difference() {  
   linear_extrude(3) shape_mask();
    
   translate([0,0,1.5]) linear_extrude (3.1) shape();
 }