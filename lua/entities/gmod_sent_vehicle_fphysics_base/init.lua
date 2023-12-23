AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")
include("spawn.lua")
include("simfunc.lua")
include("numpads.lua")
include("horn_siren_lights.lua")

function ENT:OnSpawn()
end

function ENT:OnTick()
if(self:WaterLevel() == 3) then
	if(self:GetCurHealth() <= 30) then
		DestroyVehicle(self, false)
		//self:GetDriver():Kill()
	else
		self:TakeDamage(6, Entity(0), Entity(0) )
	end
end
if(self.gearwhine && self.canupgrade == true) then
local vmax = ((((self:GetLimitRPM()) * self.Gears[ table.Count( self.Gears ) ] * (self:GetDifferentialGear())) * 3.14 * self.RearWheelRadius * 2) / 52)
self.gearwhine:ChangeVolume( math.Clamp((self.WheelRPM^1.4)/vmax,0,0.85)*math.Clamp(self:GetThrottle(),0.33,1)*((self.ThrottleDelay) > CurTime() && 0.2 or 1) )
self.gearwhine:ChangePitch( math.Clamp(0.4+((self.WheelRPM^1.16)/vmax)*((self.ThrottleDelay) > CurTime() && 0.75 or 1),0.4,2.55)*100,0.1 )
end
local inworldcheckleft = {}
inworldcheckleft.start = self:GetPos()+self:GetUp()*(self:OBBMins().z+8)
inworldcheckleft.endpos = self:GetPos()+self:GetUp()*8+self:GetRight()*-(self:OBBMaxs().y+8)
inworldcheckleft.filter = function( ent ) 
	if ( ent:IsPlayer() ) then 
		return false 
	elseif ( ent == self ) then 
		return false 
	elseif ( ent:GetClass() == "gmod_sent_vehicle_fphysics_wheel" ) then 
		return false 
	else
		return true
	end
end
local inworldcheckright = {}
inworldcheckright.start = self:GetPos()+self:GetUp()*(self:OBBMins().z+8)
inworldcheckright.endpos = self:GetPos()+self:GetUp()*8+self:GetRight()*(self:OBBMaxs().y+8)
inworldcheckright.filter = function( ent ) 
	if ( ent:IsPlayer() ) then 
		return false 
	elseif ( ent == self ) then 
		return false 
	elseif ( ent:GetClass() == "gmod_sent_vehicle_fphysics_wheel" ) then 
		return false 
	else
		return true
	end
end
local inworldcheckup = {}
inworldcheckup.start = self:GetPos()+self:GetUp()*((self:OBBMins().z+self:OBBMaxs().z)/2)
inworldcheckup.endpos = self:GetPos()+self:GetUp()*(self:OBBMaxs().z+8)
inworldcheckup.filter = function( ent ) 
	if ( ent:IsPlayer() ) then 
		return false 
	elseif ( ent == self ) then 
		return false 
	elseif ( ent:GetClass() == "gmod_sent_vehicle_fphysics_wheel" ) then 
		return false 
	else
		return true
	end
end
self.traceleft = util.TraceLine( inworldcheckleft )
self.traceright = util.TraceLine( inworldcheckright )
self.traceup = util.TraceLine( inworldcheckup )
if((self.traceleft.Hit or self.traceright.Hit or self.traceup.Hit) && self:GetVelocity():Length() > 150) then
	if(!self.traceup.Hit) then
		self:GetPhysicsObject():SetVelocity(Vector(self:GetPhysicsObject():GetVelocity().x/1.015,self:GetPhysicsObject():GetVelocity().y/1.015,self:GetPhysicsObject():GetVelocity().z))
	end
end
end

function ENT:OnDelete()
if(self.MadVehicle) then
	self:EmitSound("common/null.wav", 85,100,0.4,CHAN_STREAM)
end
end

function ENT:OnDestroyed()
if(self.MadVehicle) then
	self:EmitSound("common/null.wav", 85,100,0.4,CHAN_STREAM)
end
end

function ENT:Think()
	local Time = CurTime()
	
	self:OnTick()
	
	self.NextTick = self.NextTick or 0
	if self.NextTick < Time then
		self.NextTick = Time + 0.025
		
		if IsValid( self.DriverSeat ) then
			local Driver = self.DriverSeat:GetDriver()
			Driver = IsValid( self.RemoteDriver ) and self.RemoteDriver or Driver
			
			local OldDriver = self:GetDriver()
			if OldDriver ~= Driver then
				self:SetDriver( Driver )
				
				local HadDriver = IsValid( OldDriver )
				local HasDriver = IsValid( Driver )
				
				if HasDriver then
					self:SetActive( true )
					self:StartEngine()
				else
					if self.ems then
						self.ems:Stop()
					end

					if self.horn then
						self.horn:Stop()
					end

					if self.PressedKeys then
						for k,v in pairs( self.PressedKeys ) do
							if isbool( v ) then
								self.PressedKeys[k] = false
							end
						end
					end
					
					if self.keys then
						for i = 1, table.Count( self.keys ) do
							numpad.Remove( self.keys[i] )
						end
					end
					self:SetActive( false )
					self:StopEngine()
				end
			end
		end
		
		if self:IsInitialized() then
			self:SimulateVehicle( Time )
			self:ControlLighting( Time )
			self:ControlHorn()
			
			//self.NextWaterCheck = self.NextWaterCheck or 0
			//if self.NextWaterCheck < Time then
				//self.NextWaterCheck = Time + 0.2
				//self:WaterPhysics()
			//end
			
			if self:GetActive() then
				self:SetPhysics( ((math.abs(self.ForwardSpeed) < 50) and (self.Brake > 0 or self.HandBrake > 0)) )
			else
				self:SetPhysics( true )
			end
		end
	end
	
	self:NextThink( Time )
	
	return true
end

function ENT:ControlHorn()	
	local HornVol = self.HornKeyIsDown and 1 or 0
	self.HornVolume = self.HornVolume and self.HornVolume + math.Clamp(HornVol - self.HornVolume,-0.45,0.8) or 0
	
	if self.horn then
		if self.HornVolume <= 0 then
			if self.horn then
				self.horn:Stop()
				self.horn = nil
			end
		else
			self.horn:ChangeVolume( self.HornVolume ^ 2 )
		end
	end
end

function ENT:TriggerInput( name, value )
	if name == "Engine Start" then
		if value >= 1 then
			self:SetActive( true )
			self:StartEngine()
		end
	end
	
	if name == "Engine Stop" then
		if value >= 1 then
			self:SetActive( false )
			self:StopEngine()
		end
	end
	
	if name == "Engine Toggle" then
		if value >= 1 then
			if self:GetActive() then
				if not self:EngineActive() then
					self:StartEngine()
				else
					self:StopEngine()
					self:SetActive( false )
				end
			else
				self:SetActive( true )
				self:StartEngine()
			end
		end
	end
	
	if name == "Lock" then
		if value >= 1 then
			self:Lock()
		else
			self:UnLock()
		end
	end
	
	if name == "Eject Driver" then
		local Driver = self:GetDriver()
		if IsValid( Driver ) then
			Driver:ExitVehicle()
		end
	end
	
	if name == "Eject Passengers" then
		if istable( self.pSeat ) then
			for i = 1, table.Count( self.pSeat ) do
				if IsValid( self.pSeat[i] ) then
					
					local Driver = self.pSeat[i]:GetDriver()
					
					if IsValid( Driver ) then
						Driver:ExitVehicle()
					end
				end
			end
		end
	end
	
	if name == "Steer" then
		self:SteerVehicle( math.Clamp( value, -1 , 1) * self.VehicleData["steerangle"] )
		for i = 1, table.Count(self.Wheels) do
			local Wheel = self.Wheels[i]
			if IsValid( Wheel ) then
				Wheel:PhysWake()
			end
		end
	end
	
	if name == "Throttle" then
		self.PressedKeys["joystick_throttle"] = math.Clamp( value, 0, 1 )
	end
	
	if name == "Brake/Reverse" then
		self.PressedKeys["joystick_brake"] = math.Clamp( value, 0, 1 )
	end

	if name == "Gear Up" then
		if value >= 1 then
			self.CurrentGear = math.Clamp(self.CurrentGear + 1,1,table.Count( self.Gears ) )
			self:SetGear( self.CurrentGear )
		end
	end
	
	if name == "Gear Down" then
		if value >= 1 then
			self.CurrentGear = math.Clamp(self.CurrentGear - 1,1,table.Count( self.Gears ) )
			self:SetGear( self.CurrentGear )
		end
	end
	
	if name == "Set Gear" then
		self:ForceGear( math.Round( value, 0 ) )
	end
	
	if name == "Clutch" then
		self.PressedKeys["joystick_clutch"] = math.Clamp( value, 0, 1 )
	end
	
	if name == "Handbrake" then
		self.PressedKeys["joystick_handbrake"] = (value > 0) and 1 or 0
	end
end

function ENT:ForceGear( desGear )
	self.CurrentGear = math.Clamp( math.Round( desGear, 0 ),1,table.Count( self.Gears ) )
	self:SetGear( self.CurrentGear )
end

function ENT:OnActiveChanged( name, old, new)
	if new == old then return end
	
	if not self:IsInitialized() then return end
	
	local TurboCharged = self:GetTurboCharged()
	local SuperCharged = self:GetSuperCharged()
	
	if new == true then
		
		self.HandBrakePower = self:GetMaxTraction() + 20 - self:GetTractionBias() * self:GetMaxTraction()
		
		if self:GetEMSEnabled() then
			if self.ems then
				self.ems:Play()
			end
		end
		
		if TurboCharged then
			self.Turbo = CreateSound(self, self.snd_spool or "simulated_vehicles/turbo_spin.wav")
			self.Turbo:PlayEx(0,0)
		end
		if self.BetterShifting or self.WhineSound then
			self.gearwhine = CreateSound(self, self.WhineSound or "eziam/raceattack/tranny.wav")
			self.gearwhine:SetSoundLevel( 75 )
			self.gearwhine:PlayEx(0,0)
		end
		
		if SuperCharged then
			self.Blower = CreateSound(self, self.snd_bloweroff or "simulated_vehicles/blower_spin.wav")
			self.BlowerWhine = CreateSound(self, self.snd_bloweron or "pga/blower_whine.wav")
			
			self.Blower:PlayEx(0,0)
			self.BlowerWhine:PlayEx(0,0)
		end
	else
		self:StopEngine()
		
		if TurboCharged then
			self.Turbo:Stop()
		end
		if self.gearwhine then
			self.gearwhine:Stop()
		end

		if SuperCharged then
			self.Blower:Stop()
			self.BlowerWhine:Stop()
		end
		
		self:SetIsBraking( false )
	end
	
	if istable( self.Wheels ) then
		for i = 1, table.Count( self.Wheels ) do
			local Wheel = self.Wheels[ i ]
			if IsValid(Wheel) then
				Wheel:SetOnGround( 0 )
			end
		end
	end
end

function ENT:OnThrottleChanged( name, old, new)
	if new == old then return end
	
	local Health = self:GetCurHealth()
	local MaxHealth = self:GetMaxHealth()
	local Active = self:EngineActive()
	
	if new == 1 then
		if Health < MaxHealth * 0.6 then
			if Active then
				if math.Round(math.random(0,4),0) == 1 then
					//self:DamagedStall()
				end
			end
		end
	end
	
	if new == 0 then
		if self:GetTurboCharged() then
			if (self.SmoothTurbo > 350) then
				local Volume = math.Clamp( ((self.SmoothTurbo - 300) / 150) ,0, 1) * 0.5
				self.SmoothTurbo = 0
				/*self.BlowOff:Stop()
				self.BlowOff = CreateSound(self, self.snd_blowoff or "simulated_vehicles/turbo_blowoff.wav")*/
				self:EmitSound("pga/blowoff"..math.random(1,5)..".wav", 85, math.random(90,115),0.5,CHAN_STATIC)
				self:EmitSound("eziam/raceattack/blowoff"..math.random(1,2)..".wav", 80, math.random(90,115),0.6,CHAN_STATIC)
				self:EmitSound("pga/blowofflayer.wav", 80, math.random(90,115),0.4,CHAN_STATIC)
			end
		end
	end
end

function ENT:WaterPhysics()
	if self:WaterLevel() <= 1 then self.IsInWater = false return end
	
	if self:GetDoNotStall() then 
		
		self:SetOnFire( false )
		self:SetOnSmoke( false )
		
		return
	end
	
	if not self.IsInWater then
		if self:EngineActive() then
			self:EmitSound( "vehicles/jetski/jetski_off.wav" )
		end
		
		self.IsInWater = true
		self.EngineIsOn = 0
		self.EngineRPM = 0
		self:SetFlyWheelRPM( 0 )
		
		self:SetOnFire( false )
		self:SetOnSmoke( false )
	end
	
	local phys = self:GetPhysicsObject()
	phys:ApplyForceCenter( -self:GetVelocity() * 0.5 * phys:GetMass() )
end

function ENT:ControlLighting( curtime )
	if (self.NextLightCheck or 0) < curtime then
		
		if self.LightsActivated ~= self.DoCheck then
			self.DoCheck = self.LightsActivated
			
			if self.LightsActivated then
				self:SetLightsEnabled(true)
			end
		end
	end
end

function ENT:GetEngineData()
	local LimitRPM = math.max(self:GetLimitRPM(),4)
	local Powerbandend = math.Clamp(self:GetPowerBandEnd(),3,LimitRPM - 1)
	local Powerbandstart = math.Clamp(self:GetPowerBandStart(),2,Powerbandend - 1)
	local IdleRPM = math.Clamp(self:GetIdleRPM(),1,Powerbandstart - 1)
	local Data = {
		IdleRPM = IdleRPM,
		Powerbandstart = Powerbandstart,
		Powerbandend = Powerbandend,
		LimitRPM = LimitRPM,
	}
	return Data
end

function ENT:SimulateVehicle( curtime )
	local Active = self:GetActive()
	
	local EngineData = self:GetEngineData()
	
	local LimitRPM = EngineData.LimitRPM
	local Powerbandend = EngineData.Powerbandend
	local Powerbandstart = EngineData.Powerbandstart
	local IdleRPM = EngineData.IdleRPM
	
	self.Forward =  self:LocalToWorldAngles( self.VehicleData.LocalAngForward ):Forward() 
	self.Right = self:LocalToWorldAngles( self.VehicleData.LocalAngRight ):Forward() 
	self.Up = self:GetUp()
	
	self.Vel = self:GetVelocity()
	self.VelNorm = self.Vel:GetNormalized()
	
	self.MoveDir = math.acos( math.Clamp( self.Forward:Dot(self.VelNorm) ,-1,1) ) * (180 / math.pi)
	self.ForwardSpeed = math.cos(self.MoveDir * (math.pi / 180)) * self.Vel:Length()
	
	if self.poseon then
		self.cpose = self.cpose or self.LightsPP.min
		local anglestep = math.abs(math.max(self.LightsPP.max or self.LightsPP.min)) / 3
		self.cpose = self.cpose + math.Clamp(self.poseon - self.cpose,-anglestep,anglestep)
		self:SetPoseParameter(self.LightsPP.name, self.cpose)
	end
	
	self:SetPoseParameter("vehicle_guage", (math.abs(self.ForwardSpeed) * 0.0568182 * 0.75) / (self.SpeedoMax or 120))
	
	if self.RPMGaugePP then
		local flywheelrpm = self:GetFlyWheelRPM()
		local rpm
		if self:GetRevlimiter() then
			local throttle = self:GetThrottle()
			local maxrpm = self:GetLimitRPM()
			local revlimiter = (maxrpm > 2500) and (throttle > 0)
			rpm = math.Round(((flywheelrpm >= maxrpm - 200) and revlimiter) and math.Round(flywheelrpm - 200 + math.sin(curtime * 50) * 600,0) or flywheelrpm,0)
		else
			rpm = flywheelrpm
		end
	
		self:SetPoseParameter(self.RPMGaugePP,  rpm / self.RPMGaugeMax)
	end
	
	
	if Active then
		local ply = self:GetDriver()
		local IsValidDriver = IsValid( ply ) or self.AI
		
		local GearUp = self.PressedKeys["M1"] and 1 or self.PressedKeys["joystick_gearup"]
		local GearDown = self.PressedKeys["M2"] and 1 or self.PressedKeys["joystick_geardown"]
		
		local W = 0
		local A = 0
		local S = 0
		local D = 0
		
		local aW = 0
		local aA = 0
		local aS = 0
		local aD = 0
		local Shift = 0
		local Space = 0
		if(IsValidDriver) then
			if(ply:IsPlayer()) then
				W = ply:KeyDown( IN_FORWARD ) and 1 or 0
				A = ply:KeyDown( IN_MOVELEFT ) and 1 or 0
				S = ply:KeyDown( IN_BACK ) and 1 or 0
				D = ply:KeyDown( IN_MOVERIGHT ) and 1 or 0
				aW = W
				aA = A
				aS = S
				aD = D
				Shift = ply:KeyDown( IN_WALK ) and 0 or 1
			else
				W = self.PressedKeys["W"] and 1 or 0
				A = self.PressedKeys["A"] and 1 or self.PressedKeys["joystick_steer_left"]
				S = self.PressedKeys["S"] and 1 or 0
				D = self.PressedKeys["D"] and 1 or self.PressedKeys["joystick_steer_right"]
				
				aW = self.PressedKeys["aW"] and 1 or 0
				aA = self.PressedKeys["aA"] and 1 or 0
				aS = self.PressedKeys["aS"] and 1 or 0
				aD = self.PressedKeys["aD"] and 1 or 0
				Shift = (self.PressedKeys["Shift"] and 0 or 1)
				Space = self.PressedKeys["Space"] and 1 or 0
			end
		end
		
		if IsValidDriver then self:PlayerSteerVehicle( ply, A, D ) end
		
		local transmode = 1
		
		local Alt = 0
		
		self:SimulateTransmission(W,S,Shift,Alt,Space,GearUp,GearDown,transmode,IdleRPM,Powerbandstart,Powerbandend,1,false,curtime)
		
		self:SimulateEngine( IdleRPM, LimitRPM, Powerbandstart, Powerbandend, curtime )
		self:SimulateWheels( math.max(Space,Alt), LimitRPM )
		self:SimulateAirControls( aW, aS, aA, aD )
		
		if self.WheelOnGroundDelay < curtime then
			self:WheelOnGround()
			self.WheelOnGroundDelay = curtime + 0.15
		end
	end
	
	if self.CustomWheels then
		self:PhysicalSteer()
	end
end

/*function ENT:SimulateVehicle( curtime )
	local Active = self:GetActive()
	
	local EngineData = self:GetEngineData()
	
	local LimitRPM = EngineData.LimitRPM
	local Powerbandend = EngineData.Powerbandend
	local Powerbandstart = EngineData.Powerbandstart
	local IdleRPM = EngineData.IdleRPM
	
	self.Forward =  self:LocalToWorldAngles( self.VehicleData.LocalAngForward ):Forward() 
	self.Right = self:LocalToWorldAngles( self.VehicleData.LocalAngRight ):Forward() 
	self.Up = self:GetUp()
	
	self.Vel = self:GetVelocity()
	self.VelNorm = self.Vel:GetNormalized()
	
	self.MoveDir = math.acos( math.Clamp( self.Forward:Dot(self.VelNorm) ,-1,1) ) * (180 / math.pi)
	self.ForwardSpeed = math.cos(self.MoveDir * (math.pi / 180)) * self.Vel:Length()
	
	if self.poseon then
		self.cpose = self.cpose or self.LightsPP.min
		local anglestep = math.abs(math.max(self.LightsPP.max or self.LightsPP.min)) / 3
		self.cpose = self.cpose + math.Clamp(self.poseon - self.cpose,-anglestep,anglestep)
		self:SetPoseParameter(self.LightsPP.name, self.cpose)
	end
	
	self:SetPoseParameter("vehicle_guage", (math.abs(self.ForwardSpeed) * 0.0568182 * 0.75) / (self.SpeedoMax or 120))
	
	if self.RPMGaugePP then
		local flywheelrpm = self:GetFlyWheelRPM()
		local rpm
		if self:GetRevlimiter() then
			local throttle = self:GetThrottle()
			local maxrpm = self:GetLimitRPM()
			local revlimiter = (maxrpm > 2500) and (throttle > 0)
			rpm = math.Round(((flywheelrpm >= maxrpm - 200) and revlimiter) and math.Round(flywheelrpm - 200 + math.sin(curtime * 50) * 600,0) or flywheelrpm,0)
		else
			rpm = flywheelrpm
		end
	
		self:SetPoseParameter(self.RPMGaugePP,  rpm / self.RPMGaugeMax)
	end
	
	
	if Active then
		local ply = self:GetDriver()

		local GearUp = 0
		local GearDown = 0

		local W = 0
		local A = 0
		local S = 0
		local D = 0

		local aW = 0
		local aA = 0
		local aS = 0
		local aD = 0

		local Shift = 0

		local sportsmode = 1
		local transmode = true

		local Alt = 0
		local Space = 0

		if IsValid( ply ) then 
			GearUp = ply:KeyDown( IN_ATTACK ) and 1 or 0
			GearDown = ply:KeyDown( IN_ATTACK2 ) and 1 or 0

			W = ply:KeyDown( IN_FORWARD ) and 1 or 0
			A = ply:KeyDown( IN_MOVELEFT ) and 1 or 0
			S = ply:KeyDown( IN_BACK ) and 1 or 0
			D = ply:KeyDown( IN_MOVERIGHT ) and 1 or 0

			aW = W
			aA = A
			aS = S
			aD = D

			Shift = ply:KeyDown( IN_WALK ) and 0 or 1

			--Alt = ply:KeyDown( IN_SPEED ) and 
			--Space = ply:KeyDown( IN_JUMP ) and 1 or 0

			self:PlayerSteerVehicle( ply, A, D )
		end

		self:SimulateTransmission(W,S,Shift,Alt,Space,GearUp,GearDown,transmode,IdleRPM,Powerbandstart,Powerbandend,sportsmode,false,curtime)
		
		self:SimulateEngine( IdleRPM, LimitRPM, Powerbandstart, Powerbandend, curtime )
		self:SimulateWheels( math.max(Space,Alt), LimitRPM )
		self:SimulateAirControls( aW, aS, aA, aD )
		
		if self.WheelOnGroundDelay < curtime then
			self:WheelOnGround()
			self.WheelOnGroundDelay = curtime + 0.15
		end
	end
	
	if self.CustomWheels then
		self:PhysicalSteer()
	end
end*/

function ENT:PlayAnimation( animation )
	local anims = string.Implode( ",", self:GetSequenceList() )
	
	if not animation or not string.match( string.lower(anims), string.lower( animation ), 1 ) then return end
	
	local sequence = self:LookupSequence( animation )
	
	self:ResetSequence( sequence )
	self:SetPlaybackRate( 1 ) 
	self:SetSequence( sequence )
end

function ENT:PhysicalSteer()
	
	if IsValid(self.SteerMaster) then
		local physobj = self.SteerMaster:GetPhysicsObject()
		if not IsValid(physobj) then return end
		
		if physobj:IsMotionEnabled() then
			physobj:EnableMotion(false)
		end
		
		self.SteerMaster:SetAngles( self:LocalToWorldAngles( Angle(0,math.Clamp(-self.VehicleData[ "Steer" ],-self.CustomSteerAngle,self.CustomSteerAngle),0) ) )
	end
	
	if IsValid(self.SteerMaster2) then
		local physobj = self.SteerMaster2:GetPhysicsObject()
		if not IsValid(physobj) then return end
		
		if physobj:IsMotionEnabled() then
			physobj:EnableMotion(false)
		end
		
		self.SteerMaster2:SetAngles( self:LocalToWorldAngles( Angle(0,math.Clamp(self.VehicleData[ "Steer" ],-self.CustomSteerAngle,self.CustomSteerAngle),0) ) )
	end
end

function ENT:IsInitialized()
	return (self.EnableSuspension == 1)
end

function ENT:EngineActive()
	return (self.EngineIsOn == 1)
end

function ENT:IsDriveWheelsOnGround()
	return (self.DriveWheelsOnGround == 1)
end

function ENT:GetRPM()
	local RPM = self.EngineRPM and self.EngineRPM or 0
	return RPM
end

function ENT:GetEngineRPM()
	local flywheelrpm = self:GetRPM()
	local rpm
	if self:GetRevlimiter() then
		local throttle = self:GetThrottle()
		local maxrpm = self:GetLimitRPM()
		local revlimiter = (maxrpm > 2500) and (throttle > 0)
		rpm = math.Round(((flywheelrpm >= maxrpm - 200) and revlimiter) and math.Round(flywheelrpm - 200 + math.sin(CurTime()* 50) * 600,0) or flywheelrpm,0)
	else
		rpm = flywheelrpm
	end
	
	return rpm
end

function ENT:GetDiffGear()
	return math.max(self:GetDifferentialGear(),0.01)
end

function ENT:DamagedStall()
	if not self:GetActive() then return end
	
	local rtimer = 0.8
	
	timer.Simple( rtimer, function()
		if not IsValid( self ) then return end
		net.Start( "simfphys_backfire" )
			net.WriteEntity( self )
		net.Broadcast()
	end)
	
	self:StallAndRestart( rtimer, true )
end

function ENT:StopEngine()
	if self:EngineActive() then
		self:EmitSound( "vehicles/jetski/jetski_off.wav" )

		self.EngineRPM = 0
		self.EngineIsOn = 0
		
		self:SetFlyWheelRPM( 0 )
	end
end

function ENT:CanStart()
	return self:GetCurHealth() > (self:GetMaxHealth() * 0.1)
end

function ENT:StartEngine( bIgnoreSettings )
	if not self:CanStart() then return end
	
	if not self:EngineActive() then
		if not bIgnoreSettings then
			self.CurrentGear = 2
		end
			
		if not self.IsInWater then
			self.EngineRPM = self:GetEngineData().IdleRPM
			self.EngineIsOn = 1
		else
			if self:GetDoNotStall() then
				self.EngineRPM = self:GetEngineData().IdleRPM
				self.EngineIsOn = 1
			end
		end
	end
end

function ENT:StallAndRestart( nTimer, bIgnoreSettings )
	nTimer = nTimer or 1
	
	self:StopEngine()

	timer.Simple( nTimer, function()
		if not IsValid(self) then return end
		self:StartEngine( bIgnoreSettings )
	end)
end

function ENT:PlayerSteerVehicle( ply, left, right )
	if IsValid( ply ) then
		local Ang = self.MoveDir
		
		local TurnSpeed = self:GetSteerSpeed()
		local fadespeed = self:GetFastSteerConeFadeSpeed()
		local fastspeedangle = self:GetFastSteerAngle() * self.VehicleData["steerangle"]

		local SlowSteeringRate = (Ang > 20) and ((math.Clamp((self.ForwardSpeed - 150) / 25,0,1) == 1) and 60 or self.VehicleData["steerangle"]) or self.VehicleData["steerangle"]
		if(self:GetVelocity():Length() < 500) then
			SlowSteeringRate = SlowSteeringRate*(math.Clamp(2.5-(1.5*(self:GetVelocity():Length()/500)),1,100))
		end

		local FastSteeringAngle = math.Clamp(fastspeedangle,1,SlowSteeringRate)
		
		local FastSteeringRate = FastSteeringAngle + ((Ang > (FastSteeringAngle-1)) and 1 or 0) * math.min(Ang,90 - FastSteeringAngle)
		
		local Ratio = 1 - math.Clamp((math.abs(self.ForwardSpeed) - fadespeed) / 25,0,1)
		
		local SteerRate = FastSteeringRate + (SlowSteeringRate - FastSteeringRate) * Ratio
		local Steer = (right - left) * SteerRate

		local Rate = TurnSpeed
		
		self.SmoothAng = self.SmoothAng + math.Clamp((Steer*(MirroredView and -1 or 1)) - self.SmoothAng,-Rate,Rate)
		
		self:SteerVehicle( self.SmoothAng )
	end
end

function ENT:SteerVehicle( steer )
	self.VehicleData[ "Steer" ] = steer
	self:SetVehicleSteer( steer / self.VehicleData["steerangle"] )
end

function ENT:ForceLightsOff()
	local vehiclelist = list.Get( "simfphys_lights" )[self.LightsTable] or false
	if not vehiclelist then return end
	
	if vehiclelist.Animation then
		if self.LightsActivated then
			self.LightsActivated = false
			self.LampsActivated = false
			
			self:SetLightsEnabled(false)
			self:SetLampsEnabled(false)
		end
	end
end

function ENT:Use( ply )
	//self:SetPassenger( ply )
end

function ENT:SetPassenger( ply )
	if not IsValid( ply ) then return end

	if not IsValid(self:GetDriver()) then
		ply:SetAllowWeaponsInVehicle( false ) 
		if IsValid(self.DriverSeat) then
			
			ply:EnterVehicle( self.DriverSeat )
			
			timer.Simple( 0.01, function()
				if IsValid(ply) then
					local angles = Angle(0,90,0)
					ply:SetEyeAngles( angles )
				end
			end)
		end
	else
		if self.PassengerSeats then
			local closestSeat = self:GetClosestSeat( ply )
			
			if not closestSeat or IsValid( closestSeat:GetDriver() ) then
				
				for i = 1, table.Count( self.pSeat ) do
					if IsValid(self.pSeat[i]) then
						
						local HasPassenger = IsValid(self.pSeat[i]:GetDriver())
						
						if not HasPassenger then
							ply:EnterVehicle( self.pSeat[i] )
							break
						end
					end
				end
			else
				ply:EnterVehicle( closestSeat )
			end
		end
	end
end

function ENT:GetClosestSeat( ply )
	local Seat = self.pSeat[1]
	if not IsValid(Seat) then return false end
	
	local Distance = (Seat:GetPos() - ply:GetPos()):Length()
	
	for i = 1, table.Count( self.pSeat ) do
		local Dist = (self.pSeat[i]:GetPos() - ply:GetPos()):Length()
		if (Dist < Distance) then
			Seat = self.pSeat[i]
		end
	end
	
	return Seat
end

function ENT:SetPhysics( enable )
	if enable then
		if not self.PhysicsEnabled then
			for i = 1, table.Count( self.Wheels ) do
				local Wheel = self.Wheels[i]
				if IsValid(Wheel) then
					Wheel:GetPhysicsObject():SetMaterial("jeeptire")
				end
			end
			self.PhysicsEnabled = true
		end
	else
		if self.PhysicsEnabled ~= false then
			for i = 1, table.Count( self.Wheels ) do
				local Wheel = self.Wheels[i]
				if IsValid(Wheel) then
					Wheel:GetPhysicsObject():SetMaterial("friction_00")
				end
			end
			self.PhysicsEnabled = false
		end
	end
end

function ENT:SetSuspension( index , bIsDamaged )
	local bIsDamaged = bIsDamaged or false
	
	local h_mod = index <= 2 and self:GetFrontSuspensionHeight() or self:GetRearSuspensionHeight()
	
	local heights = {
		[1] = self.FrontHeight + self.VehicleData.suspensiontravel_fl * -h_mod,
		[2] = self.FrontHeight + self.VehicleData.suspensiontravel_fr * -h_mod,
		[3] = self.RearHeight + self.VehicleData.suspensiontravel_rl * -h_mod,
		[4] = self.RearHeight + self.VehicleData.suspensiontravel_rr * -h_mod,
		[5] = self.RearHeight + self.VehicleData.suspensiontravel_rl * -h_mod,
		[6] = self.RearHeight + self.VehicleData.suspensiontravel_rr * -h_mod
	}
	local Wheel = self.Wheels[index]
	if not IsValid(Wheel) then return end
	
	local subRadius = bIsDamaged and Wheel.dRadius or 0
	
	local newheight = heights[index] + subRadius

	local Elastic = self.Elastics[index]
	if IsValid(Elastic) then
		Elastic:Fire( "SetSpringLength", newheight )
	end
	
	if self.StrengthenSuspension == true then
		local Elastic2 = self.Elastics[index * 10]
		if IsValid(Elastic2) then
			Elastic2:Fire( "SetSpringLength", newheight )
		end
	end
end

function ENT:OnFrontSuspensionHeightChanged( name, old, new )
	if old == new then return end
	if not self.CustomWheels and new > 0 then new = 0 end
	if not self:IsInitialized() then return end
	
	if IsValid(self.Wheels[1]) then
		local Elastic = self.Elastics[1]
		if IsValid(Elastic) then
			Elastic:Fire( "SetSpringLength", self.FrontHeight + self.VehicleData.suspensiontravel_fl * -new )
		end
		
		if self.StrengthenSuspension == true then
			
			local Elastic2 = self.Elastics[10]
			
			if IsValid(Elastic2) then
				Elastic2:Fire( "SetSpringLength", self.FrontHeight + self.VehicleData.suspensiontravel_fl * -new )
			end
		end
	end
	
	if IsValid(self.Wheels[2]) then
		local Elastic = self.Elastics[2]
		if IsValid(Elastic) then
			Elastic:Fire( "SetSpringLength", self.FrontHeight + self.VehicleData.suspensiontravel_fr * -new )
		end
		
		if self.StrengthenSuspension == true then
			
			local Elastic2 = self.Elastics[20]
			
			if (IsValid(Elastic2)) then
				Elastic2:Fire( "SetSpringLength", self.FrontHeight + self.VehicleData.suspensiontravel_fr * -new )
			end
		end
	end
end

function ENT:OnRearSuspensionHeightChanged( name, old, new )
	if old == new then return end
	if not self.CustomWheels and new > 0 then new = 0 end
	if not self:IsInitialized() then return end
	
	if IsValid(self.Wheels[3]) then
		local Elastic = self.Elastics[3]
		if IsValid(Elastic) then
			Elastic:Fire( "SetSpringLength", self.RearHeight + self.VehicleData.suspensiontravel_rl * -new )
		end
		
		if self.StrengthenSuspension == true then
			
			local Elastic2 = self.Elastics[30]
			
			if IsValid(Elastic2) then
				Elastic2:Fire( "SetSpringLength", self.RearHeight + self.VehicleData.suspensiontravel_rl * -new )
			end
		end
	end
	
	if IsValid(self.Wheels[4]) then
		local Elastic = self.Elastics[4]
		if IsValid(Elastic) then
			Elastic:Fire( "SetSpringLength", self.RearHeight + self.VehicleData.suspensiontravel_rr * -new )
		end
		
		if self.StrengthenSuspension == true then
			
			local Elastic2 = self.Elastics[40]
			
			if IsValid(Elastic2) then
				Elastic2:Fire( "SetSpringLength", self.RearHeight + self.VehicleData.suspensiontravel_rr * -new )
			end
		end
	end
	
	if IsValid(self.Wheels[5]) then
		local Elastic = self.Elastics[5]
		if IsValid(Elastic) then
			Elastic:Fire( "SetSpringLength", self.RearHeight + self.VehicleData.suspensiontravel_rl * -new )
		end
		
		if self.StrengthenSuspension == true then
			
			local Elastic2 = self.Elastics[50]
			
			if IsValid(Elastic2) then
				Elastic2:Fire( "SetSpringLength", self.RearHeight + self.VehicleData.suspensiontravel_rl * -new )
			end
		end
	end
	
	if IsValid(self.Wheels[6]) then
		local Elastic = self.Elastics[6]
		if IsValid(Elastic) then
			Elastic:Fire( "SetSpringLength", self.RearHeight + self.VehicleData.suspensiontravel_rr * -new )
		end
		
		if self.StrengthenSuspension == true then
			
			local Elastic2 = self.Elastics[60]
			
			if IsValid(Elastic2) then
				Elastic2:Fire( "SetSpringLength", self.RearHeight + self.VehicleData.suspensiontravel_rr * -new )
			end
		end
	end
end

function ENT:OnTurboCharged( name, old, new )
	if old == new then return end
	local Active = self:GetActive()
	
	if new == true and Active then
		self.Turbo:Stop()
		self.Turbo = CreateSound(self, self.snd_spool or "simulated_vehicles/turbo_spin.wav")
		self.Turbo:PlayEx(0,0)
		
	elseif new == false then
		if self.Turbo then
			self.Turbo:Stop()
		end
	end
end

function ENT:OnSuperCharged( name, old, new )
	if old == new then return end
	local Active = self:GetActive()
	
	if new == true and Active then
		self.Blower:Stop()
		self.BlowerWhine:Stop()
		
		self.Blower = CreateSound(self, self.snd_bloweroff or "simulated_vehicles/blower_spin.wav")
		self.BlowerWhine = CreateSound(self, self.snd_bloweron or "pga/blower_whine.wav")
	
		self.Blower:PlayEx(0,0)
		self.BlowerWhine:PlayEx(0,0)
	elseif new == false then
		if self.Blower then
			self.Blower:Stop()
		end
		if self.BlowerWhine then
			self.BlowerWhine:Stop()
		end
	end
end

function ENT:OnRemove()
	if self.Wheels then
		for i = 1, table.Count( self.Wheels ) do
			local Ent = self.Wheels[ i ]
			if IsValid(Ent) then
				Ent:Remove()
			end
		end
	end
	if self.Turbo then
		self.Turbo:Stop()
	end
	if self.gearwhine then
		self.gearwhine:Stop()
	end
	if self.Blower then
		self.Blower:Stop()
	end
	if self.BlowerWhine then
		self.BlowerWhine:Stop()
	end
	if self.horn then
		self.horn:Stop()
	end
	if self.ems then
		self.ems:Stop()
	end
	
	self:OnDelete()
end

function ENT:PlayPP( On )
	self.poseon = On and self.LightsPP.max or self.LightsPP.min
end

function ENT:DamageLoop()
	if not self:OnFire() then return end
	
	local CurHealth = self:GetCurHealth()
	
	if CurHealth <= 0 then return end
	
	if self:GetMaxHealth() > 30 then
		if CurHealth > 30 then
			local dmg = 1
			if(IsValid(self:GetDriver()) && self:GetDriver():IsPlayer()) then
				dmg = 1*(1-(self:GetDriver().V_Fire/100))
			end
			if(dmg > 0) then
				self:TakeDamage(dmg, Entity(0), Entity(0) )
			end
		elseif CurHealth < 30 then
			self:SetCurHealth( CurHealth + 1 )
		end
	end
	
	timer.Simple( 0.125, function()
		if IsValid( self ) then
			self:DamageLoop()
		end
	end)
end

function ENT:SetOnFire( bOn )
	if bOn == self:OnFire() then return end
	self:SetNWBool( "OnFire", bOn )
	
	if bOn then
		//self:DamagedStall()
		self:DamageLoop()
	end
end

function ENT:SetOnSmoke( bOn )
	if bOn == self:OnSmoke() then return end
	self:SetNWBool( "OnSmoke", bOn )
	
	if bOn then
		//self:DamagedStall()
	end
end

function ENT:SetMaxHealth( nHealth )
	self:SetNWFloat( "MaxHealth", nHealth )
end

function ENT:SetCurHealth( nHealth )
	self:SetNWFloat( "Health", nHealth )
end

