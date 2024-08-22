//
// ktRACK37
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 2;

W = 69.5;
D = 37.5;
H = 90.5;


futa();

difference()
{
    union()
    {
        translate([0, 0, 35]) rotate([-45, 0, 0]) base();
       
        rotate([-45, 0, 0]) translate([-W/2, 0, 103]) cube([10, 20, 20]);
        rotate([-45, 0, 0]) translate([W/2-10, 0, 103]) cube([10, 20, 20]);
        
        translate([-W/2, 20, 0]) cube([10, 75, 15]);
        translate([-W/2, 80, 0]) cube([10, 15, 70]);
        translate([W/2-10, 20, 0]) cube([10, 75, 15]);
        translate([W/2-10, 80, 0]) cube([10, 15, 70]);

        translate([-W/2-10, 0, 0]) cube([10, 95, 15]);

    }
   
    translate([0, 0, 35]) rotate([-45, 0, 0]) unit();

    translate([-W/2-7, 0, th]) cube([7, 95, 15]);
   
    translate([-500/2, -500/2, -100]) cube([500, 500, 100]);

   
}

 
 
module base()
{
difference()
{
    union()
    {
        translate([-W/2, -0.5-14-th+7/2+th, -42]) cube([W, 60, 42]);
    }
   
    unit();
   
    translate([-6/2, -7/2-0.5, -16-25]) cube([6, 60, 12]);
}
}
 
module unit()
{
    translate([-W/2, 0, 0]) cube([W, D, H]);
   
    translate([-2.5, -(7+1)/2-0.5+1.5, -16-2]) rotate([0, 0, 0]) cylinder(r1=(7+1)/2, r2=(7+1)/2,  h=16+2, $fn=100);
    translate([2.5, -(7+1)/2-0.5+1.5, -16-2]) rotate([0, 0, 0]) cylinder(r1=(7+1)/2, r2=(7+1)/2,  h=16+2, $fn=100);
    translate([-5/2, -(7+1)-0.5+1.5, -16-2]) cube([5, (7+1), 16+2]);
    translate([0, -(7+1)/2-0.5+0.5, -16-25]) rotate([0, 0, 0]) cylinder(r1=6/2, r2=6/2,  h=25, $fn=100);
    
    translate([-(5+(7+1))/2, -(7+1)-0.5+(7+1)/2+1.5, -16-2]) cube([5+(7+1), (7+1)+50, 16+2]);
    translate([-6/2, -(7+1)-0.5+(7+1)/2, -16-25]) cube([6, (7+1)+50, 25]);
}

module futa()
{
difference()
{
    translate([0, 0, 35]) rotate([-45, 0, 0]) 
    union()
    {
        translate([-(5+(7+1))/2+0.5/2, -(7+1)-0.5+(7+1)/2+1.5, -16-2]) cube([5+(7+1)-0.5, (7+1)+50-0.5, 16+2-0.5]);
        
    }
    
    translate([0, 0, 35]) rotate([-45, 0, 0]) 
    union()
    {
        translate([-2.5, -(7+1)/2-0.5+0.5+1.5, -16-2-1]) rotate([0, 0, 0]) cylinder(r1=(7+1)/2, r2=(7+1)/2,  h=16+2+1, $fn=100);
        translate([2.5, -(7+1)/2-0.5+0.5+1.5, -16-2-1]) rotate([0, 0, 0]) cylinder(r1=(7+1)/2, r2=(7+1)/2,  h=16+2+1, $fn=100);
        translate([-5/2, -(7+1)-0.5+0.5+1.5, -16-2-1]) cube([5, (7+1), 16+2+1]);
    }

    translate([0, -(7+1)/2-0.5-2, 25/2]) rotate([-90, 0, 0]) cylinder(r1=6/2, r2=6/2,  h=25+15, $fn=100);
    
    translate([-6/2, -(7+1)-0.5+(7+1)/2, 0]) cube([6, (7+1)+50, 25/2]);
    translate([-500/2, -500/2, -100]) cube([500, 500, 100]);
}
}