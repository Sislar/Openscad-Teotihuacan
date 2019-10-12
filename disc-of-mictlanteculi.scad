module shape() {
    scale(0.1)  import (file = "disc-of-mictlantecutli.stl");
}

translate([0,0,1]) scale(1.5) shape();
cube([10.4,4,1.4]);