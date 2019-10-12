module shape() {
    scale(0.1)  import (file = "Tech3-Shell.dxf");
}
module shape_mask() {
    scale(0.1)  import (file = "Tech3-Shell_mask.dxf");
}

difference() {  
   linear_extrude(2.8)  shape_mask();
    
   translate([0,0,1.4]) linear_extrude (3.1) shape();
 }