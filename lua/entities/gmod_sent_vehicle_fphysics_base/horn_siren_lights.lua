function ENT:TriggerHorn( keydown )
	local ent = self

	local v_list = list.Get( "simfphys_lights" )[ent.LightsTable] or false
	
	if keydown then
		ent.HornKeyIsDown = true
		
		if v_list and v_list.ems_sounds then
			if not ent.emson then
				timer.Simple( 0.1, function()
					if not IsValid(ent) or not ent.HornKeyIsDown then return end
					
					if not ent.horn then
						ent.horn = CreateSound(ent, ent.snd_horn or "simulated_vehicles/horn_1.wav")
						ent.horn:SetSoundLevel(80)
						ent.horn:PlayEx(0,100)
					end
				end)
			end
		else
			if not ent.horn then
				ent.horn = CreateSound(ent, ent.snd_horn or "simulated_vehicles/horn_1.wav")
				ent.horn:SetSoundLevel(75)
				ent.horn:PlayEx(0,100)
			end
		end
	else
		ent.HornKeyIsDown = false
	end
	
	if not v_list then return end
	
	if v_list.ems_sounds then
		
		local Time = CurTime()

		if keydown then
			ent.KeyPressedTime = Time
		else
			if (Time - ent.KeyPressedTime) < 0.15 then
				if not ent.emson then
					ent.emson = true
					ent.cursound = 0
				end
			end
			
			if (Time - ent.KeyPressedTime) >= 0.22 then
				if ent.emson then
					ent.emson = false
					if ent.ems then
						ent.ems:Stop()
					end
				end
			else
				if ent.emson then
					if ent.ems then ent.ems:Stop() end
					local sounds = v_list.ems_sounds
					local numsounds = table.Count( sounds )
					
					if numsounds <= 1 and ent.ems then
						ent.emson = false
						ent.ems = nil
						ent:SetEMSEnabled( false )
						return
					end
					
					ent.cursound = ent.cursound + 1
					if ent.cursound > table.Count( sounds ) then
						ent.cursound = 1
					end
					
					ent.ems = CreateSound(ent, sounds[ent.cursound])
					ent.ems:Play()
				end
			end
			ent:SetEMSEnabled( ent.emson )
		end
	end
end

function ENT:TriggerFogLights( keydown )
	local ent = self

	if not ent.LightsTable then return false end
	
	if keydown then
		ent:EmitSound( "buttons/lightswitch2.wav" )
		
		if ent:GetFogLightsEnabled() then
			ent:SetFogLightsEnabled( false )
		else
			ent:SetFogLightsEnabled( true )
		end
	end
end

function ENT:TriggerLights()
	local ent = self

	if not ent.LightsTable then return false end
	
	local Time = CurTime()
	if(Time < (ent.LastLamp or 0)) then return end
	
	//if keydown then
		//ent.KeyPressedTime = Time
	//else
		/*if (Time - ent.KeyPressedTime) >= (ent.LightsActivated and 0.22 or 0) then
			if (ent.NextLightCheck or 0) > Time then return end
			
			local vehiclelist = list.Get( "simfphys_lights" )[ent.LightsTable] or false
			if not vehiclelist then return end
			
			if ent.LightsActivated then
				ent.NextLightCheck = Time + (vehiclelist.DelayOff or 0)
				ent.LightsActivated = false
				ent:SetLightsEnabled(false)
				ent:EmitSound( "buttons/lightswitch2.wav" )
				ent.LampsActivated = false
				ent:SetLampsEnabled( ent.LampsActivated )
			else
				ent.NextLightCheck = Time + (vehiclelist.DelayOn or 0)
				ent.LightsActivated = true
				ent:EmitSound( "buttons/lightswitch2.wav" )
			end
			
			if ent.LightsActivated then
				if vehiclelist.BodyGroups then
					ent:SetBodygroup(vehiclelist.BodyGroups.On[1], vehiclelist.BodyGroups.On[2] )
				end
				if vehiclelist.Animation then
					ent:PlayAnimation( vehiclelist.Animation.On )
				end
				if ent.LightsPP then
					ent:PlayPP(ent.LightsActivated)
				end
			else
				if vehiclelist.BodyGroups then
					ent:SetBodygroup(vehiclelist.BodyGroups.Off[1], vehiclelist.BodyGroups.Off[2] )
				end
				if vehiclelist.Animation then
					ent:PlayAnimation( vehiclelist.Animation.Off )
				end
				if ent.LightsPP then
					ent:PlayPP(ent.LightsActivated)
				end
			end
		else*/
			if (ent.NextLightCheck or 0) > Time then return end
			
			if ent.LampsActivated then
				ent.LampsActivated = false
			else
				ent.LampsActivated = true
			end

			ent.LastLamp = CurTime() + 0.5
			
			ent:SetLampsEnabled( ent.LampsActivated )
			
			ent:EmitSound( "items/flashlight1.wav" )
		//end
	//end
end

hook.Add( "PlayerButtonUp", "!!!!!!1!simfphysButtonUp", function( ply, button )
	local veh = ply:GetSimfphys()
	if not IsValid( veh ) then return end

	//if button == KEY_V then
		//veh:TriggerFogLights( false )
	//end

	//if button == KEY_F then
		//veh:TriggerLights( false )
	//end

	if button == KEY_H then
		veh:TriggerHorn( false )
	end
end )

hook.Add( "PlayerButtonDown", "!!!!!!1!simfphysButtonDown", function( ply, button )
	local veh = ply:GetSimfphys()
	if not IsValid( veh ) then return end
	
	//if button == KEY_V then
		//veh:TriggerFogLights( true )
	//end

	if button == KEY_F then
		veh:TriggerLights()
	end

	if button == KEY_H then
		veh:TriggerHorn( true )
	end
end )
