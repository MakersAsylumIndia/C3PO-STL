DCMotorOD=40;
shaftDiameter=6;
DcMotorScrewDiameter=13.3;
screwSpacing=3;
nutDiameter=25;
$fn=100;
depth=12;
shoulderDCMount();
bodyMountHoleRadius=22.5;

plateDiameter=60;
module shoulderDCMount()
{
	difference()
	{
		union()
		{
			cylinder(r=plateDiameter/2, h=depth, center=true);
		}

		union()
		{
			nutSpacing();
			screwHoleSpacing();
			bodyMountHole();
			rotate([0,0,120])
			{
				bodyMountHole();
			}

			rotate([0,0,240])
			{
				bodyMountHole();
			}
			
				
		}
	}


}

module nutSpacing()
{
	translate([0,0,(depth-screwSpacing)/2])
	{
		cylinder(r=nutDiameter/2, h=(depth-screwSpacing), center=true );
	}
}

module screwHoleSpacing()
{
	cylinder(r=DcMotorScrewDiameter/2, h=13, center=true );
	
}


module bodyMountHole()
{
	translate([bodyMountHoleRadius,0,0])
	{
		cylinder(r=2, h=13, center=true );
		
	}

	
	

}
