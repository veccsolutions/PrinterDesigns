    x=115;
    y=27.5;
    z=50;

difference()
{

    cube([x, y, z]);
    translate([x / 2, y / 2, 100])
    rotate([-90, 0, 0])
    cylinder(d=135, h=y+1, $fn=100, center=true);
}
translate([x / 2, 0, 35 / 2])
rotate([90, 0, 0])
linear_extrude(3)
    text("#HAZELSTRONG", size=10, halign="center", valign="center");
