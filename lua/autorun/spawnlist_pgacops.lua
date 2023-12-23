local sirentable = {
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
		Vector(85,24,16.3),Vector(85,-24,16.3),
	},
	Headlamp_sprites = {   -- highbeam
		{pos = Vector(85,24,16.3),size = 40},
		{pos = Vector(85,-24,16.3),size = 40},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	ems_sounds = {"simulated_vehicles/police/siren_1.wav", "common/null.wav"},
	ems_sprites = {
	-- 1 синяя
		{pos = Vector(22,-10,68),size = 30,material = "sprites/light_ignorez",Colors = {Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.04,},
		{pos = Vector(22,-6,68),size = 30,material = "sprites/light_ignorez",Colors = {Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.04,},
		{pos = Vector(23,-10,68),size = 100,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.04,},
		{pos = Vector(23,-6,68),size = 100,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.04,},
	
	
	-- 3 синяя
			{pos = Vector(7,0,68),size = 30,material = "sprites/light_ignorez",Colors = {Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.03,},
		{pos = Vector(7,-3,68),size = 30,material = "sprites/light_ignorez",Colors = {Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.03,},
		{pos = Vector(7,0,68),size = 100,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.03,},
		{pos = Vector(7,-3,68),size = 100,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.03,},
	
--------------------------------------
--------------------------------------
 -- красная 7
{pos = Vector(-22,-10,68),size = 30,Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.045,},
{pos = Vector(-22,-6,68),size = 30, Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.045,},
{pos = Vector(-23,-10,68),size = 100,Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.045,},
{pos = Vector(-23,-6,68),size = 100,Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.045,},
  -- красная 5
  
{pos = Vector(-7,0,68),size = 30,Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.035,},
{pos = Vector(-7,-3,68),size = 30, Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.035,},
{pos = Vector(-7,0,68),size = 100,Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.035,},
{pos = Vector(-7,-3,68),size = 100,Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.035,},
	
--------------------------------------
--------------------------------------	
-- белая середина (4)
{pos = Vector(0,4,68),size = 60,Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.035,},
{pos = Vector(0,1,68),size = 60, Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.035,},


-- белая 2
{pos = Vector(15,-6,68),size = 60,Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.035,},
{pos = Vector(15,-3,68),size = 60, Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.037,},
	
	-- белая 6
{pos = Vector(-15,-6,68),size = 60,Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.037,},
{pos = Vector(-15,-3,68),size = 60, Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.039,},

	    -----------------зад мигалки!-------------------
				{
			pos = Vector(23.5,-111,38),
			material = "sprites/light_glow02_add_noz",
			size = 25,
			OnBodyGroups = { [6] = {0} },
            Colors = {Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),}, -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
		{
			pos = Vector(-24,-111,38),
			material = "sprites/light_glow02_add_noz",
			size = 25,
			OnBodyGroups = { [6] = {0} },
			Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),}, -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
		
		-----------------Переднии фары-----------------
		
						{
			pos = Vector(27.8,110,31),
			material = "sprites/light_glow02_add_noz",
			size = 45,
			OnBodyGroups = { [6] = {0} },
            Colors = {Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(0,0,0,0),}, -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
		{
			pos = Vector(-27.8,110,31),
			material = "sprites/light_glow02_add_noz",
			size = 45,
			OnBodyGroups = { [6] = {0} },
			Colors = {Color(220,205,160),Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),}, -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
		


	}
}
list.Set( "simfphys_lights", "policelight", sirentable)

local sirentable2 = {
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
		Vector(85,24,16.3),Vector(85,-24,16.3),
	},
	Headlamp_sprites = {   -- highbeam
		{pos = Vector(85,24,16.3),size = 40},
		{pos = Vector(85,-24,16.3),size = 40},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	ems_sounds = {"simulated_vehicles/police/siren_1.wav", "common/null.wav"},
	ems_sprites = {
	-- 1 синяя
		{pos = Vector(-26,-27,83),size = 30,material = "sprites/light_ignorez",Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.04,},
		{pos = Vector(-28,-27,83),size = 120,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.04,},
		
		{pos = Vector(-23,-27,83),size = 30,material = "sprites/light_ignorez",Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.04,},
		{pos = Vector(-21,-27,83),size = 120,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.04,},
	
	
	-- 3 синяя
	
		{pos = Vector(-18,-9,83),size = 30,material = "sprites/light_ignorez",Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.045,},
		{pos = Vector(-20,-9,83),size = 120,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.045,},
		
		{pos = Vector(-15,-9,83),size = 30,material = "sprites/light_ignorez",Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.045,},
		{pos = Vector(-13,-9,83),size = 120,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.045,},
	
--------------------------------------
--------------------------------------
 -- красная 7
		
 	{pos = Vector(-26,27,83),size = 30,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.042,},
	{pos = Vector(-28,27,83),size = 100,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.042,},
	
	{pos = Vector(-23,27,83),size = 30,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.042,},
	{pos = Vector(-21,27,83),size = 100,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.042,},
 
 

  -- красная 5
  
	{pos = Vector(-18,9,83),size = 30,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.045,},
	{pos = Vector(-20,9,83),size = 100,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.045,},
	
	{pos = Vector(-15,9,83),size = 30,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.045,},
	{pos = Vector(-13,9,83),size = 100,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.045,},
	
--------------------------------------
--------------------------------------	
-- белая середина (4)
	{pos = Vector(-13,0,83),size = 60,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.034,},	
	{pos = Vector(-10,0,83),size = 60,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.034,},



-- белая 2
{pos = Vector(-19,18,83),size = 60,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.036,},	
{pos = Vector(-22,18,83),size = 60,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.036,},
	
	-- белая 6
{pos = Vector(-19,-18,83),size = 60,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.039,},	
{pos = Vector(-22,-18,83),size = 60,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.039,},
	
	    -----------------зад мигалки!-------------------
		{pos = Vector(-111,35,46),size = 25,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),},Speed = 0.07,},
	    
		{pos = Vector(-111,-35,46),size = 25,material = "sprites/light_ignorez",Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),},Speed = 0.07,},
		
		 -----------------зад мигалки на бампере!-------------------
		 {pos = Vector(-119,25.5,32),size = 17,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.07,},
		 {pos = Vector(-119,25.5,32),size = 27,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.07,},
		 {pos = Vector(-119,25.3,34),size = 15,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.07,},
		 {pos = Vector(-119,25.3,34),size = 25,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.07,},

		 
		 {pos = Vector(-119,-25.5,32),size = 17,material = "sprites/light_ignorez",Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.07,},
		 {pos = Vector(-119,-25.5,32),size = 27,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.07,},
		 {pos = Vector(-119,-25.3,34),size = 15,material = "sprites/light_ignorez",Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.07,},
		 {pos = Vector(-119,-25.3,34),size = 25,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.07,},
		
		-----------------Переднии фары-----------------
		
						{
			pos = Vector(85,34,37),
			material = "sprites/light_glow02_add_noz",
			size = 45,
			OnBodyGroups = { [6] = {0} },
            Colors = {Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(0,0,0,0),}, -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
		{
			pos = Vector(85,-34,37),
			material = "sprites/light_glow02_add_noz",
			size = 45,
			OnBodyGroups = { [6] = {0} },
			Colors = {Color(220,205,160),Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),}, -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
		
		-----------------Переднии мигалки на кингуру-----------------
		
	    {pos = Vector(105,8,32.5),size = 17,material = "sprites/light_ignorez",Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.07,},
		{pos = Vector(105,7,32.5),size = 47,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.07,},
		
		{pos = Vector(105,6,32.5),size = 17,material = "sprites/light_ignorez",Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.07,},
		{pos = Vector(105,7,32.5),size = 47,material = "sprites/light_ignorez",Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.07,},
		
		////////
		
		 {pos = Vector(105,-8,32.5),size = 17,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.07,},
		{pos = Vector(105,-7,32.5),size = 47,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.07,},
		
		{pos = Vector(105,-6,32.5),size = 17,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.07,},
		{pos = Vector(105,-7,32.5),size = 47,material = "sprites/light_ignorez",Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.07,},
		
	

	}
}
list.Set( "simfphys_lights", "policelight2", sirentable2)

local sirentable3 = {
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
		Vector(85,24,16.3),Vector(85,-24,16.3),
	},
	Headlamp_sprites = {   -- highbeam
		{pos = Vector(85,24,16.3),size = 40},
		{pos = Vector(85,-24,16.3),size = 40},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	ems_sounds = {"simulated_vehicles/police/siren_1.wav", "common/null.wav"},
	ems_sprites = {
	
	
	-- На переднем бампере  -- син
	{pos = Vector(33.8,4.5,37.4),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {0,1,2} },  -- салон
	Colors = {Color(0,255,0,255),Color(0,0,0,0),Color(0,255,0,255),Color(0,0,0,0),Color(0,255,0,255),Color(0,0,0,0),Color(0,255,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.040,},
	
	
	{pos = Vector(105,-14,-10.3+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1,2} },
	Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.040,},
	{pos = Vector(105,-11.5,-10.3+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1,2} },
	Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.040,},
	
	{pos = Vector(105,-14,-10.3+18),size = 40,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1,2} },
	Colors = {Color(0,30,255,255),Color(0,0,0,0),Color(0,30,255,255),Color(0,0,0,0),Color(0,30,255,255),Color(0,0,0,0),Color(0,30,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.040,},
	{pos = Vector(105,-11.5,-10.3+18),size = 40,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1,2} },
	Colors = {Color(0,0,255,255),Color(0,0,0,0),Color(0,30,255,255),Color(0,0,0,0),Color(0,30,255,255),Color(0,0,0,0),Color(0,30,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0)},Speed = 0.040,},
	
	-- На переднем бампере  красная 
	
		{pos = Vector(105,14,-10.3+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1,2} },
	Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.040,},
	{pos = Vector(105,11.5,-10.3+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1,2} },
	Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255)},Speed = 0.040,},
		
	{pos = Vector(105,14,-10.3+18),size = 30,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1,2} },
	Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.040,},
	{pos = Vector(105,11.5,-10.3+18),size = 30,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1,2} },
	Colors = {Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255)},Speed = 0.040,},
	
	////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////
	-------------- основные мигалки ------------   -- Vector(Позиция вперед/назад,Право/лево,высота),
	-- первая синяя
	{pos = Vector(-12,-22,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-12,-16,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	},Speed = 0.040,},
	
	////////////////////////////////////////////
	{pos = Vector(-12,-10,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-12,-4,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////  более синий! ////////////////////////////////////////////
	
	{pos = Vector(-12,-22,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-12,-16,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	},Speed = 0.040,},
	
	////////////////////////////////////////////
	{pos = Vector(-12,-10,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-12,-4,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	
	////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////КРАСНАЯ///////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////
	-------------- основные мигалки ------------   -- Vector(Позиция вперед/назад,Право/лево,высота),
	-- первая синяя
	{pos = Vector(-12,22,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-12,16,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	},Speed = 0.040,},
	
	////////////////////////////////////////////
	{pos = Vector(-12,10,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-12,4,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
    Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////  более красный! ////////////////////////////////////////////
	
	{pos = Vector(-12,22,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-12,16,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	},Speed = 0.040,},
	
	////////////////////////////////////////////
	{pos = Vector(-12,10,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-12,4,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	

////////////////////////////////////////////////////////////////////////////////////////	
//////////////////////////////////////////////// ЗАД ЭТОЙ //////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
	-------------- основные мигалки ------------   -- Vector(Позиция вперед/назад,Право/лево,высота),
	-- первая синяя
	{pos = Vector(-15,-26,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	},Speed = 0.040,},
	//////////////////////////////////////////// боковая синяя (б) 
	
	
	{pos = Vector(-18,-22,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-18,-16,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	},Speed = 0.040,},
	
	////////////////////////////////////////////
	{pos = Vector(-18,-10,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-18,-4,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////  более синий! //////////////////////////////////////////// 
		{pos = Vector(-15,-26,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	},Speed = 0.040,},
	//////////////////////////////////////////// БОКОВАЯ СИНЯЯ!
	
	
	{pos = Vector(-18,-22,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-18,-16,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	},Speed = 0.040,},
	
	////////////////////////////////////////////
	{pos = Vector(-18,-10,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-18,-4,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	
	////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////КРАСНАЯ///////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////
	-------------- основные мигалки ------------   -- Vector(Позиция вперед/назад,Право/лево,высота),
	-- первая красная
	{pos = Vector(-15,26,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	},Speed = 0.040,},
	////////////////////////////////////////////  -- боковая красная (б)
	
	
	{pos = Vector(-18,22,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-18,16,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	},Speed = 0.040,},
	
	////////////////////////////////////////////
	{pos = Vector(-18,10,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-18,4,40+18),size = 15,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
    Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////  более красный! ////////////////////////////////////////////
	
	{pos = Vector(-15,26,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	},Speed = 0.040,},         -- БОКОВАЯ КРАСНАЯ!
	
	
	
	{pos = Vector(-18,22,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-18,16,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	},Speed = 0.040,},
	
	////////////////////////////////////////////
	{pos = Vector(-18,10,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	////////////////////////////////////////////
	{pos = Vector(-18,4,40+18),size = 60,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {1} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	
	
/////////////////////////
	
	
	    -----------------зад мигалки!-------------------
				{
			pos = Vector(-101.5,-27.7+1,13+19.5),
			material = "sprites/light_glow02_add_noz",
			size = 25,
			--OnBodyGroups = { [6] = {0} },
            Colors = {Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),}, -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
		{
			pos = Vector(-101.5,27.7-1,13+19.5),
			material = "sprites/light_glow02_add_noz",
			size = 25,
			--OnBodyGroups = { [6] = {0} },
			Colors = {Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),}, -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
		
		-----------------Переднии фары-----------------
		
						{
			pos = Vector(99,-20.6,1.8+18),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			--OnBodyGroups = { [6] = {0} },
            Colors = {Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(0,0,0,0),}, -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
							{
			pos = Vector(99,-20.6,1.8+18),
			material = "sprites/light_glow02_add_noz",
			size = 55,
			--OnBodyGroups = { [6] = {0} },
            Colors = {Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(0,0,0,0),}, -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
		
		
		
		
		
		{
			pos = Vector(99,20.6,1.8+18),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			--OnBodyGroups = { [6] = {0} },
           Colors = {Color(220,205,160),Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),},  -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
		{
			pos = Vector(99,20.6,1.8+18),
			material = "sprites/light_glow02_add_noz",
			size = 55,
		--	OnBodyGroups = { [6] = {0} },
			Colors = {Color(220,205,160),Color(0,0,0,0),Color(220,205,160),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),}, -- the script will go from color to color
			Speed = 0.07, -- for how long each color will be drawn   --зад фары
		},
		
		
		
		
		
		
		////////////// В салоне! ///////////////////////
		
	--[[{pos = Vector(21,-2,7),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},]]
	
	
	
	
	
		
		--////////////////////////////////////////////////////////////
		--////////////////// Кастомные на 3 б группе перед! /////////////////
		--////////////////////////////////////////////////////////////

		
   {pos = Vector(16,22,30+18),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	},Speed = 0.040,},
	//
	{pos = Vector(16,16,30.5+18),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	},Speed = 0.040,},	
	//
	{pos = Vector(16,9.5,30.8+18),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
		//
	{pos = Vector(16,3,31.1+18),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
    Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	
	//////////////////////////////////// Более син ///////////////////////////////////////
	
	 {pos = Vector(16,22,30+18),size = 16,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	},Speed = 0.040,},
	//
	{pos = Vector(16,16,30.5+18),size = 16,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	},Speed = 0.040,},	
	//
	{pos = Vector(16,9.5,30.8+18),size = 16,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
		//
	{pos = Vector(16,3,31.1+18),size = 16,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
    Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	///////////////////////////////////////// RED! //////////////////////////////////////////////
	///////////////////////////////////////// RED! //////////////////////////////////////////////
	///////////////////////////////////////// RED! //////////////////////////////////////////////
	  {pos = Vector(16,-22,30+18),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	},Speed = 0.040,},
	//
	{pos = Vector(16,-16,30.5+18),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	},Speed = 0.040,},	
	//
	{pos = Vector(16,-9.5,30.8+18),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
		//
	{pos = Vector(16,-3,31.1+18),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
    Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	
	//////////////////////////////////// Более RED ///////////////////////////////////////
	
	 {pos = Vector(16,-22,30+18),size = 16,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	},Speed = 0.040,},
	//
	{pos = Vector(16,-16,30.5+18),size = 16,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	},Speed = 0.040,},	
	//
	{pos = Vector(16,-9.5,30.8+18),size = 16,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
		//
	{pos = Vector(16,-3,31.1+18),size = 16,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
    Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	
	
	
	    --////////////////////////////////////////////////////////////
		--////////////////// Кастомные на 3 б группе зад! /////////////////
		--////////////////////////////////////////////////////////////

		
   {pos = Vector(-46,-19.5,50.7),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	},Speed = 0.040,},
	//
	{pos = Vector(-46,-14,51.3),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	},Speed = 0.040,},	
	//
	{pos = Vector(-46,-8.3,51.6),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
		//
	{pos = Vector(-46,-2.8,51.7),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
    Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	
	//////////////////////////////////// Более син ///////////////////////////////////////
	
	 {pos = Vector(-46,-19.5,50.7),size = 25,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	},Speed = 0.040,},
	//
	{pos = Vector(-46,-14,51.3),size = 25,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	},Speed = 0.040,},	
	//
	{pos = Vector(-46,-8.3,51.6),size = 25,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
		//
	{pos = Vector(-46,-2.8,51.6),size = 25,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
    Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,150,255,255),
	Color(0,150,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	///////////////////////////////////////// RED! //////////////////////////////////////////////
	///////////////////////////////////////// RED! //////////////////////////////////////////////
	///////////////////////////////////////// RED! //////////////////////////////////////////////
	  {pos = Vector(-46,19.5,50.7),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	},Speed = 0.040,},
	//
	{pos = Vector(-46,14,51.3),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	},Speed = 0.040,},	
	//
	{pos = Vector(-46,8.3,51.6),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
		//
	{pos = Vector(-46,2.8,51.6),size = 5,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,255,255,255),Color(0,0,0,0),Color(255,255,255,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
    Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,255,255,255),
	Color(255,255,255,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	
	//////////////////////////////////// Более RED ///////////////////////////////////////
	
	 {pos = Vector(-46,19.5,50.7),size = 25,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	},Speed = 0.040,},
	//
	{pos = Vector(-46,14,51.3),size = 25,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	},Speed = 0.040,},	
	//
	{pos = Vector(-46,8.3,51.6),size = 25,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),
	Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
		//
	{pos = Vector(-46,2.8,51.6),size = 25,material = "sprites/light_ignorez",OnBodyGroups = { [6] = {2} },
	Colors = {
    Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,0,0,255),Color(0,0,0,0),Color(255,30,0,255),Color(0,0,0,0),Color(255,30,0,255),
	-- разделение 1 
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
    Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),Color(255,30,0,255),
	Color(255,30,0,255),Color(0,0,0,0),Color(0,0,0,0),Color(0,0,0,0),
	},Speed = 0.040,},
	
	

	}
}
list.Set( "simfphys_lights", "policelight3", sirentable3)

local V = {
	Name = "Police Sedan",
	Model = "models/NFSMW/copmidsize/COPMIDSIZE_static_fix.mdl",
	Category = Category,
	SpawnOffset = Vector(0,0,0),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1600,
		MaxHealth = 2000,
	
		LightsTable = "policelight",

		FrontWheelRadius = 16,
		RearWheelRadius = 16,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,0),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-1,0,-6),
		SeatPitch = 0,
		SeatYaw = 0,
		
		--[[
		ModelInfo = {
			Bodygroups = {0,0,0,0,0,0,0},
			Color = Color(0,31,127,255),
			Skin = 1,
			WheelColor = Color(100,255,255,50)
		},
		]]--
		
		
		
		ExhaustPositions = {
			{
				pos = Vector(-26,-110,10),
                ang = Angle(90,-90,0),
			},
		},
		
		FrontHeight = 11,
		FrontConstant = 80000,
		FrontDamping = 3000,
		FrontRelativeDamping = 3000,

		RearHeight = 11,
		RearConstant = 80000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*64,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 100,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*220,
		PowerbandStart = 1500,
		PowerbandEnd = 6500,
		Turbocharged = false,
		Supercharged = true,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftlarge",
		snd_pitch = 1.15* 0.7,
		snd_idle = "pga/simulated_vehicles/shelby/idle.wav",
		
		snd_low = "pga/simulated_vehicles/corvette/enginelow.wav",
		snd_low_revdown = "pga/simulated_vehicles/corvette/revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "pga/simulated_vehicles/corvette/enginehigh.wav",
		snd_mid_gearup = "pga/simulated_vehicles/corvette/shiftup.wav",
		snd_mid_geardown = "pga/simulated_vehicles/corvette/shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.6,
		Gears = {-0.12,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_police1", V )

local V = {
	Name = "Police Rhino",
	Model = "models/need for speed most wanted/jeep grand cherokee cop/jeepcherokeepolice.mdl",
	Category = Category,
	SpawnOffset = Vector(0,0,0),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2000,
		MaxHealth = 2100,
	
		LightsTable = "policelight2",
		OnSpawn = function(ent) ent.DriftPower = 0.6 end,

		FrontWheelRadius = 17.5,
		RearWheelRadius = 17.5,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,9),
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 22,
	
		
		CustomWheelModel = "models/need for speed most wanted/jeep grand cherokee cop/jeepgpolicewh.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		--CustomWheelModel_R = "",			-- different model for rear wheels?
		CustomWheelPosFL = Vector(60,38,12),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(60,-38,12),	-- position front right wheel
		CustomWheelPosRL = Vector(-70,38,12),	-- rear left
		CustomWheelPosRR = Vector(-70,-38,12),	-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
        CustomWheelAngleOffset = Angle(0,90,0),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-3,-18,64),
		SeatPitch = 0,
		SeatYaw = 90,
		
		--[[
		ModelInfo = {
			Bodygroups = {0,0,0,0,0,0,0},
			Color = Color(0,31,127,255),
			Skin = 1,
			WheelColor = Color(100,255,255,50)
		},
		]]--
		
		
		
		ExhaustPositions = {
			{
                pos = Vector(-112,-22,15),
                ang = Angle(90,180,0),
        	},
			{
                pos = Vector(-112,22,15),
                ang = Angle(90,180,0),
        	},
		},
		
		FrontHeight = 3.5,
		FrontConstant = 80000,
		FrontDamping = 3000,
		FrontRelativeDamping = 3000,

		RearHeight = 3.5,
		RearConstant = 80000,
		RearDamping = 3000,
		RearRelativeDamping = 3000,
		
		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*95,
		Efficiency = 1.33,
		GripOffset = 0,
		BrakePower = 80,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*116,
		PowerbandStart = 600,
		PowerbandEnd = 7800,
		Turbocharged = false,
		Supercharged = true,
		
		PowerBias = 0,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftlarge",
		snd_pitch = 1.15* 0.5,
		snd_idle = "eziam/raceattack/vehicles/v8_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/v8_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/v8_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/v8_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/v8_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/v8_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.12,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_police2", V )

local V = {
	Name = "Police GTO",
	Model = "models/red_hd_gto/red_hd_gto.mdl",
	Category = Category,
	SpawnOffset = Vector(0,0,0),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1000,
		MaxHealth = 2100,
		OnSpawn = function(ent) ent.DriftPower = 1.5 end,
	
		LightsTable = "policelight3",

		FrontWheelRadius = 14,
		RearWheelRadius = 14,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,0),
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 4,
	
		
		CustomWheelModel = "models/red_hd_gto/red_hd_gto_wheel.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		--CustomWheelModel_R = "",			-- different model for rear wheels?
		CustomWheelPosFL = Vector(65.5,34,11),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(65.5,-34,11),	-- position front right wheel
		CustomWheelPosRL = Vector(-60,34,11),	-- rear left
		CustomWheelPosRR = Vector(-60,-34,11),	-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
        CustomWheelAngleOffset = Angle(0,90,0),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-3,-18,40),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			Skin=1,
			Color=Color(0,0,0),
			Bodygroups = {0,0,0,0,1,1},
			
		},
		
		--[[
		ModelInfo = {
			Bodygroups = {0,0,0,0,0,0,0},
			Color = Color(0,31,127,255),
			Skin = 1,
			WheelColor = Color(100,255,255,50)
		},
		]]--
		
		
		
		ExhaustPositions = {
			{
                pos = Vector(-105,-25,7),
                ang = Angle(90,180,0),
        	},
			
			{
                pos = Vector(-105,25,7),
                ang = Angle(90,180,0),
        	},
		},
		
		FrontHeight = 4,
		FrontConstant = 50000,
		FrontDamping = 1600,
		FrontRelativeDamping = 1600,

		RearHeight = 4,
		RearConstant = 50000,
		RearDamping = 1600,
		RearRelativeDamping = 1600,
		
		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*100,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 80,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*88,
		PowerbandStart = 600,
		PowerbandEnd = 7800,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftlarge",
		snd_pitch = 1.15* 0.78,
		snd_idle = "eziam/raceattack/vehicles/v8_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/v8_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/v8_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/v8_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/v8_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/v8_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.12,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_police3", V )

local V = {
	Name = "Police Rhino Block",
	Model = "models/need for speed most wanted/jeep grand cherokee cop/jeepcherokeepolice.mdl",
	Category = Category,
	SpawnOffset = Vector(0,0,0),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 3000,
		MaxHealth = 2500,
	
		LightsTable = "policelight2",
		OnSpawn = function(ent) ent.roadblock = true end,

		FrontWheelRadius = 17.5,
		RearWheelRadius = 17.5,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,0),
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 22,
	
		
		CustomWheelModel = "models/need for speed most wanted/jeep grand cherokee cop/jeepgpolicewh.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		--CustomWheelModel_R = "",			-- different model for rear wheels?
		CustomWheelPosFL = Vector(60,38,12),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(60,-38,12),	-- position front right wheel
		CustomWheelPosRL = Vector(-70,38,12),	-- rear left
		CustomWheelPosRR = Vector(-70,-38,12),	-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
        CustomWheelAngleOffset = Angle(0,90,0),
		
		CustomSteerAngle = 30,
		
		SeatOffset = Vector(-3,-18,64),
		SeatPitch = 0,
		SeatYaw = 90,
		
		--[[
		ModelInfo = {
			Bodygroups = {0,0,0,0,0,0,0},
			Color = Color(0,31,127,255),
			Skin = 1,
			WheelColor = Color(100,255,255,50)
		},
		]]--
		
		
		
		ExhaustPositions = {
			{
                pos = Vector(-112,-22,15),
                ang = Angle(90,180,0),
        	},
			{
                pos = Vector(-112,22,15),
                ang = Angle(90,180,0),
        	},
		},
		
		FrontHeight = 8,
		FrontConstant = 80000,
		FrontDamping = 5000,
		FrontRelativeDamping = 5000,

		RearHeight = 8,
		RearConstant = 80000,
		RearDamping = 5000,
		RearRelativeDamping = 5000,
		
		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*150,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 140,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*210,
		PowerbandStart = 1500,
		PowerbandEnd = 6500,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftlarge",
		snd_pitch = 1.15* 0.5,
		snd_idle = "pga/simulated_vehicles/shelby/idle.wav",
		
		snd_low = "pga/simulated_vehicles/corvette/enginelow.wav",
		snd_low_revdown = "pga/simulated_vehicles/corvette/revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "pga/simulated_vehicles/corvette/enginehigh.wav",
		snd_mid_gearup = "pga/simulated_vehicles/corvette/shiftup.wav",
		snd_mid_geardown = "pga/simulated_vehicles/corvette/shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.66,
		Gears = {-0.12,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_police2_block", V )

local V = {
	Name = "Police GTO Block",
	Model = "models/red_hd_gto/red_hd_gto.mdl",
	Category = Category,
	SpawnOffset = Vector(0,0,0),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1000,
		MaxHealth = 2000,
		OnSpawn = function(ent) ent.roadblock = true end,
	
		LightsTable = "policelight3",

		FrontWheelRadius = 14,
		RearWheelRadius = 14,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,0),
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 4,
	
		
		CustomWheelModel = "models/red_hd_gto/red_hd_gto_wheel.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		--CustomWheelModel_R = "",			-- different model for rear wheels?
		CustomWheelPosFL = Vector(65.5,34,11),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(65.5,-34,11),	-- position front right wheel
		CustomWheelPosRL = Vector(-60,34,11),	-- rear left
		CustomWheelPosRR = Vector(-60,-34,11),	-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
        CustomWheelAngleOffset = Angle(0,90,0),
		
		CustomSteerAngle = 30,
		
		SeatOffset = Vector(-3,-18,40),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			Skin=1,
			Color=Color(0,0,0),
			Bodygroups = {0,0,0,0,1,1},
			
		},
		
		--[[
		ModelInfo = {
			Bodygroups = {0,0,0,0,0,0,0},
			Color = Color(0,31,127,255),
			Skin = 1,
			WheelColor = Color(100,255,255,50)
		},
		]]--
		
		
		
		ExhaustPositions = {
			{
                pos = Vector(-105,-25,7),
                ang = Angle(90,180,0),
        	},
			
			{
                pos = Vector(-105,25,7),
                ang = Angle(90,180,0),
        	},
		},
		
		FrontHeight = 5,
		FrontConstant = 50000,
		FrontDamping = 2000,
		FrontRelativeDamping = 2000,

		RearHeight = 5,
		RearConstant = 50000,
		RearDamping = 2000,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 1000,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*85,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 100,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*100,
		PowerbandStart = 1500,
		PowerbandEnd = 6500,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftlarge",
		snd_pitch = 1.15* 0.8,
		snd_idle = "pga/simulated_vehicles/shelby/idle.wav",
		
		snd_low = "pga/simulated_vehicles/shelby/low.wav",
		snd_low_revdown = "pga/simulated_vehicles/shelby/revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "pga/simulated_vehicles/shelby/mid.wav",
		snd_mid_gearup = "pga/simulated_vehicles/shelby/second.wav",
		snd_mid_geardown = "pga/simulated_vehicles/shelby/shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.65,
		Gears = {-0.12,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_police3_block", V )