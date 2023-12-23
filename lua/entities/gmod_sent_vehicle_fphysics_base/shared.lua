ENT.Type            = "anim"

ENT.PrintName = "Comedy Effect"
ENT.Author = "Blu"
ENT.Information = ""
ENT.Category = "Fun + Games"

ENT.Spawnable       = false
ENT.AdminSpawnable  = false

ENT.AutomaticFrameAdvance = true
ENT.RenderGroup = RENDERGROUP_BOTH 
ENT.Editable = false -- not needed in your gamemode

ENT.IsSimfphyscar = true

function ENT:SetupDataTables()
	--FLOAT
	self:NetworkVar( "Float",1, "SteerSpeed" )
	self:NetworkVar( "Float",2, "FastSteerConeFadeSpeed" )
	self:NetworkVar( "Float",3, "FastSteerAngle" )
	self:NetworkVar( "Float",4, "FrontSuspensionHeight" )
	self:NetworkVar( "Float",5, "RearSuspensionHeight" )
	self:NetworkVar( "Float",6, "MaxTorque" )
	self:NetworkVar( "Float",7, "DifferentialGear" )
	self:NetworkVar( "Float",8, "BrakePower" )
	self:NetworkVar( "Float",9, "PowerDistribution" )
	self:NetworkVar( "Float",10, "Efficiency" )
	self:NetworkVar( "Float",11, "MaxTraction" )
	self:NetworkVar( "Float",12, "TractionBias" )
	self:NetworkVar( "Float",13, "FlyWheelRPM" )
	self:NetworkVar( "Float",14, "Throttle" )
	self:NetworkVar( "Float",15, "VehicleSteer" )
	self:NetworkVar( "Float",16, "Boost" )

	-- INT
	self:NetworkVar( "Int",0, "EngineSoundPreset" )
	self:NetworkVar( "Int",1, "IdleRPM" )
	self:NetworkVar( "Int",2, "LimitRPM" )
	self:NetworkVar( "Int",3, "PowerBandStart" )
	self:NetworkVar( "Int",4, "PowerBandEnd" )
	self:NetworkVar( "Int",5, "Gear" )
	self:NetworkVar( "Int",6, "Clutch" )

	-- BOOL
	self:NetworkVar( "Bool",1, "TurboCharged" )
	--2 ?
	self:NetworkVar( "Bool",3, "Active" )
	self:NetworkVar( "Bool",4, "SuperCharged" )
	-- 5?
	--6 ?
	self:NetworkVar( "Bool",7, "IsBraking" )
	self:NetworkVar( "Bool",8, "LightsEnabled" )
	self:NetworkVar( "Bool",9, "LampsEnabled" )
	self:NetworkVar( "Bool",10, "Revlimiter" )
	self:NetworkVar( "Bool",11, "FogLightsEnabled" )
	self:NetworkVar( "Bool",12, "EMSEnabled" )
	-- 13?
	self:NetworkVar( "Bool",14, "BackFire" )
	self:NetworkVar( "Bool",15, "DoNotStall" )
	self:NetworkVar( "Bool",16, "HandBrakeEnabled" )
	self:NetworkVar( "Bool",17, "BulletProofTires" )
	self:NetworkVar( "Bool",18, "HasNeon" )
	self:NetworkVar( "Bool",19, "HasRainbowNeon" )
	self:NetworkVar( "Bool",20, "HasNitrousColor" )
	self:NetworkVar( "Bool",21, "HasNitrousRainbowColor" )

	-- ENTITY
	self:NetworkVar( "Entity",0, "Driver" )
	self:NetworkVar( "Entity",1, "DriverSeat" )

	-- STRING
	self:NetworkVar( "String",1, "Spawn_List")
	self:NetworkVar( "String",2, "Lights_List")
	self:NetworkVar( "String",3, "Soundoverride")

	-- VECTOR
	self:NetworkVar( "Vector",0, "TireSmokeColor" )
	-- 1 ?
	self:NetworkVar( "Vector",2, "NeonColor" )
	self:NetworkVar( "Vector",3, "NitrousColor" )
	

	if SERVER then
		self:NetworkVarNotify( "FrontSuspensionHeight", self.OnFrontSuspensionHeightChanged )
		self:NetworkVarNotify( "RearSuspensionHeight", self.OnRearSuspensionHeightChanged )
		self:NetworkVarNotify( "TurboCharged", self.OnTurboCharged )
		self:NetworkVarNotify( "SuperCharged", self.OnSuperCharged )
		self:NetworkVarNotify( "Active", self.OnActiveChanged )
		self:NetworkVarNotify( "Throttle", self.OnThrottleChanged )
		self:SetNWVector( "NeonColor", Vector(1,1,1) ) 
	end
end

function ENT:IsSimfphyscar()
	return true
end

function ENT:GetCurHealth()
	return self:GetNWFloat( "Health", self:GetMaxHealth() )
end

function ENT:GetMaxHealth()
	return self:GetNWFloat( "MaxHealth", 2000 )
end

function ENT:OnSmoke()
	return self:GetNWBool( "OnSmoke", false )
end

function ENT:OnFire()
	return self:GetNWBool( "OnFire", false )
end

function ENT:GetBackfireSound()
	return self:GetNWString( "backfiresound" )
end

function ENT:SetBackfireSound( the_sound )
	self:SetNWString( "backfiresound", the_sound ) 
end

function ENT:BodyGroupIsValid( bodygroups )
	for index, groups in pairs( bodygroups ) do
		local mygroup = self:GetBodygroup( index )
		for g_index = 1, table.Count( groups ) do
			if mygroup == groups[g_index] then return true end
		end
	end
	return false
end
