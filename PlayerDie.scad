$fn=30;

Size = 16;
Hole = 1.3;
Spacing = Hole*2 + 1;

module RCube(r=2,x,y,z)
{
    hull(){
      translate([r,r,r]) sphere(r);
      translate([x-r,r,r]) sphere(r);
      translate([r,y-r,r]) sphere(r);
      translate([x-r,y-r,r]) sphere(r);
      translate([r,r,z-r]) sphere(r);
      translate([x-r,r,z-r]) sphere(r);
      translate([r,y-r,z-r]) sphere(r);
      translate([x-r,y-r,z-r]) sphere(r);
    }   
}    

difference() {
    
//base    
RCube(1,Size,Size,Size);

// 1
translate([Size/2,Size/2,0]) sphere(Hole);    

// 2
translate([Size/2-Spacing/2,0,Size/2]) sphere(Hole);    
translate([Size/2+Spacing/2,0,Size/2]) sphere(Hole);    

// 3
translate([Size,Size/2,Size/2+Spacing]) sphere(Hole);    
translate([Size,Size/2,Size/2]) sphere(Hole);    
translate([Size,Size/2,Size/2-Spacing]) sphere(Hole);    

// 4
translate([0,Size/2,Size/2+Spacing*1.5]) sphere(Hole);    
translate([0,Size/2,Size/2+Spacing*0.5]) sphere(Hole);    
translate([0,Size/2,Size/2-Spacing*0.5]) sphere(Hole);    
translate([0,Size/2,Size/2-Spacing*1.5]) sphere(Hole);    

// 5
hull() {
translate([Size/2-Spacing*1.4,Size,Size/2]) sphere(Hole);    
translate([Size/2+Spacing*1.4,Size,Size/2]) sphere(Hole);    
}

// 6
translate([0-Spacing*0.5,0,0]) hull() {
translate([Size/2,Size/2-Spacing*1.4,Size]) sphere(Hole);    
translate([Size/2,Size/2+Spacing*1.4,Size]) sphere(Hole);    
}
translate([Size/2+Spacing*0.5,Size/2,Size]) sphere(Hole);    


}


