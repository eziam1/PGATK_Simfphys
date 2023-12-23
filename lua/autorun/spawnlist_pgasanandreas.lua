local V = {
	Name = "Buffalo",
	Model = "models/GTA_SA/Sport cars/buffalo.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2100,
		MaxHealth = 1920,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ ent.shiftduration = 0.5 end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/banshee_wheel.mdl",
		CustomWheelPosFL = Vector(55,34,-21),
		CustomWheelPosFR = Vector(55,-34,-21),
		CustomWheelPosRL = Vector(-56,34,-21),
		CustomWheelPosRR = Vector(-56,-34,-21),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 16,
		RearWheelRadius = 16,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,12),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-18,-17,14),
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
				pos = Vector(-95,-18,-18),
				ang = Angle(90,165,0),
			},	
			{
				pos = Vector(-95,18,-18),
				ang = Angle(90,165,0),
			}		
		},
		
		FrontHeight = 0,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 0,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*96,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 36,
		
		IdleRPM = 600,
		LimitRPM = 7000,
		Revlimiter = false,
		PeakTorque = 1.5*136,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
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
		
		DifferentialGear = 0.5*0.78,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_buffalo", V )

local V = {
	Name = "Bullet",
	Model = "models/GTA_SA/Sport cars/bullet.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1700,
		MaxHealth = 1100,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/banshee_wheel.mdl",
		CustomWheelPosFL = Vector(55,30,-13),
		CustomWheelPosFR = Vector(55,-30,-13),
		CustomWheelPosRL = Vector(-54,30,-13),
		CustomWheelPosRR = Vector(-54,-30,-13),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-10,-17,9),
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
				pos = Vector(-80,23,-9.5),
				ang = Angle(90,165,0)
			},
			{
				pos = Vector(-80,-23,-9.5),
				ang = Angle(90,165,0)
			}
		},
		
		FrontHeight = 1,
		FrontConstant = 29000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 1,
		RearConstant = 32000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*80*1.1,
		Efficiency = 1.33,
		GripOffset = -1,
		BrakePower = 45,
		
		IdleRPM = 750,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*108,
		PowerbandStart = 1500,
		PowerbandEnd = 6250,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftbig",
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
		
		DifferentialGear = 0.475,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_bullet", V )

local V = {
	Name = "Cheetah",
	Model = "models/GTA_SA/Sport cars/cheetah.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1700,
		MaxHealth = 1150,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/cheetah_wheel.mdl",
		CustomWheelPosFL = Vector(57,34,-17),
		CustomWheelPosFR = Vector(57,-34,-17),
		CustomWheelPosRL = Vector(-58,34,-17),
		CustomWheelPosRR = Vector(-58,-34,-17),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-8,-15,6),
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
				pos = Vector(-85,13,-18),
				ang = Angle(90,165,0),
			},	
			{
				pos = Vector(-85,-13,-18),
				ang = Angle(90,165,0),
			},		
		},
		
		FrontHeight = 2,
		FrontConstant = 29000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 2,
		RearConstant = 32000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*86*1.1,
		Efficiency = 1.25,
		GripOffset = -15,
		BrakePower = 55,
		
		IdleRPM = 800,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*110,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftbig",
		snd_pitch = 1.15* 0.78,
		snd_idle = "eziam/raceattack/vehicles/300c_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/300c_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/300c_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/300c_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/300c_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/300c_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.44,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_cheetah", V )

local V = {
	Name = "Euros",
	Model = "models/GTA_SA/Sport cars/euros.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1800,
		MaxHealth = 1700,
		OnSpawn = function(ent) ent.DriftPower = 0.8 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.8,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/euros_wheel.mdl",
		CustomWheelPosFL = Vector(54,37,-18),
		CustomWheelPosFR = Vector(54,-37,-18),
		CustomWheelPosRL = Vector(-58.5,37,-18),
		CustomWheelPosRR = Vector(-58.5,-37,-18),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-15,-17,11),
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
				pos = Vector(-98,25,-16),
				ang = Angle(90,165,0),
			},	
			{
				pos = Vector(-98,-25,-16),
				ang = Angle(90,165,0),
			}		
		},
		
		FrontHeight = 2,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 2,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*88,
		Efficiency = 1.25,
		GripOffset = 2,
		BrakePower = 35,
		
		IdleRPM = 750,
		LimitRPM = 8500,
		Revlimiter = false,
		PeakTorque = 1.5*86,
		PowerbandStart = 1500,
		PowerbandEnd = 6800,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 0,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.7,
		snd_idle = "pga/simulated_vehicles/nissan/idle.wav",
		
		snd_low = "pga/simulated_vehicles/nissan/enginelow.wav",
		snd_low_revdown = "pga/simulated_vehicles/nissan/revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "pga/simulated_vehicles/nissan/enginehigh.wav",
		snd_mid_gearup = "pga/simulated_vehicles/nissan/shiftup.wav",
		snd_mid_geardown = "pga/simulated_vehicles/nissan/shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.465,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_euros", V )

local V = {
	Name = "Hotknife",
	Model = "models/GTA_SA/Sport cars/hotknife.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1250,
		MaxHealth = 2000,
		OnSpawn = function(ent) ent.DriftPower = 0 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ ent.shiftduration = 0.7 ent.preturned = true end,
		DriftPower = 0,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/hotknife_wheel.mdl",
		CustomWheelPosFL = Vector(65,32,-22),
		CustomWheelPosFR = Vector(65,-32,-22),
		CustomWheelPosRL = Vector(-50,34,-20),
		CustomWheelPosRR = Vector(-50,-34,-20),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 14,
		RearWheelRadius = 14,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(3,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-22,-12,7),
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
				pos = Vector(34.5,31,-1.5),
				ang = Angle(75,150,0),
			},	
			{
				pos = Vector(29.5,31,-1.5),
				ang = Angle(75,150,0),
			},				{
				pos = Vector(27.5,31,-1.5),
				ang = Angle(75,150,0),
			},				{
				pos = Vector(23.5,31,-1.5),
				ang = Angle(75,150,0),
			},					
			{
				pos = Vector(34.5,-31,-1.5),
				ang = Angle(75,210,0),
			},	
			{
				pos = Vector(29.5,-31,-1.5),
				ang = Angle(75,210,0),
			},				
			{
				pos = Vector(27.5,-31,-1.5),
				ang = Angle(75,210,0),
			},		
			{
				pos = Vector(23.5,-31,-1.5),
				ang = Angle(75,210,0),
			}
		},
		
		FrontHeight = 2,
		FrontConstant = 39000,
		FrontDamping = 1500,
		FrontRelativeDamping = 1500,
		
		RearHeight = 2,
		RearConstant = 42000,
		RearDamping = 1500,
		RearRelativeDamping = 1500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*52.5*1.1,
		Efficiency = 1.5,
		GripOffset = -1,
		BrakePower = 20,
		
		IdleRPM = 750,
		LimitRPM = 9000,
		Revlimiter = false,
		PeakTorque = 1.5*107,
		PowerbandStart = 1500,
		PowerbandEnd = 7800,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftlarge",
		snd_pitch = 1.1,
		snd_idle = "eziam/raceattack/vehicles/monstertruck_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/monstertruck_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/monstertruck_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/monstertruck_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/monstertruck_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/monstertruck_shiftdown.wav",

		snd_mid_pitch = 0.5,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.44,
		Gears = {-0.16,0,0.14,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_hotknife", V )

local V = {
	Name = "Infernus",
	Model = "models/GTA_SA/Sport cars/infernus.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1700,
		MaxHealth = 1300,
		OnSpawn = function(ent) /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/banshee_wheel.mdl",
		CustomWheelPosFL = Vector(61.5,34,-18),
		CustomWheelPosFR = Vector(61.5,-34,-18),
		CustomWheelPosRL = Vector(-61.5,34,-18),
		CustomWheelPosRR = Vector(-61.5,-34,-18),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-6,-17,11),
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
				pos = Vector(-92,11.25,-16),
				ang = Angle(90,165,0),
			},		
			{
				pos = Vector(-92,-11.25,-16),
				ang = Angle(90,165,0),
			}		
		},
		
		FrontHeight = 0,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 0,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*75,
		Efficiency = 1.25,
		GripOffset = 2,
		BrakePower = 32,
		
		IdleRPM = 750,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*93,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 0,
		
		EngineSoundPreset = -1,
		
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
		
		DifferentialGear = 0.415,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_infernus", V )

local V = {
	Name = "Phoenix",
	Model = "models/GTA_SA/Sport cars/phoenix.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2100,
		MaxHealth = 1700,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/hotknife_wheel.mdl",
		CustomWheelPosFL = Vector(58,38,-18),
		CustomWheelPosFR = Vector(58,-38,-18),
		CustomWheelPosRL = Vector(-57.5,38,-18),
		CustomWheelPosRR = Vector(-57.5,-38,-18),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(3,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-15,-17,8),
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
				pos = Vector(-96.5,20.5,-20),
				ang = Angle(90,165,0),
			},	
			{
				pos = Vector(-96.5,-20.5,-20),
				ang = Angle(90,165,0),
			}		
		},
		
		FrontHeight = 5,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 5,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*102,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 40,
		
		IdleRPM = 600,
		LimitRPM = 7000,
		Revlimiter = false,
		PeakTorque = 1.5*148,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15* 0.75,
		snd_idle = "pga/simulated_vehicles/shelby/idle.wav",
		
		snd_low = "pga/simulated_vehicles/muscle/enginelow.wav",
		snd_low_revdown = "pga/simulated_vehicles/muscle/revdown.wav",
		snd_low_pitch = 1.0,
		
		snd_mid = "pga/simulated_vehicles/muscle/enginehigh.wav",
		snd_mid_gearup = "pga/simulated_vehicles/muscle/shiftup.wav",
		snd_mid_geardown = "pga/simulated_vehicles/muscle/shiftdown.wav",

		snd_mid_pitch = 1,
		
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.725*0.9,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_phoenix", V )

local V = {
	Name = "Super GT",
	Model = "models/GTA_SA/Sport cars/supergt.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1800,
		MaxHealth = 1500,
		OnSpawn = function(ent) ent.DriftPower = 1.16 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 1.16,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/supergt_wheel.mdl",
		CustomWheelPosFL = Vector(44,32,-17),
		CustomWheelPosFR = Vector(44,-32,-17),
		CustomWheelPosRL = Vector(-60.2,33,-17),
		CustomWheelPosRR = Vector(-60.2,-33,-17),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-22,-17,9),
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
				pos = Vector(-89,19.5,-18),
				ang = Angle(90,165,0),
			},	
			{
				pos = Vector(-89,-19.5,-18),
				ang = Angle(90,165,0),
			}		
		},
		
		FrontHeight = 2,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 2,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*88,
		Efficiency = 1.25,
		GripOffset = 2,
		BrakePower = 35,
		
		IdleRPM = 750,
		LimitRPM = 8500,
		Revlimiter = false,
		PeakTorque = 1.5*86,
		PowerbandStart = 1500,
		PowerbandEnd = 6800,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.6,
		snd_idle = "eziam/raceattack/vehicles/evo_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/evo_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/evo_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/evo_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/evo_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/evo_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_supergt", V )

local V = {
	Name = "Turismo",
	Model = "models/GTA_SA/Sport cars/turismo.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1500,
		MaxHealth = 720,
		OnSpawn = function(ent) ent.DriftPower = 0 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/turismo_wheel.mdl",
		CustomWheelPosFL = Vector( 46.92204, 32.436,-9),
		CustomWheelPosFR = Vector( 46.92204,-32.436,-9),
		CustomWheelPosRL = Vector(-61.20108, 32.436,-9),
		CustomWheelPosRR = Vector(-61.20108,-32.436,-9),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(-1,0,5),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-15,-17,10),
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
				pos = Vector(-92.30256,0,-13.278168),
				ang = Angle(90,180,0),
			}	
		},
		
		FrontHeight = 6,
		FrontConstant = 29000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 6,
		RearConstant = 32000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*66*1.1,
		Efficiency = 1.5,
		GripOffset = -2,
		BrakePower = 40,
		
		IdleRPM = 800,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*93,
		PowerbandStart = 1500,
		PowerbandEnd = 7400,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 0,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftbig",
		snd_pitch = 1.15* 0.66,
		snd_idle = "eziam/raceattack/vehicles/mclarenf1_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/mclarenf1_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/mclarenf1_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/mclarenf1_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/mclarenf1_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/mclarenf1_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.498,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_turismo", V )

local V = {
	Name = "Windsor",
	Model = "models/GTA_SA/Sport cars/windsor.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1700,
		MaxHealth = 1150,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/windsor_wheel.mdl",
		CustomWheelPosFL = Vector( 55.12572, 26.027532,-11),
		CustomWheelPosFR = Vector( 55.12572,-26.027532,-11),
		CustomWheelPosRL = Vector(-55.61388, 26.027532,-11),
		CustomWheelPosRR = Vector(-55.61388,-26.027532,-11),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,5),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-15,-16,12),
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
				pos = Vector(-81.57852, 4.9761,-13.689756),
				ang = Angle(90,180,0),
			},	
			{
				pos = Vector(-81.57852,-4.9761,-13.689756),
				ang = Angle(90,180,0),
			}		
		},
		
		FrontHeight = 7,
		FrontConstant = 29000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 7,
		RearConstant = 32000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*92,
		Efficiency = 1.25,
		GripOffset = -15,
		BrakePower = 45,
		
		IdleRPM = 800,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*112,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15* 0.75,
		snd_idle = "pga/simulated_vehicles/shelby/idle.wav",
		
		snd_low = "pga/simulated_vehicles/muscle/enginelow.wav",
		snd_low_revdown = "pga/simulated_vehicles/muscle/revdown.wav",
		snd_low_pitch = 1.0,
		
		snd_mid = "pga/simulated_vehicles/muscle/enginehigh.wav",
		snd_mid_gearup = "pga/simulated_vehicles/muscle/shiftup.wav",
		snd_mid_geardown = "pga/simulated_vehicles/muscle/shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.43,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_windsor", V )

local V = {
	Name = "ZR-350",
	Model = "models/GTA_SA/Sport cars/zr350.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1900,
		MaxHealth = 1450,
		OnSpawn = function(ent) ent.DriftPower = 1.4 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 1.4,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/zr350_wheel.mdl",
		CustomWheelPosFL = Vector( 61.34616, 36.8028,-11.52),
		CustomWheelPosFR = Vector( 61.34616,-36.8028,-11.52),
		CustomWheelPosRL = Vector(-58.33584, 36.8028,-11.52),
		CustomWheelPosRR = Vector(-58.33584,-36.8028,-11.52),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-15,-17,10),
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
				pos = Vector(-101.26152,-21.16638,-15.995268),
				ang = Angle(90,165,0),
			}	
		},
		
		FrontHeight = 5,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 5,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*98,
		Efficiency = 1.25,
		GripOffset = 3,
		BrakePower = 32,
		
		IdleRPM = 750,
		LimitRPM = 9000,
		Revlimiter = false,
		PeakTorque = 1.5*91,
		PowerbandStart = 1500,
		PowerbandEnd = 7500,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.68,
		snd_idle = "pga/simulated_vehicles/mazda/idle.wav",
		
		snd_low = "pga/simulated_vehicles/mazda/enginelow.wav",
		snd_low_revdown = "pga/simulated_vehicles/mazda/revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "pga/simulated_vehicles/mazda/engine.wav",
		snd_mid_gearup = "pga/simulated_vehicles/mazda/shiftup.wav",
		snd_mid_geardown = "pga/simulated_vehicles/mazda/shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.44,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_zr350", V )

local V = {
	Name = "Blade",
	Model = "models/GTA_SA/lowriders/blade.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2050,
		MaxHealth = 2050,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/lowriders/blade_wheel.mdl",
		CustomWheelPosFL = Vector(62.93772,32.4,-13.3),
		CustomWheelPosFR = Vector(62.93772,-32.4,-13.3),
		CustomWheelPosRL = Vector(-62.25012,32.4,-13.3),
		CustomWheelPosRR = Vector(-62.25012,-32.4,-13.3),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 16,
		RearWheelRadius = 16,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(3,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-13,-18,12),
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
				pos = Vector(-106.89192,-18.106848,-19.265616),
				ang = Angle(90,180,0),
			},
			{
				pos = Vector(-106.89192,18.106848,-19.265616),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 6,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 6,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*87,
		Efficiency = 1.33,
		GripOffset = 0,
		BrakePower = 35,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*190,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15* 0.7,
		snd_idle = "eziam/raceattack/vehicles/muscle2_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/muscle2_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/muscle2_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/muscle2_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/muscle2_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/muscle2_shiftdown.wav",

		snd_mid_pitch = 1,
		
		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 0.7,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 0.75,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.5*0.9,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_blade", V )

local V = {
	Name = "Voodoo",
	Model = "models/GTA_SA/lowriders/voodoo.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2300,
		MaxHealth = 1900,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/lowriders/voodoo_wheel.mdl",
		CustomWheelPosFL = Vector( 67.98564, 33.552,-15),
		CustomWheelPosFR = Vector( 67.98564,-33.552,-15),
		CustomWheelPosRL = Vector(-67.82364, 33.552,-15),
		CustomWheelPosRR = Vector(-67.82364,-33.552,-15),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 16,
		RearWheelRadius = 16,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(3,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-13,-18,12),
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
				pos = Vector(-106.89192,-18.106848,-19.265616),
				ang = Angle(90,180,0),
			},
			{
				pos = Vector(-106.89192,18.106848,-19.265616),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 6,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 6,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*94,
		Efficiency = 1.33,
		GripOffset = 0,
		BrakePower = 35,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*220,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15* 0.7,
		snd_idle = "eziam/raceattack/vehicles/muscle2_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/muscle2_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/muscle2_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/muscle2_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/muscle2_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/muscle2_shiftdown.wav",

		snd_mid_pitch = 1,
		
		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 0.7,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 0.75,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.5*0.9,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_voodoo", V )

local V = {
	Name = "Slamvan",
	Model = "models/GTA_SA/lowriders/slamvan.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 3200,
		MaxHealth = 1860,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ ent.shiftduration = 0.5 end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/lowriders/slamvan_wheel.mdl",
		CustomWheelPosFL = Vector( 57.08448, 35.028,-14),
		CustomWheelPosFR = Vector( 57.08448,-35.028,-14),
		CustomWheelPosRL = Vector(-58.26996, 35.028,-14),
		CustomWheelPosRR = Vector(-58.26996,-35.028,-14),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 16,
		RearWheelRadius = 16,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,18),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-3,-15,14),
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
				pos = Vector(-97.9542,-12.55788,-19.97496),
				ang = Angle(90,180,0),
			},
			{
				pos = Vector(-97.9542, 12.55788,-19.97496),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 5,
		FrontConstant = 168000,
		FrontDamping = 5000,
		FrontRelativeDamping = 5000,
		
		RearHeight = 5,
		RearConstant = 163500,
		RearDamping = 5000,
		RearRelativeDamping = 5000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*110,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 75,
		
		IdleRPM = 600,
		LimitRPM = 7000,
		Revlimiter = false,
		PeakTorque = 1.5*265,
		PowerbandStart = 1500,
		PowerbandEnd = 5600,
		Turbocharged = false,
		Supercharged = false,
		
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
		
		DifferentialGear = 0.57*0.78,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_slamvan", V )

local V = {
	Name = "Elegy",
	Model = "models/GTA_SA/tuners/elegy.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1600,
		MaxHealth = 1200,
		OnSpawn = function(ent) ent.DriftPower = 1.16 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 1.16,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/tuners/elegy_wheel.mdl",
		CustomWheelPosFL = Vector(56,33,-14),
		CustomWheelPosFR = Vector(56,-33,-14),
		CustomWheelPosRL = Vector(-47,33,-14),
		CustomWheelPosRR = Vector(-47,-33,-14),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,12),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-10,-16,14),
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
				pos = Vector(-87,-17,-15),
				ang = Angle(90,180,0),
			},{
				pos = Vector(-87,17,-15),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 1,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 1,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*90,
		Efficiency = 1.25,
		GripOffset = 1,
		BrakePower = 35,
		
		IdleRPM = 750,
		LimitRPM = 10000,
		Revlimiter = false,
		PeakTorque = 1.5*92,
		PowerbandStart = 1500,
		PowerbandEnd = 6800,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.7,
		snd_idle = "pga/simulated_vehicles/nissan/idle.wav",
		
		snd_low = "pga/simulated_vehicles/skyline/enginelow.wav",
		snd_low_revdown = "pga/simulated_vehicles/skyline/revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "pga/simulated_vehicles/skyline/enginehigh.wav",
		snd_mid_gearup = "pga/simulated_vehicles/skyline/shiftup.wav",
		snd_mid_geardown = "pga/simulated_vehicles/skyline/shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.33,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_elegy", V )

local V = {
	Name = "Flash",
	Model = "models/GTA_SA/tuners/flash.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1300,
		MaxHealth = 2400,
		OnSpawn = function(ent) ent.DriftPower = 1.25 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 1.25,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/tuners/flash_wheel.mdl",
		CustomWheelPosFL = Vector(50,30,-12),
		CustomWheelPosFR = Vector(50,-30,-12),
		CustomWheelPosRL = Vector(-50,30,-12),
		CustomWheelPosRR = Vector(-50,-30,-12),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,11),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-10,-16,11),
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
				pos = Vector(-75,-17,-15),
				ang = Angle(90,180,0),
			},{
				pos = Vector(-75,17,-15),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 1.5,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 1.5,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*81,
		Efficiency = 1.33,
		GripOffset = 2,
		BrakePower = 30,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*52,
		PowerbandStart = 1500,
		PowerbandEnd = 6600,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.75,
		snd_idle = "eziam/raceattack/vehicles/corolla_tuned_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/corolla_tuned_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/corolla_tuned_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/corolla_tuned_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/corolla_tuned_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/corolla_tuned_shiftdown.wav",

		snd_mid_pitch = 1,

		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.441,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_flash", V )

local V = {
	Name = "Blista Compact",
	Model = "models/GTA_SA/coupes_hatchbacks/blistac.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1500,
		MaxHealth = 2500,
		OnSpawn = function(ent) ent.DriftPower = 1.25 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 1.25,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/coupes_hatchbacks/blistac_wheel.mdl",
		CustomWheelPosFL = Vector(51.4,32,-11.1),
		CustomWheelPosFR = Vector(51.4,-32,-11.1),
		CustomWheelPosRL = Vector(-50,32,-11.1),
		CustomWheelPosRR = Vector(-50,-32,-11.1),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-13,-18,14),
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
				pos = Vector(-77,-19.8,-17.2),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 4,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 4,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*81,
		Efficiency = 1.33,
		GripOffset = 2,
		BrakePower = 30,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*61,
		PowerbandStart = 1500,
		PowerbandEnd = 6600,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.75,
		snd_idle = "eziam/raceattack/vehicles/corolla_tuned_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/corolla_tuned_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/corolla_tuned_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/corolla_tuned_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/corolla_tuned_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/corolla_tuned_shiftdown.wav",

		snd_mid_pitch = 1,

		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.4187,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_blista", V )

local V = {
	Name = "Jester",
	Model = "models/GTA_SA/tuners/jester.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2200,
		MaxHealth = 1900,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/tuners/jester_wheel.mdl",
		CustomWheelPosFL = Vector(53,35,-12),
		CustomWheelPosFR = Vector(53,-35,-12),
		CustomWheelPosRL = Vector(-52,35,-12),
		CustomWheelPosRR = Vector(-52,-35,-12),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,13),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-13,-16,15),
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
				pos = Vector(-84,-21,-13),
				ang = Angle(90,180,0),
			},{
				pos = Vector(-84,21,-13),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 4,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 4,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*95,
		Efficiency = 1.33,
		GripOffset = 2.5,
		BrakePower = 35,
		
		IdleRPM = 750,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*125,
		PowerbandStart = 1500,
		PowerbandEnd = 5800,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.7,
		snd_idle = "pga/simulated_vehicles/nissan/idle.wav",
		
		snd_low = "pga/simulated_vehicles/nissan/enginelow.wav",
		snd_low_revdown = "pga/simulated_vehicles/nissan/revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "pga/simulated_vehicles/nissan/enginehigh.wav",
		snd_mid_gearup = "pga/simulated_vehicles/nissan/shiftup.wav",
		snd_mid_geardown = "pga/simulated_vehicles/nissan/shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.5,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_jester", V )

local V = {
	Name = "Sultan",
	Model = "models/GTA_SA/tuners/sultan.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1700,
		MaxHealth = 1400,
		OnSpawn = function(ent) ent.DriftPower = 0.75 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.75,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/tuners/sultan_wheel.mdl",
		CustomWheelPosFL = Vector(56,34,-12),
		CustomWheelPosFR = Vector(56,-34,-12),
		CustomWheelPosRL = Vector(-52,34,-12),
		CustomWheelPosRR = Vector(-52,-34,-12),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,12),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-2,-18,15),
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
				pos = Vector(-90,-16,-14),
				ang = Angle(90,180,0),
			},{
				pos = Vector(-90,16,-14),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 2,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 2,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*80,
		Efficiency = 1.25,
		GripOffset = 2,
		BrakePower = 32,
		
		IdleRPM = 750,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*82,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 0,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.6,
		snd_idle = "eziam/raceattack/vehicles/evo_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/evo_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/evo_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/evo_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/evo_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/evo_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.425,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_sultan", V )

local V = {
	Name = "Uranus",
	Model = "models/GTA_SA/tuners/uranus.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1600,
		MaxHealth = 2300,
		OnSpawn = function(ent) ent.DriftPower = 0.8 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.8,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/tuners/uranus_wheel.mdl",
		CustomWheelPosFL = Vector(49,33,-12),
		CustomWheelPosFR = Vector(49,-33,-12),
		CustomWheelPosRL = Vector(-55,34,-12),
		CustomWheelPosRR = Vector(-55,-34,-12),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-14,-17,16),
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
				pos = Vector(-90,-16,-14),
				ang = Angle(90,180,0),
			},{
				pos = Vector(-90,16,-14),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 2,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 2,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*78,
		Efficiency = 1.25,
		GripOffset = 2,
		BrakePower = 35,
		
		IdleRPM = 750,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*90,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.72,
		snd_idle = "pga/simulated_vehicles/nissan/idle.wav",
		
		snd_low = "pga/simulated_vehicles/eclipse/enginelow.wav",
		snd_low_revdown = "pga/simulated_vehicles/eclipse/revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "pga/simulated_vehicles/eclipse/enginehigh.wav",
		snd_mid_gearup = "pga/simulated_vehicles/eclipse/shiftup.wav",
		snd_mid_geardown = "pga/simulated_vehicles/eclipse/shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.485,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_uranus", V )

local V = {
	Name = "Hotdog",
	Model = "models/GTA_SA/vans/hotdog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 6250,
		MaxHealth = 900,
		OnSpawn = function(ent) ent.DriftPower = 0 ent.preturned = true /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0,
		DerbyOnly = true,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/vans/hotdog_wheel.mdl",
		CustomWheelPosFL = Vector( 76.7390, 46.404,-24),
		CustomWheelPosFR = Vector( 76.7390,-46.404,-24),
		CustomWheelPosRL = Vector(-76.2732, 46.404,-24),
		CustomWheelPosRR = Vector(-76.2732,-46.404,-24),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,30),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(82,-25,37),
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
				pos = Vector(-144.73836,20.701836,-25.7),
				ang = Angle(90,180,0),
			},
			{
				pos = Vector(-144.73836,20.701836,-25.7),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 5,
		FrontConstant = 2500000,
		FrontDamping = 7500,
		FrontRelativeDamping = 7500,
		
		RearHeight = 5,
		RearConstant = 2500000,
		RearDamping = 7500,
		RearRelativeDamping = 7500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*200,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 70,
		
		IdleRPM = 600,
		LimitRPM = 5000,
		Revlimiter = false,
		PeakTorque = 1.5*325,
		PowerbandStart = 650,
		PowerbandEnd = 4500,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15,
		snd_idle = "eziam/raceattack/vehicles/truck2_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/truck2_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/truck2_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/truck2_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/truck2_up.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/truck2_down.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_hotdog", V )

local V = {
	Name = "Mr. Whoopee",
	Model = "models/GTA_SA/vans/mrwhoop.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 5000,
		MaxHealth = 1200,
		OnSpawn = function(ent) ent.DriftPower = 0 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/vans/mrwhoop_wheel.mdl",
		CustomWheelPosFL = Vector( 61.54848, 31.968,-23),
		CustomWheelPosFR = Vector( 61.54848,-31.968,-23),
		CustomWheelPosRL = Vector(-46.77264, 31.968,-23),
		CustomWheelPosRR = Vector(-46.77264,-31.968,-23),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,20),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(20,-20,27),
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
				pos = Vector(-82.51992,13.469868,-28.22832),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 5,
		FrontConstant = 2500000,
		FrontDamping = 7500,
		FrontRelativeDamping = 7500,
		
		RearHeight = 5,
		RearConstant = 2500000,
		RearDamping = 7500,
		RearRelativeDamping = 7500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*200,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 70,
		
		IdleRPM = 600,
		LimitRPM = 5000,
		Revlimiter = false,
		PeakTorque = 1.5*325,
		PowerbandStart = 650,
		PowerbandEnd = 4500,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15,
		snd_idle = "eziam/raceattack/vehicles/truck2_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/truck2_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/truck2_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/truck2_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/truck2_up.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/truck2_down.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_mrwhoopee", V )

local V = {
	Name = "Dozer",
	Model = "models/GTA_SA/industrial/dozer.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,48),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 12000,
		MaxHealth = 330,
		OnSpawn = function(ent) ent.DriftPower = 0 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ ent.shiftduration = 0.7 ent.NoCustomRims = true 
			for i = 1, table.Count(ent.Wheels) do
				local Wheel = ent.Wheels[i]
				if IsValid( Wheel ) then
					Wheel:GetPhysicsObject():SetMass(1200)
				end
			end
		end,
		DriftPower = 0,
		DerbyOnly = true,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/industrial/dozer_wheel.mdl",
		CustomWheelPosFL = Vector(60,45,-32),
		CustomWheelPosFR = Vector(60,-45,-32),
		CustomWheelPosRL = Vector(-62,45,-30),
		CustomWheelPosRR = Vector(-62,-45,-30),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 28,
		RearWheelRadius = 28,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,24),
		
		CustomSteerAngle = 24,
		
		SeatOffset = Vector(-20,0,60),
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
				pos = Vector(-104,12,77),
				ang = Angle(45,180,0),
			}
		},
		
		FrontHeight = 5,
		FrontConstant = 2500000,
		FrontDamping = 13000,
		FrontRelativeDamping = 13000,
		
		RearHeight = 5,
		RearConstant = 2500000,
		RearDamping = 13000,
		RearRelativeDamping = 13000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*600,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 200,
		
		IdleRPM = 1000,
		LimitRPM = 5000,
		Revlimiter = false,
		PeakTorque = 1.5*244,
		PowerbandStart = 1050,
		PowerbandEnd = 4200,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15,
		snd_idle = "eziam/raceattack/vehicles/truck2_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/truck2_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/truck2_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/truck2_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/truck2_up.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/truck2_down.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.33,
		Gears = {-0.08,0,0.12,0.21}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_dozer", V )

local V = {
	Name = "Bandito",
	Model = "models/GTA_SA/novelty/bandito.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1100,
		MaxHealth = 600,
		OnSpawn = function(ent) ent.DriftPower = 0 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0,
		
		LightsTable = "camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/novelty/bandito_wheel.mdl",
		CustomWheelModel_R = "models/GTA_SA/novelty/bandito_r_wheel.mdl",
		FrontWheelRadius = 9,
		RearWheelRadius = 14,
		CustomWheelPosFL = Vector(62.6,30.2,-18),
		CustomWheelPosFR = Vector(62.6,-30.2,-18),
		CustomWheelPosRL = Vector(-32.4,31.3,-15.4),
		CustomWheelPosRR = Vector(-32.4,-31.3,-15.4),
		CustomWheelAngleOffset = Angle(0,90,0),
		BulletProofTires = true,
		
		CustomMassCenter = Vector(-3,0,2),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-11,0,12),
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
				pos = Vector(-53.75,17.4,-2.1),
				ang = Angle(70,180,0),
			},
			{
				pos = Vector(-53.75,-17.4,-2.1),
				ang = Angle(70,180,0),
			}
		},
		
		FrontHeight = 4,
		FrontConstant = 32000,
		FrontDamping = 1000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 4,
		RearConstant = 29000,
		RearDamping = 1000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*85,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 25,
		
		IdleRPM = 900,
		LimitRPM = 7000,
		Revlimiter = false,
		PeakTorque = 1.5*66,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
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
		
		DifferentialGear = 0.68*0.75,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_bandito", V )

local V = {
	Name = "Omni Buffalo",
	Model = "models/GTA_SA/Sport cars/buffalo.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2100,
		MaxHealth = 1920,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ ent.shiftduration = 0.5 end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/banshee_wheel.mdl",
		CustomWheelPosFL = Vector(55,34,-21),
		CustomWheelPosFR = Vector(55,-34,-21),
		CustomWheelPosRL = Vector(-56,34,-21),
		CustomWheelPosRR = Vector(-56,-34,-21),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 16,
		RearWheelRadius = 16,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,12),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-18,-17,14),
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
				pos = Vector(-95,-18,-18),
				ang = Angle(90,165,0),
			},	
			{
				pos = Vector(-95,18,-18),
				ang = Angle(90,165,0),
			}		
		},
		
		FrontHeight = 0,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 0,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*96,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 36,
		
		IdleRPM = 600,
		LimitRPM = 7000,
		Revlimiter = false,
		PeakTorque = 1.5*136,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
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
		
		DifferentialGear = 0.5*0.78,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_buffalo_omni", V )

local V = {
	Name = "Omni Bullet",
	Model = "models/GTA_SA/Sport cars/bullet.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1700,
		MaxHealth = 1100,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/banshee_wheel.mdl",
		CustomWheelPosFL = Vector(55,30,-13),
		CustomWheelPosFR = Vector(55,-30,-13),
		CustomWheelPosRL = Vector(-54,30,-13),
		CustomWheelPosRR = Vector(-54,-30,-13),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-10,-17,9),
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
				pos = Vector(-80,23,-9.5),
				ang = Angle(90,165,0)
			},
			{
				pos = Vector(-80,-23,-9.5),
				ang = Angle(90,165,0)
			}
		},
		
		FrontHeight = 1,
		FrontConstant = 29000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 1,
		RearConstant = 32000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*80*1.1,
		Efficiency = 1.33,
		GripOffset = -1,
		BrakePower = 45,
		
		IdleRPM = 750,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*108,
		PowerbandStart = 1500,
		PowerbandEnd = 6250,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftbig",
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
		
		DifferentialGear = 0.475,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_bullet_omni", V )

local V = {
	Name = "Omni Cheetah",
	Model = "models/GTA_SA/Sport cars/cheetah.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1700,
		MaxHealth = 1150,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/cheetah_wheel.mdl",
		CustomWheelPosFL = Vector(57,34,-17),
		CustomWheelPosFR = Vector(57,-34,-17),
		CustomWheelPosRL = Vector(-58,34,-17),
		CustomWheelPosRR = Vector(-58,-34,-17),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-8,-15,6),
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
				pos = Vector(-85,13,-18),
				ang = Angle(90,165,0),
			},	
			{
				pos = Vector(-85,-13,-18),
				ang = Angle(90,165,0),
			},		
		},
		
		FrontHeight = 2,
		FrontConstant = 29000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 2,
		RearConstant = 32000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*86*1.1,
		Efficiency = 1.25,
		GripOffset = -15,
		BrakePower = 55,
		
		IdleRPM = 800,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*110,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftbig",
		snd_pitch = 1.15* 0.78,
		snd_idle = "eziam/raceattack/vehicles/300c_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/300c_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/300c_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/300c_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/300c_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/300c_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.44,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_cheetah_omni", V )

local V = {
	Name = "Omni Euros",
	Model = "models/GTA_SA/Sport cars/euros.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1800,
		MaxHealth = 1700,
		OnSpawn = function(ent) ent.DriftPower = 0.8 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.8,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/euros_wheel.mdl",
		CustomWheelPosFL = Vector(54,37,-18),
		CustomWheelPosFR = Vector(54,-37,-18),
		CustomWheelPosRL = Vector(-58.5,37,-18),
		CustomWheelPosRR = Vector(-58.5,-37,-18),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-15,-17,11),
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
				pos = Vector(-98,25,-16),
				ang = Angle(90,165,0),
			},	
			{
				pos = Vector(-98,-25,-16),
				ang = Angle(90,165,0),
			}		
		},
		
		FrontHeight = 2,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 2,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*88,
		Efficiency = 1.25,
		GripOffset = 2,
		BrakePower = 35,
		
		IdleRPM = 750,
		LimitRPM = 8500,
		Revlimiter = false,
		PeakTorque = 1.5*86,
		PowerbandStart = 1500,
		PowerbandEnd = 6800,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 0,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.7,
		snd_idle = "eziam/raceattack/vehicles/nissan_tuned_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/nissan_tuned_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/nissan_tuned_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/nissan_tuned_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/nissan_tuned_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/nissan_tuned_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.465,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_euros_omni", V )

local V = {
	Name = "Omni Hotknife",
	Model = "models/GTA_SA/Sport cars/hotknife.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1250,
		MaxHealth = 2000,
		OnSpawn = function(ent) ent.DriftPower = 0 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ ent.shiftduration = 0.7 ent.preturned = true end,
		DriftPower = 0,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/hotknife_wheel.mdl",
		CustomWheelPosFL = Vector(65,32,-22),
		CustomWheelPosFR = Vector(65,-32,-22),
		CustomWheelPosRL = Vector(-50,34,-20),
		CustomWheelPosRR = Vector(-50,-34,-20),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 14,
		RearWheelRadius = 14,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(3,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-22,-12,7),
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
				pos = Vector(34.5,31,-1.5),
				ang = Angle(75,150,0),
			},	
			{
				pos = Vector(29.5,31,-1.5),
				ang = Angle(75,150,0),
			},				{
				pos = Vector(27.5,31,-1.5),
				ang = Angle(75,150,0),
			},				{
				pos = Vector(23.5,31,-1.5),
				ang = Angle(75,150,0),
			},					
			{
				pos = Vector(34.5,-31,-1.5),
				ang = Angle(75,210,0),
			},	
			{
				pos = Vector(29.5,-31,-1.5),
				ang = Angle(75,210,0),
			},				
			{
				pos = Vector(27.5,-31,-1.5),
				ang = Angle(75,210,0),
			},		
			{
				pos = Vector(23.5,-31,-1.5),
				ang = Angle(75,210,0),
			}
		},
		
		FrontHeight = 2,
		FrontConstant = 39000,
		FrontDamping = 1500,
		FrontRelativeDamping = 1500,
		
		RearHeight = 2,
		RearConstant = 42000,
		RearDamping = 1500,
		RearRelativeDamping = 1500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*52.5*1.1,
		Efficiency = 1.5,
		GripOffset = -1,
		BrakePower = 20,
		
		IdleRPM = 750,
		LimitRPM = 9000,
		Revlimiter = false,
		PeakTorque = 1.5*107,
		PowerbandStart = 1500,
		PowerbandEnd = 7800,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftlarge",
		snd_pitch = 1.1,
		snd_idle = "eziam/raceattack/vehicles/monstertruck_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/monstertruck_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/monstertruck_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/monstertruck_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/monstertruck_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/monstertruck_shiftdown.wav",

		snd_mid_pitch = 0.5,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.44,
		Gears = {-0.16,0,0.14,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_hotknife_omni", V )

local V = {
	Name = "Omni Infernus",
	Model = "models/GTA_SA/Sport cars/infernus.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1700,
		MaxHealth = 1300,
		OnSpawn = function(ent) /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/banshee_wheel.mdl",
		CustomWheelPosFL = Vector(61.5,34,-18),
		CustomWheelPosFR = Vector(61.5,-34,-18),
		CustomWheelPosRL = Vector(-61.5,34,-18),
		CustomWheelPosRR = Vector(-61.5,-34,-18),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-6,-17,11),
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
				pos = Vector(-92,11.25,-16),
				ang = Angle(90,165,0),
			},		
			{
				pos = Vector(-92,-11.25,-16),
				ang = Angle(90,165,0),
			}		
		},
		
		FrontHeight = 0,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 0,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*75,
		Efficiency = 1.25,
		GripOffset = 2,
		BrakePower = 32,
		
		IdleRPM = 750,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*93,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 0,
		
		EngineSoundPreset = -1,
		
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
		
		DifferentialGear = 0.415,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_infernus_omni", V )

local V = {
	Name = "Omni Phoenix",
	Model = "models/GTA_SA/Sport cars/phoenix.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2100,
		MaxHealth = 1700,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/hotknife_wheel.mdl",
		CustomWheelPosFL = Vector(58,38,-18),
		CustomWheelPosFR = Vector(58,-38,-18),
		CustomWheelPosRL = Vector(-57.5,38,-18),
		CustomWheelPosRR = Vector(-57.5,-38,-18),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(3,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-15,-17,8),
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
				pos = Vector(-96.5,20.5,-20),
				ang = Angle(90,165,0),
			},	
			{
				pos = Vector(-96.5,-20.5,-20),
				ang = Angle(90,165,0),
			}		
		},
		
		FrontHeight = 5,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 5,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*102,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 40,
		
		IdleRPM = 600,
		LimitRPM = 7000,
		Revlimiter = false,
		PeakTorque = 1.5*148,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
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
		
		DifferentialGear = 0.725*0.9,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_phoenix_omni", V )

local V = {
	Name = "Omni Super GT",
	Model = "models/GTA_SA/Sport cars/supergt.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1800,
		MaxHealth = 1500,
		OnSpawn = function(ent) ent.DriftPower = 1.16 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 1.16,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/supergt_wheel.mdl",
		CustomWheelPosFL = Vector(44,32,-17),
		CustomWheelPosFR = Vector(44,-32,-17),
		CustomWheelPosRL = Vector(-60.2,33,-17),
		CustomWheelPosRR = Vector(-60.2,-33,-17),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-22,-17,9),
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
				pos = Vector(-89,19.5,-18),
				ang = Angle(90,165,0),
			},	
			{
				pos = Vector(-89,-19.5,-18),
				ang = Angle(90,165,0),
			}		
		},
		
		FrontHeight = 2,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 2,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*88,
		Efficiency = 1.25,
		GripOffset = 2,
		BrakePower = 35,
		
		IdleRPM = 750,
		LimitRPM = 8500,
		Revlimiter = false,
		PeakTorque = 1.5*86,
		PowerbandStart = 1500,
		PowerbandEnd = 6800,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.6,
		snd_idle = "eziam/raceattack/vehicles/evo_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/evo_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/evo_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/evo_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/evo_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/evo_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_supergt_omni", V )

local V = {
	Name = "Omni Turismo",
	Model = "models/GTA_SA/Sport cars/turismo.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1500,
		MaxHealth = 720,
		OnSpawn = function(ent) ent.DriftPower = 0 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/turismo_wheel.mdl",
		CustomWheelPosFL = Vector( 46.92204, 32.436,-9),
		CustomWheelPosFR = Vector( 46.92204,-32.436,-9),
		CustomWheelPosRL = Vector(-61.20108, 32.436,-9),
		CustomWheelPosRR = Vector(-61.20108,-32.436,-9),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(-1,0,5),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-15,-17,10),
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
				pos = Vector(-92.30256,0,-13.278168),
				ang = Angle(90,180,0),
			}	
		},
		
		FrontHeight = 6,
		FrontConstant = 29000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 6,
		RearConstant = 32000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*66*1.1,
		Efficiency = 1.5,
		GripOffset = -2,
		BrakePower = 40,
		
		IdleRPM = 800,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*93,
		PowerbandStart = 1500,
		PowerbandEnd = 7400,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 0,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftbig",
		snd_pitch = 1.15* 0.66,
		snd_idle = "eziam/raceattack/vehicles/mclarenf1_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/mclarenf1_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/mclarenf1_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/mclarenf1_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/mclarenf1_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/mclarenf1_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.498,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_turismo_omni", V )

local V = {
	Name = "Omni Windsor",
	Model = "models/GTA_SA/Sport cars/windsor.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1700,
		MaxHealth = 1150,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/windsor_wheel.mdl",
		CustomWheelPosFL = Vector( 55.12572, 26.027532,-11),
		CustomWheelPosFR = Vector( 55.12572,-26.027532,-11),
		CustomWheelPosRL = Vector(-55.61388, 26.027532,-11),
		CustomWheelPosRR = Vector(-55.61388,-26.027532,-11),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,5),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-15,-16,12),
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
				pos = Vector(-81.57852, 4.9761,-13.689756),
				ang = Angle(90,180,0),
			},	
			{
				pos = Vector(-81.57852,-4.9761,-13.689756),
				ang = Angle(90,180,0),
			}		
		},
		
		FrontHeight = 7,
		FrontConstant = 29000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 7,
		RearConstant = 32000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*92,
		Efficiency = 1.25,
		GripOffset = -15,
		BrakePower = 45,
		
		IdleRPM = 800,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*112,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
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
		
		DifferentialGear = 0.43,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_windsor_omni", V )

local V = {
	Name = "Omni ZR-350",
	Model = "models/GTA_SA/Sport cars/zr350.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1900,
		MaxHealth = 1450,
		OnSpawn = function(ent) ent.DriftPower = 1.4 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 1.4,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/Sport cars/zr350_wheel.mdl",
		CustomWheelPosFL = Vector( 61.34616, 36.8028,-11.52),
		CustomWheelPosFR = Vector( 61.34616,-36.8028,-11.52),
		CustomWheelPosRL = Vector(-58.33584, 36.8028,-11.52),
		CustomWheelPosRR = Vector(-58.33584,-36.8028,-11.52),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-15,-17,10),
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
				pos = Vector(-101.26152,-21.16638,-15.995268),
				ang = Angle(90,165,0),
			}	
		},
		
		FrontHeight = 5,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 5,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*98,
		Efficiency = 1.25,
		GripOffset = 3,
		BrakePower = 32,
		
		IdleRPM = 750,
		LimitRPM = 9000,
		Revlimiter = false,
		PeakTorque = 1.5*91,
		PowerbandStart = 1500,
		PowerbandEnd = 7500,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.68,
		snd_idle = "eziam/raceattack/vehicles/mazda_tuned_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/mazda_tuned_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/mazda_tuned_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/mazda_tuned_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/mazda_tuned_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/mazda_tuned_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.44,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_zr350_omni", V )

local V = {
	Name = "Omni Blade",
	Model = "models/GTA_SA/lowriders/blade.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2050,
		MaxHealth = 2050,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/lowriders/blade_wheel.mdl",
		CustomWheelPosFL = Vector(62.93772,32.4,-13.3),
		CustomWheelPosFR = Vector(62.93772,-32.4,-13.3),
		CustomWheelPosRL = Vector(-62.25012,32.4,-13.3),
		CustomWheelPosRR = Vector(-62.25012,-32.4,-13.3),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 16,
		RearWheelRadius = 16,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(3,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-13,-18,12),
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
				pos = Vector(-106.89192,-18.106848,-19.265616),
				ang = Angle(90,180,0),
			},
			{
				pos = Vector(-106.89192,18.106848,-19.265616),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 6,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 6,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*87,
		Efficiency = 1.33,
		GripOffset = 0,
		BrakePower = 35,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*190,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15* 0.7,
		snd_idle = "eziam/raceattack/vehicles/muscle2_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/muscle2_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/muscle2_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/muscle2_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/muscle2_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/muscle2_shiftdown.wav",

		snd_mid_pitch = 1,
		
		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 0.7,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 0.75,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.5*0.9,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_blade_omni", V )

local V = {
	Name = "Omni Voodoo",
	Model = "models/GTA_SA/lowriders/voodoo.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2300,
		MaxHealth = 1900,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/lowriders/voodoo_wheel.mdl",
		CustomWheelPosFL = Vector( 67.98564, 33.552,-15),
		CustomWheelPosFR = Vector( 67.98564,-33.552,-15),
		CustomWheelPosRL = Vector(-67.82364, 33.552,-15),
		CustomWheelPosRR = Vector(-67.82364,-33.552,-15),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 16,
		RearWheelRadius = 16,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(3,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-13,-18,12),
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
				pos = Vector(-106.89192,-18.106848,-19.265616),
				ang = Angle(90,180,0),
			},
			{
				pos = Vector(-106.89192,18.106848,-19.265616),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 6,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 6,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*94,
		Efficiency = 1.33,
		GripOffset = 0,
		BrakePower = 35,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*220,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15* 0.7,
		snd_idle = "eziam/raceattack/vehicles/muscle2_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/muscle2_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/muscle2_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/muscle2_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/muscle2_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/muscle2_shiftdown.wav",

		snd_mid_pitch = 1,
		
		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 0.7,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 0.75,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.5*0.9,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_voodoo_omni", V )

local V = {
	Name = "Omni Slamvan",
	Model = "models/GTA_SA/lowriders/slamvan.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 3200,
		MaxHealth = 1860,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ ent.shiftduration = 0.5 end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/lowriders/slamvan_wheel.mdl",
		CustomWheelPosFL = Vector( 57.08448, 35.028,-14),
		CustomWheelPosFR = Vector( 57.08448,-35.028,-14),
		CustomWheelPosRL = Vector(-58.26996, 35.028,-14),
		CustomWheelPosRR = Vector(-58.26996,-35.028,-14),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 16,
		RearWheelRadius = 16,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,18),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-3,-15,14),
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
				pos = Vector(-97.9542,-12.55788,-19.97496),
				ang = Angle(90,180,0),
			},
			{
				pos = Vector(-97.9542, 12.55788,-19.97496),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 5,
		FrontConstant = 168000,
		FrontDamping = 5000,
		FrontRelativeDamping = 5000,
		
		RearHeight = 5,
		RearConstant = 163500,
		RearDamping = 5000,
		RearRelativeDamping = 5000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*110,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 75,
		
		IdleRPM = 600,
		LimitRPM = 7000,
		Revlimiter = false,
		PeakTorque = 1.5*265,
		PowerbandStart = 1500,
		PowerbandEnd = 5600,
		Turbocharged = false,
		Supercharged = false,
		
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
		
		DifferentialGear = 0.57*0.78,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_slamvan_omni", V )

local V = {
	Name = "Omni Elegy",
	Model = "models/GTA_SA/tuners/elegy.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1600,
		MaxHealth = 1200,
		OnSpawn = function(ent) ent.DriftPower = 1.16 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 1.16,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/tuners/elegy_wheel.mdl",
		CustomWheelPosFL = Vector(56,33,-14),
		CustomWheelPosFR = Vector(56,-33,-14),
		CustomWheelPosRL = Vector(-47,33,-14),
		CustomWheelPosRR = Vector(-47,-33,-14),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,12),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-10,-16,14),
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
				pos = Vector(-87,-17,-15),
				ang = Angle(90,180,0),
			},{
				pos = Vector(-87,17,-15),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 1,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 1,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*90,
		Efficiency = 1.25,
		GripOffset = 1,
		BrakePower = 35,
		
		IdleRPM = 750,
		LimitRPM = 10000,
		Revlimiter = false,
		PeakTorque = 1.5*92,
		PowerbandStart = 1500,
		PowerbandEnd = 6800,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.7,
		snd_idle = "eziam/raceattack/vehicles/nissan_tuned_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/nissan_tuned_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/nissan_tuned_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/nissan_tuned_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/nissan_tuned_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/nissan_tuned_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.33,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_elegy_omni", V )

local V = {
	Name = "Omni Flash",
	Model = "models/GTA_SA/tuners/flash.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1300,
		MaxHealth = 2400,
		OnSpawn = function(ent) ent.DriftPower = 1.25 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 1.25,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/tuners/flash_wheel.mdl",
		CustomWheelPosFL = Vector(50,30,-12),
		CustomWheelPosFR = Vector(50,-30,-12),
		CustomWheelPosRL = Vector(-50,30,-12),
		CustomWheelPosRR = Vector(-50,-30,-12),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,11),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-10,-16,11),
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
				pos = Vector(-75,-17,-15),
				ang = Angle(90,180,0),
			},{
				pos = Vector(-75,17,-15),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 1.5,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 1.5,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*81,
		Efficiency = 1.33,
		GripOffset = 2,
		BrakePower = 30,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*52,
		PowerbandStart = 1500,
		PowerbandEnd = 6600,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.75,
		snd_idle = "eziam/raceattack/vehicles/corolla_tuned_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/corolla_tuned_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/corolla_tuned_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/corolla_tuned_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/corolla_tuned_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/corolla_tuned_shiftdown.wav",

		snd_mid_pitch = 1,

		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.441,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_flash_omni", V )

local V = {
	Name = "Omni Blista Compact",
	Model = "models/GTA_SA/coupes_hatchbacks/blistac.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1500,
		MaxHealth = 2500,
		OnSpawn = function(ent) ent.DriftPower = 1.25 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 1.25,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/coupes_hatchbacks/blistac_wheel.mdl",
		CustomWheelPosFL = Vector(51.4,32,-11.1),
		CustomWheelPosFR = Vector(51.4,-32,-11.1),
		CustomWheelPosRL = Vector(-50,32,-11.1),
		CustomWheelPosRR = Vector(-50,-32,-11.1),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-13,-18,14),
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
				pos = Vector(-77,-19.8,-17.2),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 4,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 4,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*81,
		Efficiency = 1.33,
		GripOffset = 2,
		BrakePower = 30,
		
		IdleRPM = 600,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*61,
		PowerbandStart = 1500,
		PowerbandEnd = 6600,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.75,
		snd_idle = "eziam/raceattack/vehicles/corolla_tuned_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/corolla_tuned_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/corolla_tuned_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/corolla_tuned_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/corolla_tuned_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/corolla_tuned_shiftdown.wav",

		snd_mid_pitch = 1,

		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.4187,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_blista_omni", V )

local V = {
	Name = "Omni Jester",
	Model = "models/GTA_SA/tuners/jester.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2200,
		MaxHealth = 1900,
		OnSpawn = function(ent) ent.DriftPower = 0.6 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/tuners/jester_wheel.mdl",
		CustomWheelPosFL = Vector(53,35,-12),
		CustomWheelPosFR = Vector(53,-35,-12),
		CustomWheelPosRL = Vector(-52,35,-12),
		CustomWheelPosRR = Vector(-52,-35,-12),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,13),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-13,-16,15),
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
				pos = Vector(-84,-21,-13),
				ang = Angle(90,180,0),
			},{
				pos = Vector(-84,21,-13),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 4,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 4,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*95,
		Efficiency = 1.33,
		GripOffset = 2.5,
		BrakePower = 35,
		
		IdleRPM = 750,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*125,
		PowerbandStart = 1500,
		PowerbandEnd = 5800,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.7,
		snd_idle = "eziam/raceattack/vehicles/nissan_tuned_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/nissan_tuned_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/nissan_tuned_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/nissan_tuned_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/nissan_tuned_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/nissan_tuned_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.5,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_jester_omni", V )

local V = {
	Name = "Omni Sultan",
	Model = "models/GTA_SA/tuners/sultan.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1700,
		MaxHealth = 1400,
		OnSpawn = function(ent) ent.DriftPower = 0.75 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.75,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/tuners/sultan_wheel.mdl",
		CustomWheelPosFL = Vector(56,34,-12),
		CustomWheelPosFR = Vector(56,-34,-12),
		CustomWheelPosRL = Vector(-52,34,-12),
		CustomWheelPosRR = Vector(-52,-34,-12),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,12),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-2,-18,15),
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
				pos = Vector(-90,-16,-14),
				ang = Angle(90,180,0),
			},{
				pos = Vector(-90,16,-14),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 2,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 2,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*80,
		Efficiency = 1.25,
		GripOffset = 2,
		BrakePower = 32,
		
		IdleRPM = 750,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*82,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 0,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.6,
		snd_idle = "eziam/raceattack/vehicles/evo_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/evo_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/evo_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/evo_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/evo_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/evo_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.425,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_sultan_omni", V )

local V = {
	Name = "Omni Uranus",
	Model = "models/GTA_SA/tuners/uranus.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1600,
		MaxHealth = 2300,
		OnSpawn = function(ent) ent.DriftPower = 0.8 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0.8,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/tuners/uranus_wheel.mdl",
		CustomWheelPosFL = Vector(49,33,-12),
		CustomWheelPosFR = Vector(49,-33,-12),
		CustomWheelPosRL = Vector(-55,34,-12),
		CustomWheelPosRR = Vector(-55,-34,-12),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-14,-17,16),
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
				pos = Vector(-90,-16,-14),
				ang = Angle(90,180,0),
			},{
				pos = Vector(-90,16,-14),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 2,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 2,
		RearConstant = 29000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*78,
		Efficiency = 1.25,
		GripOffset = 2,
		BrakePower = 35,
		
		IdleRPM = 750,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*90,
		PowerbandStart = 1500,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.72,
		snd_idle = "pga/simulated_vehicles/nissan/idle.wav",
		
		snd_low = "pga/simulated_vehicles/eclipse/enginelow.wav",
		snd_low_revdown = "pga/simulated_vehicles/eclipse/revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "pga/simulated_vehicles/eclipse/enginehigh.wav",
		snd_mid_gearup = "pga/simulated_vehicles/eclipse/shiftup.wav",
		snd_mid_geardown = "pga/simulated_vehicles/eclipse/shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.485,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_uranus_omni", V )

local V = {
	Name = "Omni Hotdog",
	Model = "models/GTA_SA/vans/hotdog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 6250,
		MaxHealth = 900,
		OnSpawn = function(ent) ent.DriftPower = 0 ent.preturned = true /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0,
		DerbyOnly = true,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/vans/hotdog_wheel.mdl",
		CustomWheelPosFL = Vector( 76.7390, 46.404,-24),
		CustomWheelPosFR = Vector( 76.7390,-46.404,-24),
		CustomWheelPosRL = Vector(-76.2732, 46.404,-24),
		CustomWheelPosRR = Vector(-76.2732,-46.404,-24),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,30),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(82,-25,37),
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
				pos = Vector(-144.73836,20.701836,-25.7),
				ang = Angle(90,180,0),
			},
			{
				pos = Vector(-144.73836,20.701836,-25.7),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 5,
		FrontConstant = 2500000,
		FrontDamping = 7500,
		FrontRelativeDamping = 7500,
		
		RearHeight = 5,
		RearConstant = 2500000,
		RearDamping = 7500,
		RearRelativeDamping = 7500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*200,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 70,
		
		IdleRPM = 600,
		LimitRPM = 5000,
		Revlimiter = false,
		PeakTorque = 1.5*325,
		PowerbandStart = 650,
		PowerbandEnd = 4500,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15,
		snd_idle = "eziam/raceattack/vehicles/truck2_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/truck2_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/truck2_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/truck2_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/truck2_up.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/truck2_down.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_hotdog_omni", V )

local V = {
	Name = "Omni Mr. Whoopee",
	Model = "models/GTA_SA/vans/mrwhoop.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 5000,
		MaxHealth = 1200,
		OnSpawn = function(ent) ent.DriftPower = 0 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/vans/mrwhoop_wheel.mdl",
		CustomWheelPosFL = Vector( 61.54848, 31.968,-23),
		CustomWheelPosFR = Vector( 61.54848,-31.968,-23),
		CustomWheelPosRL = Vector(-46.77264, 31.968,-23),
		CustomWheelPosRR = Vector(-46.77264,-31.968,-23),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,20),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(20,-20,27),
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
				pos = Vector(-82.51992,13.469868,-28.22832),
				ang = Angle(90,180,0),
			}
		},
		
		FrontHeight = 5,
		FrontConstant = 2500000,
		FrontDamping = 7500,
		FrontRelativeDamping = 7500,
		
		RearHeight = 5,
		RearConstant = 2500000,
		RearDamping = 7500,
		RearRelativeDamping = 7500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*200,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 70,
		
		IdleRPM = 600,
		LimitRPM = 5000,
		Revlimiter = false,
		PeakTorque = 1.5*325,
		PowerbandStart = 650,
		PowerbandEnd = 4500,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15,
		snd_idle = "eziam/raceattack/vehicles/truck2_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/truck2_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/truck2_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/truck2_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/truck2_up.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/truck2_down.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_mrwhoopee_omni", V )

local V = {
	Name = "Omni Dozer",
	Model = "models/GTA_SA/industrial/dozer.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,48),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 12000,
		MaxHealth = 330,
		OnSpawn = function(ent) ent.DriftPower = 0 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ ent.shiftduration = 0.7 ent.NoCustomRims = true 
			for i = 1, table.Count(ent.Wheels) do
				local Wheel = ent.Wheels[i]
				if IsValid( Wheel ) then
					Wheel:GetPhysicsObject():SetMass(1200)
				end
			end
		end,
		DriftPower = 0,
		DerbyOnly = true,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/industrial/dozer_wheel.mdl",
		CustomWheelPosFL = Vector(60,45,-32),
		CustomWheelPosFR = Vector(60,-45,-32),
		CustomWheelPosRL = Vector(-62,45,-30),
		CustomWheelPosRR = Vector(-62,-45,-30),
		CustomWheelAngleOffset = Angle(0,90,0),
		FrontWheelRadius = 28,
		RearWheelRadius = 28,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,24),
		
		CustomSteerAngle = 24,
		
		SeatOffset = Vector(-20,0,60),
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
				pos = Vector(-104,12,77),
				ang = Angle(45,180,0),
			}
		},
		
		FrontHeight = 5,
		FrontConstant = 2500000,
		FrontDamping = 12000,
		FrontRelativeDamping = 12000,
		
		RearHeight = 5,
		RearConstant = 2500000,
		RearDamping = 12000,
		RearRelativeDamping = 12000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*600,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 200,
		
		IdleRPM = 1000,
		LimitRPM = 5000,
		Revlimiter = false,
		PeakTorque = 1.5*244,
		PowerbandStart = 1050,
		PowerbandEnd = 4200,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftmedium",
		snd_pitch = 1.15,
		snd_idle = "eziam/raceattack/vehicles/truck2_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/truck2_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/truck2_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/truck2_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/truck2_up.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/truck2_down.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.33,
		Gears = {-0.08,0,0.12,0.21}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_dozer_omni", V )

local V = {
	Name = "Omni Bandito",
	Model = "models/GTA_SA/novelty/bandito.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,32),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1100,
		MaxHealth = 600,
		OnSpawn = function(ent) ent.DriftPower = 0 /*ent:SetPos(ent:GetPos()+Vector(0,0,32))*/ end,
		DriftPower = 0,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/GTA_SA/novelty/bandito_wheel.mdl",
		CustomWheelModel_R = "models/GTA_SA/novelty/bandito_r_wheel.mdl",
		FrontWheelRadius = 9,
		RearWheelRadius = 14,
		CustomWheelPosFL = Vector(62.6,30.2,-18),
		CustomWheelPosFR = Vector(62.6,-30.2,-18),
		CustomWheelPosRL = Vector(-32.4,31.3,-15.4),
		CustomWheelPosRR = Vector(-32.4,-31.3,-15.4),
		CustomWheelAngleOffset = Angle(0,90,0),
		BulletProofTires = true,
		
		CustomMassCenter = Vector(-3,0,2),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-11,0,12),
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
				pos = Vector(-53.75,17.4,-2.1),
				ang = Angle(70,180,0),
			},
			{
				pos = Vector(-53.75,-17.4,-2.1),
				ang = Angle(70,180,0),
			}
		},
		
		FrontHeight = 4,
		FrontConstant = 32000,
		FrontDamping = 1000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 4,
		RearConstant = 29000,
		RearDamping = 1000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*85,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 25,
		
		IdleRPM = 900,
		LimitRPM = 7000,
		Revlimiter = false,
		PeakTorque = 1.5*66,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
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
		
		DifferentialGear = 0.68*0.75,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_bandito_omni", V )