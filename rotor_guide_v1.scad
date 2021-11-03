/*
Author: Chris Correll
Date: 11/3/2021
Description: Code for rotor gesture guide for iOS VoiceOver.
URL: https://github.com/funkonaut/rotor_guide

*/

$fn = 300;
h=.25;  
e=.01;
r1=1.5;
r2=1.125; //r1-r2 is outside ring width
r3=.625;  //r2-r3 is slot width
r4=(r2-r3)/2; //finger hole ends

difference(){
    union(){
        //create bulls eye
        union(){
            difference(){    
                cylinder(h=h, r=r1);
                translate([0,0,-e/2])
                  cylinder(h=h+e, r=r2);
            }
            cylinder(h=h, r=r3);
        }
        //add back in a pie slice
        difference(){    
            cylinder(h=h, r=r2);
            translate([0,-r2,-e/2])
              cube([2*r2,2*r2,h+e]);
            translate([-r2,0,-e/2])
              cube([2*r2,2*r2,h+e]);
        }
        //add back in the adjacent pie slice  
        mirror([1,1,0])   
          difference(){    
          cylinder(h=h, r=r2);
          translate([0,-r2,-e/2])
            cube([2*r2,2*r2,h+e]);
          translate([-r2,0,-e/2])
            cube([2*r2,2*r2,h+e]);
          }
     }
     //round the holes ends on the slots
     translate([r3+r4,0,-e/2])
       cylinder(h=h+e, r=r4);
     translate([0,r3+r4,-e/2])
       cylinder(h=h+e, r=r4);
     translate([-(r3+r4),0,-e/2])
       cylinder(h=h+e, r=r4);
     translate([0,-(r3+r4),-e/2])
       cylinder(h=h+e, r=r4);
    }


