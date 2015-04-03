$fn=100;
headMount();
depth=9.5;
servoCenterOffset=10;
module headMount()
{
	difference()
	{
		union()
		{
			cylinder(r=90/2, h=depth, center=true);
		}
		union()
		{
			translate([servoCenterOffset,0,0])
			{
				cutServoSlot();
				cutServoMountHoles();
			}
			
			rotate([0,0,60])
			{
				cutHeadMountHoles();
			}
			rotate([0,0,180])
			{
				cutHeadMountHoles();
			}

			
			rotate([0,0,300])
			{
				cutHeadMountHoles();
			}
			
		}
	}
}

module cutHeadMountHoles()
{
	translate([22,0,0])
	{
		
			cylinder(r=2, h=depth, center=true);
		
	}
}

module cutServoSlot()
{
	cube([40.3, 20, depth],center=true);
}
module cutServoMountHoles()
{
	translate([49/2,5,0])
	{
		cylinder(r=2, h=depth, center=true);
	}
	translate([-49/2,5,0])
	{
		cylinder(r=2, h=depth, center=true);
	}
	translate([49/2,-5,0])
	{
		cylinder(r=2, h=depth, center=true);
	}
	translate([-49/2,-5,0])
	{
		cylinder(r=2, h=depth, center=true);
	}

}


