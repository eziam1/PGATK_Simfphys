simfphys = istable( simfphys ) and simfphys or {}
simfphys.DamageEnabled = false
simfphys.DamageMul = 0.67
simfphys.pDamageEnabled = false
simfphys.VERSION = 1.0

simfphys.TractionData = {}
simfphys.TractionData["ice"] = .23
simfphys.TractionData["gmod_ice"] = 0.067
simfphys.TractionData["snow"] = 0.467
simfphys.TractionData["slipperyslime"] = 0.133
simfphys.TractionData["grass"] = 0.75
simfphys.TractionData["sand"] = 0.75
simfphys.TractionData["dirt"] = 0.75
simfphys.TractionData["concrete"] = 1
simfphys.TractionData["metal"] = 1
simfphys.TractionData["glass"] = 1
simfphys.TractionData["gravel"] = 0.75
simfphys.TractionData["rock"] = 1
simfphys.TractionData["wood"] = 1

game.AddParticles("particles/vehicle.pcf")
game.AddParticles("particles/fire_01.pcf")

PrecacheParticleSystem("fire_large_01")
PrecacheParticleSystem("WheelDust")
PrecacheParticleSystem("smoke_gib_01")
PrecacheParticleSystem("burning_engine_01")

function simfphys.IsCar( ent )
	if not IsValid( ent ) then return false end
	
	local IsVehicle = ent:GetClass():lower() == "gmod_sent_vehicle_fphysics_base"
	
	return IsVehicle
end

local meta = FindMetaTable( "Player" )
function meta:IsDrivingSimfphys()
	local Car = self:GetSimfphys()
	local Pod = self:GetVehicle()
	
	if not IsValid( Pod ) or not IsValid( Car ) then return false end
	if not Car.GetDriverSeat or not isfunction( Car.GetDriverSeat ) then return false end
	
	return Pod == Car:GetDriverSeat()
end

function meta:GetSimfphys()
	if not self:InVehicle() then return NULL end
	
	local Pod = self:GetVehicle()
	
	if not IsValid( Pod ) then return NULL end
	
	if Pod.SPHYSchecked then
		
		return Pod.SPHYSBaseEnt
	else
		local Parent = Pod:GetParent()
		
		if not IsValid( Parent ) then return NULL end
		
		if not simfphys.IsCar( Parent ) then return NULL end
		
		Pod.SPHYSchecked = true
		Pod.SPHYSBaseEnt = Parent
		Pod.vehiclebase = Parent -- compatibility for old addons
		
		return Parent
	end
end

if SERVER then
	function simfphys.SpawnVehicleSimple( spawnname, pos, ang, ply )
		
		if not isstring( spawnname ) then print("invalid spawnname") return NULL end
		if not isvector( pos ) then print("invalid spawn position") return NULL end
		if not isangle( ang ) then print("invalid spawn angle") return NULL end
		
		local vehicle = list.Get( "simfphys_vehicles" )[ spawnname ]
		
		if not vehicle then print("vehicle \""..spawnname.."\" does not exist!") return NULL end
		
		local Ent = simfphys.SpawnVehicle( ply, pos, ang, vehicle.Model, vehicle.Class, spawnname, vehicle, true )
		
		return Ent
	end
	
	function simfphys.SpawnVehicle( Player, Pos, Ang, Model, Class, VName, VTable, bNoOwner )
		
		if not bNoOwner then
			if not gamemode.Call( "PlayerSpawnVehicle", Player, Model, VName, VTable ) then return end
		end

		if not file.Exists( Model, "GAME" ) then 
			//Player:PrintMessage( HUD_PRINTTALK, "ERROR: \""..Model.."\" does not exist! (Class: "..VName..")")
			return
		end
		
		local Ent = ents.Create( "gmod_sent_vehicle_fphysics_base" )
		if not Ent then return NULL end
		
		Ent:SetModel( Model )
		Ent:SetAngles( Ang )
		Ent:SetPos( Pos )

		Ent:Spawn()
		Ent:Activate()

		Ent.VehicleName = VName
		Ent.VehicleTable = VTable
		if(IsValid(Player)) then
			Player.CurrentVehicle = Ent
		end
		Ent:SetSpawn_List( VName )
		
		if VTable.Members then
			table.Merge( Ent, VTable.Members )
			
			if Ent.ModelInfo then
				if Ent.ModelInfo.Bodygroups then
					for i = 1, table.Count( Ent.ModelInfo.Bodygroups ) do
						Ent:SetBodygroup(i, Ent.ModelInfo.Bodygroups[i] ) 
					end
				end
				
				if Ent.ModelInfo.Skin then
					Ent:SetSkin( Ent.ModelInfo.Skin )
				end
				
				if Ent.ModelInfo.Color then
					Ent:SetColor( Ent.ModelInfo.Color )
					
					local Color = Ent.ModelInfo.Color
					local dot = Color.r * Color.g * Color.b * Color.a
					Ent.OldColor = dot
					
					local data = {
						Color = Color,
						RenderMode = 0,
						RenderFX = 0
					}
					duplicator.StoreEntityModifier( Ent, "colour", data )
				end
			end
			
			Ent:SetTireSmokeColor(Vector(255,255,255) / 255)
			
			Ent.Turbocharged = Ent.Turbocharged or false
			Ent.Supercharged = Ent.Supercharged or false
			
			Ent:SetEngineSoundPreset( Ent.EngineSoundPreset )
			Ent:SetMaxTorque( Ent.PeakTorque )

			Ent:SetDifferentialGear( Ent.DifferentialGear )
			
			Ent:SetSteerSpeed( Ent.TurnSpeed )
			Ent:SetFastSteerConeFadeSpeed( Ent.SteeringFadeFastSpeed )
			Ent:SetFastSteerAngle( Ent.FastSteeringAngle )
			
			Ent:SetEfficiency( Ent.Efficiency )
			Ent:SetMaxTraction( Ent.MaxGrip )
			Ent:SetTractionBias( Ent.GripOffset / Ent.MaxGrip )
			Ent:SetPowerDistribution( Ent.PowerBias )
			
			Ent:SetBackFire( Ent.Backfire or false )
			Ent:SetDoNotStall( Ent.DoNotStall or false )
			
			Ent:SetIdleRPM( Ent.IdleRPM )
			Ent:SetLimitRPM( Ent.LimitRPM )
			Ent:SetRevlimiter( Ent.Revlimiter or false )
			Ent:SetPowerBandEnd( Ent.PowerbandEnd )
			Ent:SetPowerBandStart( Ent.PowerbandStart )
			
			Ent:SetTurboCharged( Ent.Turbocharged )
			Ent:SetSuperCharged( Ent.Supercharged )
			Ent:SetBrakePower( Ent.BrakePower )
			
			Ent:SetLights_List( Ent.LightsTable or "no_lights" )
			
			Ent:SetBulletProofTires( Ent.BulletProofTires or false )
			
			Ent:SetBackfireSound( Ent.snd_backfire or "" )

		end
		
		if IsValid( Player ) then
			gamemode.Call( "PlayerSpawnedVehicle", Player, Ent )
			
			return Ent
		end
		
		return Ent
	end
	
	function simfphys.SetOwner( ply, entity )
		if not IsValid( entity ) or not IsValid( ply ) then return end
		
		if CPPI then
			if not IsEntity( ply ) then return end
			
			if IsValid( ply ) then
				entity:CPPISetOwner( ply )
			end
		end
	end
end

simfphys.SoundPresets = {
	{
		"simulated_vehicles/gta5_dukes/dukes_idle.wav",
		"simulated_vehicles/gta5_dukes/dukes_low.wav",
		"simulated_vehicles/gta5_dukes/dukes_mid.wav",
		"simulated_vehicles/gta5_dukes/dukes_revdown.wav",
		"simulated_vehicles/gta5_dukes/dukes_second.wav",
		"simulated_vehicles/gta5_dukes/dukes_second.wav",
		0.8,
		1,
		0.8
	},
	{
		"simulated_vehicles/master_chris_charger69/charger_idle.wav",
		"simulated_vehicles/master_chris_charger69/charger_low.wav",
		"simulated_vehicles/master_chris_charger69/charger_mid.wav",
		"simulated_vehicles/master_chris_charger69/charger_revdown.wav",
		"simulated_vehicles/master_chris_charger69/charger_second.wav",
		"simulated_vehicles/master_chris_charger69/charger_shiftdown.wav",
		0.75,
		0.9,
		0.95
	},
	{
		"simulated_vehicles/shelby/shelby_idle.wav",
		"simulated_vehicles/shelby/shelby_low.wav",
		"simulated_vehicles/shelby/shelby_mid.wav",
		"simulated_vehicles/shelby/shelby_revdown.wav",
		"simulated_vehicles/shelby/shelby_second.wav",
		"simulated_vehicles/shelby/shelby_shiftdown.wav",
		0.8,
		1,
		0.85
	},
	{
		"simulated_vehicles/jeep/jeep_idle.wav",
		"simulated_vehicles/jeep/jeep_low.wav",
		"simulated_vehicles/jeep/jeep_mid.wav",
		"simulated_vehicles/jeep/jeep_revdown.wav",
		"simulated_vehicles/jeep/jeep_second.wav",
		"simulated_vehicles/jeep/jeep_second.wav",
		0.9,
		1,
		1
	},
	{
		"simulated_vehicles/v8elite/v8elite_idle.wav",
		"simulated_vehicles/v8elite/v8elite_low.wav",
		"simulated_vehicles/v8elite/v8elite_mid.wav",
		"simulated_vehicles/v8elite/v8elite_revdown.wav",
		"simulated_vehicles/v8elite/v8elite_second.wav",
		"simulated_vehicles/v8elite/v8elite_second.wav",
		0.8,
		1,
		1
	},
	{
		"simulated_vehicles/4banger/4banger_idle.wav",
		"simulated_vehicles/4banger/4banger_low.wav",
		"simulated_vehicles/4banger/4banger_mid.wav",
		"simulated_vehicles/4banger/4banger_low.wav",
		"simulated_vehicles/4banger/4banger_second.wav",
		"simulated_vehicles/4banger/4banger_second.wav",
		0.8,
		0.9,
		1
	},
	{
		"simulated_vehicles/jalopy/jalopy_idle.wav",
		"simulated_vehicles/jalopy/jalopy_low.wav",
		"simulated_vehicles/jalopy/jalopy_mid.wav",
		"simulated_vehicles/jalopy/jalopy_revdown.wav",
		"simulated_vehicles/jalopy/jalopy_second.wav",
		"simulated_vehicles/jalopy/jalopy_shiftdown.wav",
		0.95,
		1.1,
		0.9
	},
	{
		"simulated_vehicles/alfaromeo/alfaromeo_idle.wav",
		"simulated_vehicles/alfaromeo/alfaromeo_low.wav",
		"simulated_vehicles/alfaromeo/alfaromeo_mid.wav",
		"simulated_vehicles/alfaromeo/alfaromeo_low.wav",
		"simulated_vehicles/alfaromeo/alfaromeo_second.wav",
		"simulated_vehicles/alfaromeo/alfaromeo_second.wav",
		0.65,
		0.8,
		1
	},
	{
		"simulated_vehicles/generic1/generic1_idle.wav",
		"simulated_vehicles/generic1/generic1_low.wav",
		"simulated_vehicles/generic1/generic1_mid.wav",
		"simulated_vehicles/generic1/generic1_revdown.wav",
		"simulated_vehicles/generic1/generic1_second.wav",
		"simulated_vehicles/generic1/generic1_second.wav",
		0.8,
		1.1,
		1
	},
	{
		"simulated_vehicles/generic2/generic2_idle.wav",
		"simulated_vehicles/generic2/generic2_low.wav",
		"simulated_vehicles/generic2/generic2_mid.wav",
		"simulated_vehicles/generic2/generic2_revdown.wav",
		"simulated_vehicles/generic2/generic2_second.wav",
		"simulated_vehicles/generic2/generic2_second.wav",
		1,
		1.1,
		1
	},
	{
		"simulated_vehicles/generic3/generic3_idle.wav",
		"simulated_vehicles/generic3/generic3_low.wav",
		"simulated_vehicles/generic3/generic3_mid.wav",
		"simulated_vehicles/generic3/generic3_revdown.wav",
		"simulated_vehicles/generic3/generic3_second.wav",
		"simulated_vehicles/generic3/generic3_second.wav",
		0.9,
		0.9,
		1
	},
	{
		"simulated_vehicles/generic4/generic4_idle.wav",
		"simulated_vehicles/generic4/generic4_low.wav",
		"simulated_vehicles/generic4/generic4_mid.wav",
		"simulated_vehicles/generic4/generic4_revdown.wav",
		"simulated_vehicles/generic4/generic4_gear.wav",
		"simulated_vehicles/generic4/generic4_shiftdown.wav",
		1,
		1.1,
		1
	},
	{
		"simulated_vehicles/generic5/generic5_idle.wav",
		"simulated_vehicles/generic5/generic5_low.wav",
		"simulated_vehicles/generic5/generic5_mid.wav",
		"simulated_vehicles/generic5/generic5_revdown.wav",
		"simulated_vehicles/generic5/generic5_gear.wav",
		"simulated_vehicles/generic5/generic5_gear.wav",
		0.7,
		0.7,
		1
	},
	{
		"simulated_vehicles/gta5_gauntlet/gauntlet_idle.wav",
		"simulated_vehicles/gta5_gauntlet/gauntlet_low.wav",
		"simulated_vehicles/gta5_gauntlet/gauntlet_mid.wav",
		"simulated_vehicles/gta5_gauntlet/gauntlet_revdown.wav",
		"simulated_vehicles/gta5_gauntlet/gauntlet_gear.wav",
		"simulated_vehicles/gta5_gauntlet/gauntlet_gear.wav",
		0.95,
		1.1,
		1
	}
}
