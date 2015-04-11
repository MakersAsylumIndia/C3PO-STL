innerDiameter=6.2;
OuterSquareSide=11.5;
$fn=100;
shaftMount();
module shaftMount()
{

	difference()
	{
		union()
		{
			cube([OuterSquareSide,OuterSquareSide,18], center=true);
		}

		union()
		{
			translate([0,0,2.6])
			{

				cylinder(r=innerDiameter/2, h=25, center=true);
			}
			
			translate([0,0,-2.6])
			{
				rotate([90,0,0])
				{
					cylinder(r=3/2, h=20, center=true);
					translate([0,0,5.5])
					{
						cylinder(r1=1.5, r2=4, h=2, center=true);
					}
					translate([0,0,-5.5])
					{
						cylinder(r1=4, r2=1.5, h=2, center=true);
					}
				}
			}

			
		}

	}



}