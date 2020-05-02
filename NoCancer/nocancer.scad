difference(){
    cylinder(h=40, d=150,$fn=400);
    translate([0,0,-1])
    cylinder(h=42, d=125, $fn=400);
}

translate([-45, -50, 0])
rotate([0,0,45])
{
    difference()
    {
        cube([140, 10, 40]);
        translate([0, 0, 5])
        {
            cube([140, 10, 30]);
        }
    }
}
translate([0, 0, 15])
linear_extrude(10)
    text("CANCER", size=20, halign="center", valign="center");

translate([-70, -11, 15])
cube([140, 2, 10]);
