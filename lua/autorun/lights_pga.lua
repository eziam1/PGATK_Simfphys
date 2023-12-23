
local light_table = {
	ModernLights = true,
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector( 99, 28.5, 20 ),
	L_HeadLampAng = Angle(10,5,0),
	R_HeadLampPos = Vector( 99, -28.5, 20 ),
	R_HeadLampAng = Angle(10,-5,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-105,28,20.6),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-105,-28,20.6),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		Vector(85,0,16.3),
	},
	Headlamp_sprites = {   -- highbeam
		{pos = Vector(85,0,16.3),size = 40},
		//{pos = Vector(85,-24,16.3),size = 40},
	},
	/*Rearlight_sprites = {	--taillights
		Vector(-97,25,23.6),
		
		Vector(-97,-25,23.6),
	},
	Brakelight_sprites = {
		Vector(-97,20.6,23.6),
		Vector(-97,-20.6,23.6),
	},
	Reverselight_sprites = {
		Vector(-105.7,9,13),
		Vector(-105.7,-9,13),
	},*/
	
	DelayOn = 0,
	DelayOff = 0,
}
list.Set( "simfphys_lights", "camaro", light_table)