
DCMotorOD=40;
shaftDiameter=6;
DcMotorScrewDiameter=13.3;
screwSpacing=3;
nutDiameter=25;
$fn=100;
depth=5;



bodyMountHoleRadius=27.5;

plateDiameter=65;
squareMountHeight=24;
ArmMount();

module ArmMount()
{
	difference()
	{
		union()
		{
			//cube([16,16,squareMountHeight], center=true);
			cylinder(r=12, h=squareMountHeight, center=true);
			translate([0,0,(squareMountHeight/2-depth/2)])
			{
				cylinder(r=plateDiameter/2,h=depth, center=true);
			}

			translate([0,0,-1])
			{
				cylinder(r1=1, r2=23,h=23, center=true);
			}

			
		}
		union()
		{
			translate([0,0,6])
			{
				cube([12,12,squareMountHeight], center=true);
			}

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

module bodyMountHole()
{
	translate([bodyMountHoleRadius,0,14])
	{
		cylinder(r=2, h=20, center=true );
		
	}

	
	

}