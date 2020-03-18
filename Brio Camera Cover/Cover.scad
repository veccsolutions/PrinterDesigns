extra = 2;
thick = 2;

wide = 102 + extra * 2;
deep = 28 + extra + thick * 2;
port = 15 + extra * 2;
frontHeight = 26 + thick;
backHeight = frontHeight / 2;

difference()
{
    rotate([90, 0, 0])
    {
        hull()
        {
            translate([0, frontHeight / 2, 0])
            {
                translate([frontHeight / 2, 0, 0])
                {
                    cylinder(d = frontHeight, h = thick, $fn = 100);
                }
                translate([wide - frontHeight / 2, 0, 0])
                {
                    cylinder(d = frontHeight, h = thick, $fn = 100);
                }
            }
            translate([0, backHeight / 2, deep - thick * 2])
            {
                translate([backHeight / 2, 0, 0])
                {
                    cylinder(d = backHeight, h = thick, $fn = 100);
                }
                translate([wide - backHeight / 2, 0, 0])
                {
                    cylinder(d = backHeight, h = thick, $fn = 100);
                }
            }
        }
    }
    translate([0, thick - deep, thick])
    {
        cube([wide, deep - thick * 2, frontHeight]);
    }
}

rotate([90, 0, 0])
hull()
{
    translate([0, backHeight / 2, deep - thick * 2])
    {
        translate([backHeight / 2, 0, 0])
        {
            cylinder(d = backHeight, h = thick, $fn = 100);
        }
        translate([wide - backHeight / 2, 0, 0])
        {
            cylinder(d = backHeight, h = thick, $fn = 100);
        }
    }
}