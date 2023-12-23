include("shared.lua")

function ENT:Initialize()	
	self.SmoothRPM = 0
	self.OldDist = 0
	self.PitchOffset = 0
	self.OldActive = false
	self.OldGear = 0
	self.OldThrottle = 0
	self.FadeThrottle = 0
	self.SoundMode = 0
	
	self.DamageSnd = CreateSound(self, "pga/damagedengine.wav")
	self.DamageSnd:SetSoundLevel(75)
	self.Scrape = CreateSound(self, "pga/carscrape.wav")
	self.Scrape:ChangeVolume(0)
	self.Scrape:ChangePitch(75)
	self.Scrape:SetSoundLevel(75)
	//self.Scrape:Play()

	self.EngineSounds = {}
end

function ENT:Think()
	local curtime = CurTime()
	if(self:GetHasNitrousRainbowColor()) then
		self.RainbowNitrousColor = self.RainbowNitrousColor or 0
		if self.RainbowNitrousColor >= 360 then
			self.RainbowNitrousColor = 0
		end
		self.RainbowNitrousColor = self.RainbowNitrousColor + FrameTime()*360
		local hsv = HSVToColor(self.RainbowNitrousColor % 360, 1, 1)
		self.NitrousColor = Vector(hsv.r/255,hsv.g/255,hsv.b/255)
	end
	if(self:GetHasRainbowNeon()) then
		self.RainbowNeonColor = self.RainbowNeonColor or 0
		if self.RainbowNeonColor >= 360 then
			self.RainbowNeonColor = 0
		end
		self.RainbowNeonColor = self.RainbowNeonColor + FrameTime()*60
		local hsv = HSVToColor(self.RainbowNeonColor % 360, 1, 1)
		self.NeonCurrentColor = Vector(hsv.r/255,hsv.g/255,hsv.b/255)
		local dlight = DynamicLight( self:EntIndex() )

		if ( dlight ) then

			local c = self.NeonCurrentColor or Vector(1,1,1)

			dlight.Pos = self:GetPos()+self:GetUp()*-1
			dlight.r = c.x*255
			dlight.g = c.y*255
			dlight.b = c.z*255
			dlight.Brightness = 5
			dlight.Decay = 128 * 5
			dlight.Size = 128
			dlight.DieTime = CurTime() + 1

		end
	elseif(self:GetHasNeon()) then
		local dlight = DynamicLight( self:EntIndex() )

		if ( dlight ) then

			local c = self:GetNeonColor() or Vector(1,1,1)

			dlight.Pos = self:GetPos()+self:GetUp()*-1
			dlight.r = c.x*255
			dlight.g = c.y*255
			dlight.b = c.z*255
			dlight.Brightness = 5
			dlight.Decay = 128 * 5
			dlight.Size = 128
			dlight.DieTime = CurTime() + 1

		end
	end
	
	local Active = self:GetActive()
	local Throttle = self:GetThrottle()
	local LimitRPM = self:GetLimitRPM()
	
	self:ManageSounds( Active, Throttle, LimitRPM )
	
	self.RunNext = self.RunNext or 0
	if self.RunNext < curtime then
		
		self:ManageEffects( Active, Throttle, LimitRPM )
		self:CalcFlasher()
		
		self.RunNext = curtime + 0.03
	end
	
	self:SetPoseParameters( curtime )
	
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
	if(self.Scrape) then
		if((self.traceleft.Hit or self.traceright.Hit or self.traceup.Hit) && self:GetVelocity():Length() > 100) then
			if(!self.Scrape:IsPlaying()) then
				self.Scrape:Play()
			end
			self.Scrape:ChangePitch(math.Clamp(self:GetVelocity():Length()/7,75,125))
			self.Scrape:ChangeVolume(math.Clamp((self:GetVelocity():Length()-100)/500,0,1))
		else
			self.Scrape:ChangePitch(50)
			self.Scrape:ChangeVolume(0)
		end
	end
	if((GetConVar("pga_disable_speed_lines"):GetInt() or 0) != 1 && self:GetVelocity():Length() > 1000) then
		local effectdata = EffectData()
		effectdata:SetOrigin( self:GetPos()+vector_up*self:OBBMins().z )
		effectdata:SetScale( self:GetVelocity():Length()-1000 )
		effectdata:SetAngles( self:GetVelocity():Angle() )
		util.Effect( "speedlines", effectdata, true, true )
	end
	
	self:NextThink( curtime )
	
	return true
end

function ENT:CalcFlasher()
	self.Flasher = self.Flasher or 0
	
	local flashspeed = self.turnsignals_damaged and 0.06 or 0.0375
	
	self.Flasher = self.Flasher and self.Flasher + flashspeed or 0
	if self.Flasher >= 1 then
		self.Flasher = self.Flasher - 1
	end
	
	self.flashnum = math.min( math.abs( math.cos( math.rad( self.Flasher * 360 ) ) ^ 2 * 1.5 ) , 1)
	
	if not self.signal_left and not self.signal_right then return end
	
	if LocalPlayer() == self:GetDriver() then
		local fl_snd = self.flashnum > 0.9
		
		if fl_snd ~= self.fl_snd then
			self.fl_snd = fl_snd
			if fl_snd then
				self:EmitSound( "simulated_vehicles/sfx/flasher_on.wav" )
			else
				self:EmitSound( "simulated_vehicles/sfx/flasher_off.wav" )
			end
		end
	end
end

function ENT:GetFlasher()
	self.flashnum = self.flashnum or 0
	return self.flashnum
end

function ENT:SetPoseParameters( curtime )
	self.sm_vSteer = self.sm_vSteer and self.sm_vSteer + (self:GetVehicleSteer() - self.sm_vSteer) * 0.3 or 0
	self:SetPoseParameter("vehicle_steer", self.sm_vSteer  )

	self:InvalidateBoneCache()
end

function ENT:GetEnginePos()
	local Attachment = self:GetAttachment( self:LookupAttachment( "vehicle_engine" ) )
	local pos = self:GetPos()
	
	if Attachment then
		pos = Attachment.Pos
	end
	
	if not self.EnginePos then
		local vehiclelist = list.Get( "simfphys_vehicles" )[ self:GetSpawn_List() ]
		
		if vehiclelist then
			self.EnginePos = vehiclelist.Members.EnginePos or false
		else
			self.EnginePos = false
		end
		
	elseif isvector( self.EnginePos ) then
		pos = self:LocalToWorld( self.EnginePos )
	end
	
	return pos
end

function ENT:GetRPM()
	local RPM = self.SmoothRPM and self.SmoothRPM or 0
	return RPM
end

function ENT:DamageEffects()
	local Pos = self:GetPos()
	local Scale = self:GetCurHealth() / self:GetMaxHealth()
	local smoke = self:OnSmoke() and Scale <= 0.5
	local fire = self:OnFire()
	
	if self.wasSmoke ~= smoke then
		self.wasSmoke = smoke
		if smoke then
			self.smokesnd = CreateSound(self, "npc/env_headcrabcanister/hiss.wav")
			self.smokesnd:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 70)
			self.smokesnd:PlayEx(0.2,90)
		else
			if self.smokesnd then
				self.smokesnd:Stop()
			end
		end
	end
	
	if self.wasFire ~= fire then
		self.wasFire = fire
		if fire then
			self:EmitSound( "ambient/fire/mtov_flame2.wav" )
			
			self.firesnd = CreateSound(self, "ambient/fire/fire_small1.wav")
			self.firesnd:Play()
		else
			if self.firesnd then
				self.firesnd:Stop()
			end
		end
	end
	
	if smoke then
		if Scale <= 0.5 then
			local effectdata = EffectData()
				effectdata:SetOrigin( Pos )
				effectdata:SetEntity( self )
			util.Effect( "simfphys_engine_smoke", effectdata )
		end
	end
	
	if fire then
		local effectdata = EffectData()
			effectdata:SetOrigin( Pos )
			effectdata:SetEntity( self )
		util.Effect( "simfphys_engine_fire", effectdata )
	end
end

function ENT:ManageEffects( Active, fThrottle, LimitRPM )
	self:DamageEffects()
	
	Active = Active and (self:GetFlyWheelRPM() ~= 0)
	if not Active then return end
	if not self.ExhaustPositions then return end
	
	local Scale = fThrottle * (0.2 + math.min(self:GetRPM() / LimitRPM,1) * 0.8) ^ 2
	
	for i = 1, table.Count( self.ExhaustPositions ) do
		if self.ExhaustPositions[i].OnBodyGroups then
			if self:BodyGroupIsValid( self.ExhaustPositions[i].OnBodyGroups ) then
				local effectdata = EffectData()
					effectdata:SetOrigin( self.ExhaustPositions[i].pos )
					effectdata:SetAngles( self.ExhaustPositions[i].ang )
					effectdata:SetMagnitude( Scale ) 
					if(self:GetHasNitrousRainbowColor()) then
						effectdata:SetNormal(self.NitrousColor)
					elseif(self:GetHasNitrousColor()) then
						effectdata:SetNormal(self:GetNitrousColor())
					end
					effectdata:SetEntity( self )
				if(self:GetNWBool("usingnitro") == true) then
					util.Effect( (self:GetHasNitrousColor() or self:GetHasNitrousRainbowColor()) && "simfphys_exhaust_nitrocolor" or "simfphys_exhaust_nitro", effectdata )
				else
					if(GetConVar("pga_disable_exhaust_smoke"):GetInt() == 0) then
						util.Effect( "simfphys_exhaust", effectdata )
					end
				end
			end
		else
			local effectdata = EffectData()
				effectdata:SetOrigin( self.ExhaustPositions[i].pos )
				effectdata:SetAngles( self.ExhaustPositions[i].ang )
				effectdata:SetMagnitude( Scale ) 
				if(self:GetHasNitrousRainbowColor()) then
					effectdata:SetNormal(self.NitrousColor)
				elseif(self:GetHasNitrousColor()) then
					effectdata:SetNormal(self:GetNitrousColor())
				end
				effectdata:SetEntity( self )
			if(self:GetNWBool("usingnitro") == true) then
				util.Effect( (self:GetHasNitrousColor() or self:GetHasNitrousRainbowColor()) && "simfphys_exhaust_nitrocolor" or "simfphys_exhaust_nitro", effectdata )
			else
				if(GetConVar("pga_disable_exhaust_smoke"):GetInt() == 0) then
					util.Effect( "simfphys_exhaust", effectdata )
				end
			end
		end
	end
end

function ENT:ManageSounds( Active, fThrottle, LimitRPM )
	local FlyWheelRPM = self:GetFlyWheelRPM()
	local Active = Active and (FlyWheelRPM ~= 0)
	local IdleRPM = self:GetIdleRPM()

	local CurDist = (LocalPlayer():GetPos() - self:GetPos()):Length()
	local Throttle = fThrottle
	local Gear = self:GetGear()
	local Clutch = self:GetClutch()
	local FadeRPM = LimitRPM * 0.5
	
	self.FadeThrottle = self.FadeThrottle + math.Clamp(Throttle - self.FadeThrottle,-0.2,0.2)
	self.PitchOffset = self.PitchOffset + ((CurDist - self.OldDist) * 0.23 - self.PitchOffset) * 0.5
	self.OldDist = CurDist
	self.SmoothRPM = self.SmoothRPM + math.Clamp(FlyWheelRPM - self.SmoothRPM,-(350 / 6000) * LimitRPM,(600 / 6000) * LimitRPM)
	
	self.OldThrottle2 = self.OldThrottle2 or 0
	if Throttle ~= self.OldThrottle2 then
		self.OldThrottle2 = Throttle
		if Throttle == 0 then
			if self.SmoothRPM > LimitRPM * 0.6 then
				self:Backfire()
			end
		end
	end
	
	//if self:GetRevlimiter() and LimitRPM > 2500 then
	if LimitRPM > 2500 && CurTime() > (self.LastLimitHit or 0) then
		if (self.SmoothRPM >= LimitRPM - 50) and self.FadeThrottle > 0 then
			//self.SmoothRPM = self.SmoothRPM - (1200 / 6000) * LimitRPM
			//self.FadeThrottle = 0.2
			self:Backfire()
			self.LastLimitHit = CurTime() + 0.1
		end
	end
	
	if Active ~= self.OldActive then
		local preset = self:GetEngineSoundPreset()
		local UseGearResetter = self:SetSoundPreset( preset )
		
		self.SoundMode = UseGearResetter and 2 or 1
		
		self.OldActive = Active
		
		if Active then
			local MaxHealth = self:GetMaxHealth()
			local Health = self:GetCurHealth()
			
			if Health <= (MaxHealth * 0.4) then
				self.DamageSnd:PlayEx(0,0)
				self.DamageSnd:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 75)
			else
				if self.DamageSnd then
					self.DamageSnd:Stop()
				end
			end
			
			if self.SoundMode == 2 then
				self.HighRPM = CreateSound(self, self.EngineSounds[ "HighRPM" ] )
				self.LowRPM = CreateSound(self, self.EngineSounds[ "LowRPM" ])
				self.Idle = CreateSound(self, self.EngineSounds[ "Idle" ])
				self.LimitSound = CreateSound(self, self.EngineSounds[ "LimitSound" ])
				
				self.HighRPM:PlayEx(0,0)
				self.HighRPM:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 85)
				self.LowRPM:PlayEx(0,0)
				self.LowRPM:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 85)
				self.Idle:PlayEx(0,0)
				self.Idle:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 75)
				self.LimitSound:PlayEx(0,0)
				self.LimitSound:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 85)
			else
				local IdleSound = self.EngineSounds[ "IdleSound" ]
				local LowSound = self.EngineSounds[ "LowSound" ]
				local HighSound = self.EngineSounds[ "HighSound" ]
				local ThrottleSound = self.EngineSounds[ "ThrottleSound" ]
				
				if IdleSound then
					self.Idle = CreateSound(self, IdleSound)
					self.Idle:PlayEx(0,0)
					self.Idle:SetSoundLevel(75)
				end
				
				if LowSound then
					self.LowRPM = CreateSound(self, LowSound)
					self.LowRPM:PlayEx(0,0)
					self.LowRPM:SetSoundLevel(95)
				end
				
				if HighSound then
					self.HighRPM = CreateSound(self, HighSound)
					self.HighRPM:PlayEx(0,0)
					self.HighRPM:SetSoundLevel(100)
				end
				
				if ThrottleSound then
					self.Valves = CreateSound(self, ThrottleSound)
					self.Valves:PlayEx(0,0)
					self.Valves:SetSoundLevel(85)
				end
			end
		else
			self:SaveStopSounds()
		end
	end
	
	if Active then		
		//local Volume = 0.25 + 0.25 * ((self.SmoothRPM / LimitRPM) ^ 1.5) + self.FadeThrottle * 0.5
		local Volume = 0.5*((self.SmoothRPM / LimitRPM) ^ 1.2) + self.FadeThrottle * 0.5
		local Pitch = math.Clamp( (20 + self.SmoothRPM / 50 - self.PitchOffset) * self.PitchMulAll,0,255)
		local MaxHealth = self:GetMaxHealth()
		local Health = self:GetCurHealth()

		if Health <= (MaxHealth * 0.4) then
			self.DamageSnd:PlayEx(0,0)
			self.DamageSnd:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 75)
		else
			if self.DamageSnd then
				self.DamageSnd:Stop()
			end
		end

		if self.DamageSnd then
			self.DamageSnd:ChangeVolume( math.Clamp((self.SmoothRPM / LimitRPM),0.25,1) )
			self.DamageSnd:ChangePitch( 100 )
		end
		
		if self.SoundMode == 2 then
			if self.FadeThrottle ~= self.OldThrottle then
				self.OldThrottle = self.FadeThrottle
				if self.FadeThrottle == 0 and Clutch == 0 then
					if self.SmoothRPM >= FadeRPM then
						if self.LowRPM then
							self.LowRPM:Stop()
						end
						self.LowRPM = CreateSound(self, self.EngineSounds[ "RevDown" ] )
						self.LowRPM:PlayEx(0,0)
						self.LowRPM:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 85)
					end
				end
			end
			
			if Gear ~= self.OldGear then
				//if self.SmoothRPM >= FadeRPM and Gear > 3 then
				if Gear > 3 then
					if Clutch ~= 1 then
						if self.OldGear < Gear then
							if self.HighRPM then
								self.HighRPM:Stop()
							end
							
							self.HighRPM = CreateSound(self, self.EngineSounds[ "ShiftUpToHigh" ] )
							self.HighRPM:PlayEx(0,0)
							self.HighRPM:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 85)
							
							//if self.SmoothRPM > LimitRPM * 0.6 then
								//if math.random(0,4) >= 3 then
									timer.Simple(0.125, function()
										if not IsValid( self ) then return end
										self:Backfire()
									end)
								//end
							//end
						else
							if self.FadeThrottle > 0 then
								if self.HighRPM then
									self.HighRPM:Stop()
								end
								
								self.HighRPM = CreateSound(self, self.EngineSounds[ "ShiftDownToHigh" ] )
								self.HighRPM:PlayEx(0,0)
								self.HighRPM:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 85)
							end
						end
					end
				else 
					if Clutch ~= 1 then
						if self.OldGear > Gear and self.FadeThrottle > 0 and Gear >= 3 then
							if self.HighRPM then
								self.HighRPM:Stop()
							end
							
							self.HighRPM = CreateSound(self, self.EngineSounds[ "ShiftDownToHigh" ] )
							self.HighRPM:PlayEx(0,0)
							self.HighRPM:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 85)
						else 
							if self.HighRPM then
								self.HighRPM:Stop()
							end
							
							if self.LowRPM then
								self.LowRPM:Stop()
							end
							
							self.HighRPM = CreateSound(self, self.EngineSounds[ "HighRPM" ] )
							self.LowRPM = CreateSound(self, self.EngineSounds[ "LowRPM" ])
							self.HighRPM:PlayEx(0,0)
							self.HighRPM:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 85)
							self.LowRPM:PlayEx(0,0)
							self.LowRPM:SetSoundLevel(LocalPlayer() == self:GetDriver() && 0 or 85)
						end
					end
				end
				self.OldGear = Gear
			end
			
			self.Idle:ChangeVolume( math.Clamp( math.min((self.SmoothRPM / IdleRPM) * 1,1.5 + self.FadeThrottle  * 0.5) * 0.7 - self.SmoothRPM / 2000 ,0,1)*0.6 )
			self.Idle:ChangePitch( math.Clamp( Pitch * 3,0,255) ) 
			
			self.LowRPM:ChangeVolume( math.Clamp(Volume - (self.SmoothRPM - 2000) / 2000 * self.FadeThrottle,0,1) )
			self.LowRPM:ChangePitch( math.Clamp( Pitch * self.PitchMulLow,0,255) )
			
			local hivol = math.max((self.SmoothRPM - 2000) / 2000,0) * Volume
			self.HighRPM:ChangeVolume( self.FadeThrottle < 0.4 and hivol * self.FadeThrottle or hivol * self.FadeThrottle * 2.5 )
			self.HighRPM:ChangePitch( math.Clamp( Pitch * self.PitchMulHigh,0,255) )
			
			if(self.SmoothRPM >= (LimitRPM-50) && self.FadeThrottle > 0 && self.LimitSound) then
			self.HighRPM:ChangeVolume(0)
			self.LimitSound:ChangeVolume(0.75)
			self.LimitSound:ChangePitch(100*self.LimitPitch)
			else
			local hivol = math.max((self.SmoothRPM - 2000) / 2000,0) * Volume
			self.HighRPM:ChangeVolume( self.FadeThrottle < 0.4 and hivol * self.FadeThrottle or hivol * self.FadeThrottle * 2.5 )
			self.HighRPM:ChangePitch( math.Clamp( Pitch * self.PitchMulHigh,0,255) )
			if(self.LimitSound) then
			self.LimitSound:ChangeVolume(0)
			end
			end
		else
			if Gear ~= self.OldGear then
				if self.SmoothRPM >= FadeRPM and Gear > 3 then
					if Clutch ~= 1 then
						if self.OldGear < Gear then
							if self.SmoothRPM > LimitRPM * 0.6 then
								if math.random(0,4) >= 3 then
									timer.Simple(0.4, function()
										if not IsValid( self ) then return end
										self:Backfire()
									end)
								end
							end
						end
					end
				end
				self.OldGear = Gear
			end
		
		
			local IdlePitch = self.Idle_PitchMul
			self.Idle:ChangeVolume( math.Clamp( math.min((self.SmoothRPM / IdleRPM) * 3,1.5 + self.FadeThrottle * 0.5) * 0.7 - self.SmoothRPM / 2000,0,1))
			self.Idle:ChangePitch( math.Clamp( Pitch * 3 * IdlePitch,0,255) )
			
			local LowPitch = self.Mid_PitchMul
			local LowVolume = self.Mid_VolumeMul
			local LowFadeOutRPM = LimitRPM * (self.Mid_FadeOutRPMpercent / 100)
			local LowFadeOutRate = LimitRPM * self.Mid_FadeOutRate
			self.LowRPM:ChangeVolume( math.Clamp( (Volume - math.Clamp((self.SmoothRPM - LowFadeOutRPM) / LowFadeOutRate,0,1)) * LowVolume,0,1))
			self.LowRPM:ChangePitch( math.Clamp(Pitch * LowPitch,0,255) ) 
			
			local HighPitch = self.High_PitchMul
			local HighVolume = self.High_VolumeMul
			local HighFadeInRPM = LimitRPM * (self.High_FadeInRPMpercent / 100)
			local HighFadeInRate = LimitRPM * self.High_FadeInRate
			self.HighRPM:ChangeVolume( math.Clamp( math.Clamp((self.SmoothRPM - HighFadeInRPM) / HighFadeInRate,0,Volume) * HighVolume,0,1))
			self.HighRPM:ChangePitch( math.Clamp(Pitch * HighPitch,0,255) ) 
			
			local ThrottlePitch = self.Throttle_PitchMul
			local ThrottleVolume = self.Throttle_VolumeMul
			self.Valves:ChangeVolume( math.Clamp((self.SmoothRPM - 2000) / 2000,0,Volume) * (0.2 + 0.15 * self.FadeThrottle) * ThrottleVolume)
			self.Valves:ChangePitch( math.Clamp(Pitch * ThrottlePitch,0,255) ) 
		end
	end
end

function ENT:Backfire( damaged )
	if not self:GetBackFire() and not damaged then return end
	
	if not self.ExhaustPositions then return end
	
	local expos = self.ExhaustPositions
	
	for i = 1, table.Count( expos ) do
		if math.random(1,3) >= 2 or damaged then
			local Pos = expos[i].pos
			local Ang = expos[i].ang - Angle(90,0,0)
			
			if expos[i].OnBodyGroups then
				if self:BodyGroupIsValid( expos[i].OnBodyGroups ) then
					local effectdata = EffectData()
						effectdata:SetOrigin( Pos )
						effectdata:SetAngles( Ang )
						effectdata:SetEntity( self )
						effectdata:SetFlags( damaged and 1 or 0 ) 
					util.Effect( "simfphys_backfire", effectdata )
				end
			else
				local effectdata = EffectData()
					effectdata:SetOrigin( Pos )
					effectdata:SetAngles( Ang )
					effectdata:SetEntity( self )
					effectdata:SetFlags( damaged and 1 or 0 ) 
				util.Effect( "simfphys_backfire", effectdata )
			end
		end
	end
end

function ENT:Draw()
	self:DrawModel()
end

local DemLimitSounds = {
	["lamborghini_tuned"] = "eziam/raceattack/vehicles/porsche_limit.wav",
	["lambo/"] = "eziam/raceattack/vehicles/lamborghini_limit.wav",
	["240sx"] = "eziam/raceattack/vehicles/240sx_limit.wav",
	["bmw"] = "eziam/raceattack/vehicles/bmw_limit.wav",
	["ccx_tuned"] = "eziam/raceattack/vehicles/ccx_tuned_limit.wav",
	["ccx/"] = "eziam/raceattack/vehicles/ccx_limit.wav",
	["clk500"] = "eziam/raceattack/vehicles/clk500_limit.wav",
	["corvette"] = "eziam/raceattack/vehicles/corvette_limit.wav",
	["eclipse"] = "eziam/raceattack/vehicles/eclipse_limit.wav",
	["lotus_tuned"] = "eziam/raceattack/vehicles/lotus_tuned_limit.wav",
	["lotus/"] = "eziam/raceattack/vehicles/lotus_limit.wav",
	["mazda_tuned"] = "eziam/raceattack/vehicles/mazda_tuned_limit.wav",
	["mazda2"] = "eziam/raceattack/vehicles/mazda2_limit.wav",
	["mazda/"] = "eziam/raceattack/vehicles/mazda_limit.wav",
	["mclarenf1"] = "eziam/raceattack/vehicles/mclarenf1_limit.wav",
	["mclaren/"] = "eziam/raceattack/vehicles/mclaren_limit.wav",
	["muscle3"] = "eziam/raceattack/vehicles/muscle3_limit.wav",
	["muscle2"] = "eziam/raceattack/vehicles/muscle2_limit.wav",
	["muscle"] = "eziam/raceattack/vehicles/camaro_limit.wav",
	["nissan_tuned"] = "eziam/raceattack/vehicles/nissan_tuned_limit.wav",
	["nissan/"] = "eziam/raceattack/vehicles/nissan_limit.wav",
	["pagani_tuned"] = "eziam/raceattack/vehicles/pagani_tuned_limit.wav",
	["pagani/"] = "eziam/raceattack/vehicles/pagani_limit.wav",
	["zonda"] = "eziam/raceattack/vehicles/pagani_limit.wav",
	["porsche_tuned"] = "eziam/raceattack/vehicles/porsche_tuned_limit.wav",
	["porsche/"] = "eziam/raceattack/vehicles/porsche_limit.wav",
	["shelby"] = "eziam/raceattack/vehicles/shelby_limit.wav",
	["gt500"] = "eziam/raceattack/vehicles/shelby_limit.wav",
	["skyline_tuned"] = "eziam/raceattack/vehicles/skyline_tuned_limit.wav",
	["skyline/"] = "eziam/raceattack/vehicles/skyline_limit.wav",
	["subaru_tuned"] = "eziam/raceattack/vehicles/subaru_tuned_limit.wav",
	["subaru/"] = "eziam/raceattack/vehicles/subaru_limit.wav",
	["viper_tuned"] = "eziam/raceattack/vehicles/viper_tuned_limit.wav",
	["viper/"] = "eziam/raceattack/vehicles/viper_limit.wav",
	["truck1"] = "eziam/raceattack/vehicles/truck1_limit.wav",
	["truck2"] = "eziam/raceattack/vehicles/truck2_limit.wav",
	["f1_"] = "eziam/raceattack/vehicles/f1_limit.wav",
	["nigra"] = "eziam/raceattack/vehicles/nigra_limit.wav",
	["renault"] = "eziam/raceattack/vehicles/renault_limit.wav",
	["v8"] = "eziam/raceattack/vehicles/v8_limit.wav",
	["carrera"] = "eziam/raceattack/vehicles/carrera_limit.wav",
	["corolla"] = "eziam/raceattack/vehicles/corolla_tuned_limit.wav",
	["muscle2"] = "eziam/raceattack/vehicles/muscle2_limit.wav",
	["evo"] = "eziam/raceattack/vehicles/evo_limit.wav",
	["db9"] = "eziam/raceattack/vehicles/db9_limit.wav",
	["speed3"] = "eziam/raceattack/vehicles/speed3_limit.wav",
	["300c"] = "eziam/raceattack/vehicles/300c_limit.wav",
	["monstertruck"] = "eziam/raceattack/vehicles/monstertruck_limit.wav",
	["golf_tuned"] = "eziam/raceattack/vehicles/golf_tuned_limit.wav",
	["golf_mid"] = "eziam/raceattack/vehicles/golf_limit.wav",
	["mr2_tuned"] = "eziam/raceattack/vehicles/mr2_tuned_limit.wav",
	["mr2_mid"] = "eziam/raceattack/vehicles/mr2_limit.wav",
	["audi"] = "eziam/raceattack/vehicles/audi_limit.wav",
	["gts"] = "eziam/raceattack/vehicles/gts_limit.wav",
	["aventador"] = "eziam/raceattack/vehicles/aventador_limit.wav",
	["mustang"] = "eziam/raceattack/vehicles/mustang_limit.wav",
	["919"] = "eziam/raceattack/vehicles/919_limit.wav",
	["rc"] = "eziam/raceattack/vehicles/rc_limit.wav",
	["jet"] = "eziam/raceattack/vehicles/jet_limit.wav",
	["tt_"] = "eziam/raceattack/vehicles/tt_limit.wav",
	["dbr9"] = "eziam/raceattack/vehicles/dbr9_limit.wav",
	["m4"] = "eziam/raceattack/vehicles/m4_limit.wav",
	["supra"] = "eziam/raceattack/vehicles/supra_limit.wav",
	["gtr"] = "eziam/raceattack/vehicles/gtr_limit.wav",
	["bolide"] = "eziam/raceattack/vehicles/bolide_limit.wav",
}

function ENT:SetSoundPreset(index)
	local vehiclelist = list.Get( "simfphys_vehicles" )[self:GetSpawn_List()] or false
	
	if vehiclelist then
		if not self.ExhaustPositions then
			self.ExhaustPositions = vehiclelist.Members.ExhaustPositions
		end
	end
	
	if index == -1 then
		if vehiclelist then
			local soundoverride = self:GetSoundoverride()
			local data = string.Explode( ",", soundoverride)
			
			if soundoverride ~= "" and data[1] == "1"  then
				
				self.EngineSounds[ "Idle" ] = data[4]
				self.EngineSounds[ "LowRPM" ] = data[6]
				self.EngineSounds[ "HighRPM" ] = data[2]
				self.EngineSounds[ "RevDown" ] = data[8]
				self.EngineSounds[ "ShiftUpToHigh" ] = data[10]
				self.EngineSounds[ "ShiftDownToHigh" ] = data[9]
				
				self.PitchMulLow = data[7]
				self.PitchMulHigh = data[3]
				self.PitchMulAll = data[5]
			else 
				
				local idle = vehiclelist.Members.snd_idle or ""
				local low = vehiclelist.Members.snd_low or ""
				local mid = vehiclelist.Members.snd_mid or ""
				local revdown = vehiclelist.Members.snd_low_revdown or ""
				local gearup = vehiclelist.Members.snd_mid_gearup or ""
				local geardown = vehiclelist.Members.snd_mid_geardown or ""
				local limitpitch = vehiclelist.Members.limitpitch or 1
				local limitsound = "common/null.wav"

				for k, v in pairs( DemLimitSounds ) do if string.find( mid, k) then limitsound = v end end 
				
				self.EngineSounds[ "Idle" ] = idle ~= "" and idle or false
				self.EngineSounds[ "LowRPM" ] = low ~= "" and low or false
				self.EngineSounds[ "HighRPM" ] = mid ~= "" and mid or false
				self.EngineSounds[ "RevDown" ] = revdown ~= "" and revdown or low
				self.EngineSounds[ "ShiftUpToHigh" ] = gearup ~= "" and gearup or mid
				self.EngineSounds[ "ShiftDownToHigh" ] = geardown ~= "" and geardown or gearup
				self.EngineSounds[ "LimitSound" ] = limitsound
				self.LimitPitch = limitpitch
				
				self.PitchMulLow = vehiclelist.Members.snd_low_pitch or 1
				self.PitchMulHigh = vehiclelist.Members.snd_mid_pitch or 1
				self.PitchMulAll = vehiclelist.Members.snd_pitch or 1
			end
		else
			local ded = "common/bugreporter_failed.wav"
			
			self.EngineSounds[ "Idle" ] = ded
			self.EngineSounds[ "LowRPM" ] = ded
			self.EngineSounds[ "HighRPM" ] = ded
			self.EngineSounds[ "RevDown" ] = ded
			self.EngineSounds[ "ShiftUpToHigh" ] = ded
			self.EngineSounds[ "ShiftDownToHigh" ] = ded
			
			self.PitchMulLow = 0
			self.PitchMulHigh = 0
			self.PitchMulAll = 0
		end
		
		if self.EngineSounds[ "Idle" ] ~= false and self.EngineSounds[ "LowRPM" ] ~= false and self.EngineSounds[ "HighRPM" ] ~= false then
			self:PrecacheSounds()
			
			return true
		else
			self:SetSoundPreset( 0 )
			return false
		end
	end

	if index == 0 then
		local soundoverride = self:GetSoundoverride()
		local data = string.Explode( ",", soundoverride)
		
		if soundoverride ~= "" and data[1] ~= "1"  then
			self.EngineSounds[ "IdleSound" ] = data[1]
			self.Idle_PitchMul = data[2]
			
			self.EngineSounds[ "LowSound" ] = data[3]
			self.Mid_PitchMul = data[4]
			self.Mid_VolumeMul =  data[5]
			self.Mid_FadeOutRPMpercent =  data[6]
			self.Mid_FadeOutRate = data[7]
			
			self.EngineSounds[ "HighSound" ] = data[8]
			self.High_PitchMul = data[9]
			self.High_VolumeMul = data[10]
			self.High_FadeInRPMpercent = data[11]
			self.High_FadeInRate = data[12]
			
			self.EngineSounds[ "ThrottleSound" ] = data[13]
			self.Throttle_PitchMul = data[14]
			self.Throttle_VolumeMul = data[15]
		else
			self.EngineSounds[ "IdleSound" ] = vehiclelist and vehiclelist.Members.Sound_Idle or "simulated_vehicles/misc/e49_idle.wav"
			self.Idle_PitchMul = (vehiclelist and vehiclelist.Members.Sound_IdlePitch) or 1
			
			self.EngineSounds[ "LowSound" ] = vehiclelist and vehiclelist.Members.Sound_Mid or "simulated_vehicles/misc/gto_onlow.wav"
			self.Mid_PitchMul = (vehiclelist and vehiclelist.Members.Sound_MidPitch) or 1
			self.Mid_VolumeMul =  (vehiclelist and vehiclelist.Members.Sound_MidVolume) or 0.75
			self.Mid_FadeOutRPMpercent =  (vehiclelist and vehiclelist.Members.Sound_MidFadeOutRPMpercent) or 68
			self.Mid_FadeOutRate =  (vehiclelist and vehiclelist.Members.Sound_MidFadeOutRate) or 0.4
			
			self.EngineSounds[ "HighSound" ] = vehiclelist and vehiclelist.Members.Sound_High or "simulated_vehicles/misc/nv2_onlow_ex.wav"
			self.High_PitchMul = (vehiclelist and vehiclelist.Members.Sound_HighPitch) or 1 
			self.High_VolumeMul = (vehiclelist and vehiclelist.Members.Sound_HighVolume) or 1 
			self.High_FadeInRPMpercent = (vehiclelist and vehiclelist.Members.Sound_HighFadeInRPMpercent) or 26.6
			self.High_FadeInRate = (vehiclelist and vehiclelist.Members.Sound_HighFadeInRate) or 0.266
			
			self.EngineSounds[ "ThrottleSound" ] = vehiclelist and vehiclelist.Members.Sound_Throttle or "simulated_vehicles/valve_noise.wav"
			self.Throttle_PitchMul = (vehiclelist and vehiclelist.Members.Sound_ThrottlePitch) or 0.65
			self.Throttle_VolumeMul = (vehiclelist and vehiclelist.Members.Sound_ThrottleVolume) or 1 
		end
		
		self.PitchMulLow = 1
		self.PitchMulHigh = 1
		self.PitchMulAll = 1
		
		self:PrecacheSounds()
		
		return false
	end
	
	if index > 0 then
		local clampindex = math.Clamp(index,1,table.Count(simfphys.SoundPresets))
		self.EngineSounds[ "Idle" ] = simfphys.SoundPresets[clampindex][1]
		self.EngineSounds[ "LowRPM" ] = simfphys.SoundPresets[clampindex][2]
		self.EngineSounds[ "HighRPM" ] = simfphys.SoundPresets[clampindex][3]
		self.EngineSounds[ "RevDown" ] = simfphys.SoundPresets[clampindex][4]
		self.EngineSounds[ "ShiftUpToHigh" ] = simfphys.SoundPresets[clampindex][5]
		self.EngineSounds[ "ShiftDownToHigh" ] = simfphys.SoundPresets[clampindex][6]
		
		self.PitchMulLow = simfphys.SoundPresets[clampindex][7]
		self.PitchMulHigh = simfphys.SoundPresets[clampindex][8]
		self.PitchMulAll = simfphys.SoundPresets[clampindex][9]
		
		self:PrecacheSounds()
		
		return true
	end
	
	return false
end

function ENT:PrecacheSounds()
	for index, sound in pairs( self.EngineSounds ) do
		if not isbool(sound) then
			if file.Exists( "sound/"..sound, "GAME" ) then
				util.PrecacheSound( sound )
			else
				print("Warning soundfile \""..sound.."\" not found. Using \"common/null.wav\" instead to prevent fps rape")
				self.EngineSounds[index] = "common/null.wav"
			end
		end
	end
end

function ENT:SaveStopSounds()
	if self.HighRPM then
		self.HighRPM:Stop()
	end
	
	if self.LimitSound then
		self.LimitSound:Stop()
	end
	
	if self.LowRPM then
		self.LowRPM:Stop()
	end
	
	if self.Idle then
		self.Idle:Stop()
	end
	
	if self.Valves then
		self.Valves:Stop()
	end
	
	if self.DamageSnd then
		self.DamageSnd:Stop()
	end
	
	if self.Scrape then
		self.Scrape:Stop()
	end
end

function ENT:OnRemove()
	self:SaveStopSounds()
	
	if self.smokesnd then
		self.smokesnd:Stop()
	end
	
	if self.firesnd then
		self.firesnd:Stop()
	end
end
