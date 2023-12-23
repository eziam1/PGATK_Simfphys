local V = {
	Name = "Prestige Nissan 350Z",
	Model = "models/sadtrixie/cars/ps_350z.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,0),

	Members = {
		Mass = 1800,
		MaxHealth = 1600,
		OnSpawn = function(ent) ent.DriftPower = 1.4 ent.shiftduration = 0 end,
		DriftPower = 1.4,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/sadtrixie/wheels/PS_350Z_A.mdl",
		CustomWheelModel_R = "models/sadtrixie/wheels/PS_350Z_B.mdl",
		CustomWheelPosFL = Vector(63.599998474121,37.900001525879,5),
		CustomWheelPosFR = Vector(63.59998474121,-37.900001525879,5),
		CustomWheelPosRL = Vector(-60.10003051758,37.900001525879,4),	
		CustomWheelPosRR = Vector(-60.10003051758,-37.900001525879,4),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 15,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(2,0,9),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-12,-19,36),
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
                pos = Vector(-102,-17.2,7),
                ang = Angle(90,180,0),
        	},
			{
                pos = Vector(-102,17.2,7),
                ang = Angle(90,180,0),
        	},
		},
		
		FrontHeight = 3,
		FrontConstant = 32000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 3,
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
		PeakTorque = 1.5*83*1.033,
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
		
		DifferentialGear = 0.385,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_350z_prestige", V )

local V = {
	Name = "Mini Miglia",
	Model = "models/kg22/minimiglia.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,0),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1000,
		MaxHealth = 1200,
		OnSpawn = function(ent) ent.DriftPower = 0.6 ent.shiftduration = 0 end,
		DriftPower = 0.6,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/kg22/migliawheel.mdl",
		FrontWheelRadius = 13,
		RearWheelRadius = 13,
		CustomWheelPosFL = Vector(51.7,33.5,9.5),
		CustomWheelPosFR = Vector(51.7,-33.5,9.5),
		CustomWheelPosRL = Vector(-48.3,33.5,9.5),
		CustomWheelPosRR = Vector(-48.3,-33.5,9.5),
		CustomWheelAngleOffset = Angle(0,90,0),
		BulletProofTires = true,
		
		CustomMassCenter = Vector(3,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-10,13.5,42),
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
				pos = Vector(-74.7,10.1,9.2),
				ang = Angle(70,180,0),
			},
			{
				pos = Vector(-74.7,-10.1,9.2),
				ang = Angle(70,180,0),
			}
		},
		
		FrontHeight = 1,
		FrontConstant = 32000,
		FrontDamping = 1000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 1,
		RearConstant = 29000,
		RearDamping = 1000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*76,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 24,
		
		IdleRPM = 900,
		LimitRPM = 8000,
		Revlimiter = false,
		PeakTorque = 1.5*39,
		PowerbandStart = 1500,
		PowerbandEnd = 7300,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftlarge",
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
		
		DifferentialGear = 0.56,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_mini", V )

local V = {
	Name = "Revenge Racer",
	Model = "models/kg22/watson25.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,0),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 900,
		MaxHealth = 1800,
		OnSpawn = function(ent) ent.DriftPower = 0 ent.shiftduration = 0 ent.WhineSound = "eziam/raceattack/tranny.wav" end,
		DriftPower = 0,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/kg22/watson25wf.mdl",
		CustomWheelModel_R = "models/kg22/watson25wr.mdl",
		CustomWheelPosFL = Vector(59.4,-41.7,13),
		CustomWheelPosFR = Vector(59.4,41.7,13),
		CustomWheelPosRL = Vector(-75.6,-43.5,13.5),
		CustomWheelPosRR = Vector(-75.6,43.5,13.5),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 16,
		RearWheelRadius = 17,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,11),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-7,-15,39),
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
				pos = Vector(-102,17.2,19.1),
				ang = Angle(90,180,0)
			},
			{
				pos = Vector(-102,-17.2,19.1),
				ang = Angle(90,180,0)
			},
		},
		
		FrontHeight = 1.5,
		FrontConstant = 29000,
		FrontDamping = 1000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 0.75,
		RearConstant = 32000,
		RearDamping = 1000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*54,
		Efficiency = 1.25,
		GripOffset = -15,
		BrakePower = 22,
		
		IdleRPM = 800,
		LimitRPM = 10000,
		Revlimiter = false,
		PeakTorque = 1.5*33.5,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		snd_shifter = "shiftbig",
		EngineSoundPreset = -1,
		
		snd_pitch = 1.15* 0.58,
		snd_idle = "eziam/raceattack/vehicles/carrera_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/carrera_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/carrera_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/carrera_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/carrera_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/carrera_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.32,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_revenge", V )

local V = {
	Name = "Montgomery Hawker Mech",
	Model = "models/kg22/monthawker.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,0),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1900,
		MaxHealth = 1300,
		OnSpawn = function(ent) ent.DriftPower = 1.05 ent.shiftduration = 0 end,
		DriftPower = 1.05,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/kg22/monthawkerwf.mdl",
		CustomWheelModel_R = "models/kg22/monthawkerwr.mdl",
		CustomWheelPosFL = Vector(64,-40,14),
		CustomWheelPosFR = Vector(64,40,14),
		CustomWheelPosRL = Vector(-66,-42,14.6),
		CustomWheelPosRR = Vector(-66,42,14.6),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 15,
		RearWheelRadius = 16,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,8),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-27.7,-21.5,43),
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
				pos = Vector(-96.9,32.3,13.2),
				ang = Angle(90,180,0)
			},
			{
				pos = Vector(-96.9,-32.3,13.2),
				ang = Angle(90,180,0)
			}
		},
		
		FrontHeight = 5,
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
		
		MaxGrip = 1.5*95,
		Efficiency = 1.25,
		GripOffset = 0,
		BrakePower = 48,
		
		IdleRPM = 700,
		LimitRPM = 7500,
		Revlimiter = false,
		PeakTorque = 1.5*96,
		PowerbandStart = 1500,
		PowerbandEnd = 6300,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		snd_shifter = "shiftbig",
		snd_pitch = 1.15* 0.76,
		snd_idle = "eziam/raceattack/vehicles/muscle3_idle.wav",
		
		snd_low = "eziam/raceattack/vehicles/muscle3_low.wav",
		snd_low_revdown = "eziam/raceattack/vehicles/muscle3_revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "eziam/raceattack/vehicles/muscle3_mid.wav",
		snd_mid_gearup = "eziam/raceattack/vehicles/muscle3_shiftup.wav",
		snd_mid_geardown = "eziam/raceattack/vehicles/muscle3_shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.375,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_hawker", V )

local V = {
	Name = "Omni Nissan Z31",
	Model = "models/shittywangan/z31.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnOffset = Vector(0,0,6),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 2200,
		MaxHealth = 1500,
		OnSpawn = function(ent) ent.DriftPower = 1.16 ent.preturned = true end,
		DriftPower = 1.16,
		
		LightsTable = "camaro",
		Backfire = true,
		
		CustomWheels = true,
		CustomSuspensionTravel = 2,
		StrengthenSuspension = false,
		
		CustomWheelModel = "models/shittywangan/z31wheel.mdl",
		CustomWheelPosFL = Vector(59,36.35,-1),
		CustomWheelPosFR = Vector(59,-36.35,-1),
		CustomWheelPosRL = Vector(-51,37,-1),
		CustomWheelPosRR = Vector(-51,-37,-1),
		CustomWheelAngleOffset = Angle(0,-90,0),
		FrontWheelRadius = 14,
		RearWheelRadius = 14,
		BulletProofTires = true,
		
		CustomMassCenter = Vector(0,0,10),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-20,19,27),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-98,25,-1.5),
				ang = Angle(90,180,0)
			}
		},
		
		FrontHeight = 4,
		FrontConstant = 38000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 4,
		RearConstant = 38000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 1500,
		
		TurnSpeed = 9,
		ForceTransmission = 1,
		
		MaxGrip = 1.5*103,
		Efficiency = 1.33,
		GripOffset = 2.5,
		BrakePower = 35,
		
		IdleRPM = 750,
		LimitRPM = 7000,
		Revlimiter = false,
		PeakTorque = 1.5*131,
		PowerbandStart = 1500,
		PowerbandEnd = 5600,
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 2,
		
		EngineSoundPreset = -1,
		limitpitch = 0.96,
		
		snd_pitch = 1.25* 0.7,
		snd_idle = "pga/simulated_vehicles/ccx/idle.wav",
		
		snd_low = "pga/simulated_vehicles/ccx/enginelow.wav",
		snd_low_revdown = "pga/simulated_vehicles/ccx/revdown.wav",
		snd_low_pitch = 1,
		
		snd_mid = "pga/simulated_vehicles/ccx/enginehigh.wav",
		snd_mid_gearup = "pga/simulated_vehicles/ccx/shiftup.wav",
		snd_mid_geardown = "pga/simulated_vehicles/ccx/shiftdown.wav",

		snd_mid_pitch = 1,
		snd_horn = "simulated_vehicles/horn_5.wav",
		
		DifferentialGear = 0.535,
		Gears = {-0.16,0,0.12,0.21,0.32,0.42,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_z31", V )