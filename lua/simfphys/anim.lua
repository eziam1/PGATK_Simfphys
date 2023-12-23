hook.Add("CalcMainActivity", "simfphysSeatActivityOverride", function(ply)
	if not IsValid( ply:GetSimfphys() ) then return end
	
	if ply.m_bWasNoclipping then 
		ply.m_bWasNoclipping = nil 
		ply:AnimResetGestureSlot( GESTURE_SLOT_CUSTOM ) 
		
		if CLIENT then 
			ply:SetIK( true )
		end 
	end 
	
	local IsDriverSeat = ply:IsDrivingSimfphys()
	
	ply.CalcIdeal = ACT_HL2MP_SIT
	ply.CalcSeqOverride = IsDriverSeat and ply:LookupSequence( "drive_jeep" ) or -1

	if not IsDriverSeat and ply:GetAllowWeaponsInVehicle() and IsValid( ply:GetActiveWeapon() ) then
		
		local holdtype = ply:GetActiveWeapon():GetHoldType()
		
		if holdtype == "smg" then 
			holdtype = "smg1"
		end

		local seqid = ply:LookupSequence( "sit_" .. holdtype )
		
		if seqid ~= -1 then
			ply.CalcSeqOverride = seqid
		end
	end

	return ply.CalcIdeal, ply.CalcSeqOverride
end)

hook.Add("UpdateAnimation", "simfphysPoseparameters", function(ply , vel, seq)
	if CLIENT then
		if not ply:IsDrivingSimfphys() then return end
		
		local Car = ply:GetSimfphys()
		
		if not IsValid( Car ) then return end
		
		if(ply:GetPoseParameterName(9) != nil) then
		local Steer = Car:GetVehicleSteer()
		local flMin, flMax = ply:GetPoseParameterRange(9)
		local sPose = ply:GetPoseParameterName(9)
			ply:SetPoseParameter( ply:GetPoseParameterName(9), Lerp(FrameTime()*6, math.Remap(ply:GetPoseParameter(sPose), 0, 1, flMin, flMax), Steer/3) )
			ply:InvalidateBoneCache()
		end
		
		GAMEMODE:GrabEarAnimation( ply ) 
 		GAMEMODE:MouthMoveAnimation( ply ) 
		
		return true
	end
end)