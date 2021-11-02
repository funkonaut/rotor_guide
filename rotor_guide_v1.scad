$fn = 300;
h=.25;
e=.02;
r1=1.5;
r2=1.125;
r3=.625;
r4=(r2-r3)/2; //finger hole ends
difference(){
union(){
    union(){
        difference(){    
            cylinder(h=h-e, r=r1);
            translate([0,0,-e/2])
              cylinder(h=h, r=r2);
        }
        cylinder(h=h, r=r3);
    }
    
     difference(){    
            cylinder(h=h, r=r2);
            translate([0,-r2,-e/2])
              cube([2*r2,2*r2,h+2*e]);
            translate([-r2,0,-e/2])
              cube([2*r2,2*r2,h+2*e]);
         }
      
      mirror([1,1,0])   
          difference(){    
            cylinder(h=h, r=r2);
            translate([0,-r2,-e/2])
              cube([2*r2,2*r2,h+2*e]);
            translate([-r2,0,-e/2])
              cube([2*r2,2*r2,h+2*e]);
         }
 }
 translate([r3+r4,0,0])
   cylinder(h=h+e, r=r4);
 translate([0,r3+r4,0])
   cylinder(h=h+e, r=r4);
 translate([-(r3+r4),0,0])
   cylinder(h=h+e, r=r4);
 translate([0,-(r3+r4),0])
   cylinder(h=h+e, r=r4);
}
// translate([r3+r4/2,0,0])
//   cylinder(h=h*10, r=r4);