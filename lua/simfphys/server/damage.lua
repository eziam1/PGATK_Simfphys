util.AddNetworkString( "simfphys_spritedamage" )
util.AddNetworkString( "simfphys_lightsfixall" )
util.AddNetworkString( "simfphys_backfire" )

local function Spark( pos , normal , snd )
	local effectdata = EffectData()
	effectdata:SetOrigin( pos - normal )
	effectdata:SetNormal( -normal )
	util.Effect( "stunstickimpact", effectdata, true, true )
	
	if snd then
		sound.Play(Sound( snd ), pos, 80,math.random(90,110))
	end
end

local function BloodEffect( pos )
	local effectdata = EffectData()
	effectdata:SetOrigin( pos )
	util.Effect( "BloodImpact", effectdata, true, true )
end

local explodeannouncer1 = {
	"eziam/raceattack/commentator/impact-10.wav",
	"eziam/raceattack/commentator/impact-11.wav",
	"eziam/raceattack/commentator/impact-12.wav",
	"eziam/raceattack/commentator/impact-13.wav",
	"eziam/raceattack/commentator/impact-19.wav",
	"eziam/raceattack/commentator/explode-1.wav",
	"eziam/raceattack/commentator/explode-2.wav",
	"eziam/raceattack/commentator/explode-3.wav",
	"eziam/raceattack/commentator/explode-4.wav",
	"eziam/raceattack/commentator/explode-5.wav",
	"eziam/raceattack/commentator/explode-6.wav",
	"eziam/raceattack/commentator/explode-7.wav",
	"eziam/raceattack/commentator/explode-8.wav",
	"eziam/raceattack/commentator/explode-9.wav",
	"eziam/raceattack/commentator/explode-10.wav",
	"eziam/raceattack/commentator/explode-11.wav",
	"eziam/raceattack/commentator/explode-12.wav",
	"eziam/raceattack/commentator/explode-13.wav",
	"eziam/raceattack/commentator/explode-14.wav",
}

function DestroyVehicle( ent, killzone )
	if not IsValid( ent ) then return end
	if ent.destroyed then return end
	
	ent.destroyed = true
	if(ent.MadVehicle) then
		ent:EmitSound("common/null.wav", 85,100,0.4,CHAN_STREAM)
	end
	
	local ply = ent.EntityOwner
	local skin = ent:GetSkin()
	local Col = ent:GetColor()
	Col.r = Col.r * 0.8
	Col.g = Col.g * 0.8
	Col.b = Col.b * 0.8
	
	local bprop = ents.Create( "gmod_sent_vehicle_fphysics_gib" )
	bprop:SetModel( ent:GetModel() )			
	bprop:SetPos( ent:GetPos() )
	bprop:SetAngles( ent:GetAngles() )
	bprop:Spawn()
	bprop:Activate()
	bprop:GetPhysicsObject():SetVelocity( ent:GetVelocity() + Vector(math.random(-5,5),math.random(-5,5),math.random(150,250)) ) 
	bprop:GetPhysicsObject():ApplyForceOffset(Vector(0,0,100000),bprop:GetPos()+Vector(math.random(-96,96),math.random(-96,96),0))
	bprop:GetPhysicsObject():SetMass( ent.Mass * 0.75 )
	bprop.DoNotDuplicate = true
	bprop.MakeSound = true
	bprop:SetColor( Col )
	bprop:SetSkin( skin )
	
	ent.Gib = bprop
	
	simfphys.SetOwner( ply , bprop )
	
	if IsValid( ply ) then
		undo.Create( "Gib" )
		undo.SetPlayer( ply )
		undo.AddEntity( bprop )
		undo.SetCustomUndoText( "Undone Gib" )
		undo.Finish( "Gib" )
		ply:AddCleanup( "Gibs", bprop )
	end
	
	if ent.CustomWheels == true and not ent.NoWheelGibs then
		for i = 1, table.Count( ent.GhostWheels ) do
			local Wheel = ent.GhostWheels[i]
			if IsValid(Wheel) then
				local prop = ents.Create( "gmod_sent_vehicle_fphysics_gib" )
				prop:SetModel( Wheel:GetModel() )			
				prop:SetPos( Wheel:LocalToWorld( Vector(0,0,0) ) )
				prop:SetAngles( Wheel:LocalToWorldAngles( Angle(0,0,0) ) )
				prop:SetOwner( bprop )
				prop:Spawn()
				prop:Activate()
				prop:GetPhysicsObject():SetVelocity( ent:GetVelocity() + Vector(math.random(-5,5),math.random(-5,5),math.random(0,25)) )
				prop:GetPhysicsObject():ApplyForceCenter(Vector(math.random(-10000,10000),math.random(-10000,10000),3000))
				prop:GetPhysicsObject():SetMass( 20 )
				prop.DoNotDuplicate = true
				bprop:DeleteOnRemove( prop )
				
				simfphys.SetOwner( ply , prop )
			end
		end
	end

	local Driver = ent:GetDriver()
	if IsValid( Driver ) then
		if(!derbymode && Driver:GetNWBool("inrace")) then
			Driver.deathpos = ent.LastGround or nil
			Driver.deathang = ent.LastGroundAngle or nil
			Driver.deathvel = ent:GetPhysicsObject():GetVelocity()
		else
			Driver.deathpos = nil
			Driver.deathang = nil
			Driver.deathvel = nil
		end
		if ent.RemoteDriver ~= Driver then
			Driver:TakeDamage( Driver:Health() + Driver:Armor(), ent.LastAttacker or Entity(0), ent.LastInflictor or Entity(0) )
		end
	end
	
	if ent.PassengerSeats then
		for i = 1, table.Count( ent.PassengerSeats ) do
			local Passenger = ent.pSeat[i]:GetDriver()
			if IsValid( Passenger ) then
				Passenger:TakeDamage( Passenger:Health() + Passenger:Armor(), ent.LastAttacker or Entity(0), ent.LastInflictor or Entity(0) )
			end
		end
	end
	
	ent:Extinguish() 
	
	ent:OnDestroyed()
	
	ent:Remove()
	if(IsValid(Driver) && !ent.MadVehicle) then
		net.Start("impactshake")
		net.WriteFloat(1299)
		net.Send(Driver)
		for k, v in pairs(player.GetAll()) do
			if(v != Driver && v:GetPos():DistToSqr(ent:GetPos()) < 512*512) then
				net.Start("impactshake")
				net.WriteFloat(1200*(1-(v:GetPos():Distance(ent:GetPos())/512)))
				net.Send(v)
			end
		end
		net.Start("playclientsound")
		net.WriteString("pga/physics/explodebass-0"..math.random(1,7)..".wav")
		net.Send(Driver)
		net.Start("commentator")
		if((currentannouncer or 1) == 1) then
			net.WriteString(table.Random(explodeannouncer1))
		elseif((currentannouncer or 1) == 2) then
			net.WriteString("eziam/raceattack/commentator/2_explode-"..math.random(1,22)..".wav")
		elseif((currentannouncer or 1) == 3) then
			net.WriteString("eziam/raceattack/commentator/3_explode-"..math.random(1,21)..".wav")
		end
		net.WriteFloat(7)
		net.WriteString("explode")
		net.WriteInt(currentannouncer or 1,32)
		net.Broadcast()
	end
end

local function DamageVehicle( ent , damage, type )
	local MaxHealth = ent:GetMaxHealth()
	local CurHealth = ent:GetCurHealth()
	
	local NewHealth = math.max( math.Round(CurHealth - damage,0) , 0 )
	
	if NewHealth <= (math.Clamp(MaxHealth * 0.6,1,900)) then
		if NewHealth <= (math.Clamp(MaxHealth * 0.3,1,400)) then
			ent:SetOnFire( true )
			ent:SetOnSmoke( false )
			//ent:SetBodyGroups("011")
		else
			ent:SetOnSmoke( true )
			//ent:SetBodyGroups("011")
		end
	end
	
	/*if MaxHealth > 30 and NewHealth <= 31 then
		if ent:EngineActive() then
			ent:DamagedStall()
		end
	end*/
	
	if NewHealth <= 32 then

		DestroyVehicle( ent )
		
		return
	end
	
	ent:SetCurHealth( NewHealth )
end

local function bcDamage( vehicle , position , cdamage )
	cdamage = cdamage or false
	net.Start( "simfphys_spritedamage" )
		net.WriteEntity( vehicle )
		net.WriteVector( position ) 
		net.WriteBool( cdamage ) 
	net.Broadcast()
end

local impactsound = {
	"pga/physics/carhit-01.wav",
	"pga/physics/carhit-02.wav",
	"pga/physics/carhit-03.wav",
	"pga/physics/carhit-04.wav",
	"pga/physics/carhit-05.wav",
	"pga/physics/carhit-06.wav",
	"pga/physics/carhit-07.wav",
	"pga/physics/carhit-08.wav",
	"pga/physics/carhit-09.wav",
	"pga/physics/carhit-10.wav",
	"pga/physics/carhit-11.wav",
	"pga/physics/carhit-12.wav",
	"pga/physics/carhit-13.wav",
	"pga/physics/carhit-14.wav",
}

local impactannouncer1 = {
	"eziam/raceattack/commentator/impact-1.wav",
	"eziam/raceattack/commentator/impact-2.wav",
	"eziam/raceattack/commentator/impact-3.wav",
	"eziam/raceattack/commentator/impact-4.wav",
	"eziam/raceattack/commentator/impact-5.wav",
	"eziam/raceattack/commentator/impact-6.wav",
	"eziam/raceattack/commentator/impact-7.wav",
	"eziam/raceattack/commentator/impact-8.wav",
	"eziam/raceattack/commentator/impact-9.wav",
	"eziam/raceattack/commentator/impact-14.wav",
	"eziam/raceattack/commentator/impact-15.wav",
	"eziam/raceattack/commentator/impact-16.wav",
	"eziam/raceattack/commentator/impact-17.wav",
	"eziam/raceattack/commentator/impact-18.wav",
	"eziam/raceattack/commentator/impact-20.wav",
	"eziam/raceattack/commentator/impact-21.wav",
}

local function onCollide( ent, data )
	if IsValid( data.HitEntity ) then
		if data.HitEntity:GetClass():StartWith( "npc_" ) then
			Spark( data.HitPos , data.HitNormal , data.Speed > 700 && "eziam/raceattack/physics/impact_hard-0"..math.random(1,6)..".wav" or "pga/physics/carhit-"..math.random(1,14)..".wav")
			return
		end
	end
	
	if IsValid( data.HitEntity ) then
		if(simfphys.IsCar(data.HitEntity) && data.Speed > 500 && data.HitEntity:GetDriver():IsPlayer()) then
			if(IsValid(ent:GetDriver()) && ent:GetDriver():GetNWBool("inrace") == true && !derbymode && !ent:GetDriver().incopcar) then
				net.Start("commentator")
				if((currentannouncer or 1) == 1) then
					net.WriteString(table.Random(impactannouncer1))
				elseif((currentannouncer or 1) == 2) then
					net.WriteString("eziam/raceattack/commentator/2_impact-"..math.random(1,12)..".wav")
				elseif((currentannouncer or 1) == 3) then
					net.WriteString("eziam/raceattack/commentator/3_impact-"..math.random(1,6)..".wav")
				end
				net.WriteFloat(11)
				net.WriteString("impact")
				net.WriteInt(currentannouncer or 1,32)
				net.Broadcast()
			end
		elseif(simfphys.IsCar(data.HitEntity) && data.HitEntity.MadVehicle && !data.HitEntity.isroadblock) then
			if(IsValid(ent:GetDriver()) && ent:GetDriver():IsPlayer() && ent:GetDriver():GetNWBool("inrace") == true) then
				if(!data.HitEntity.ramming) then
					if(data.Speed > 800) then
						if(!timer.Exists("coprammed") && !timer.Exists("blockthem") && !timer.Exists("copramdelayspecific"..data.HitEntity:EntIndex()) && !timer.Exists("copcommentdelay")) then
							timer.Simple(0.66,function()
								if(timer.Exists("dispatchupdate")) then
									timer.Adjust("dispatchupdate",math.random(20,40))
								end
								if(timer.Exists("copspottedracer"..data.HitEntity:EntIndex())) then
									net.Start("playcopsound")
									net.WriteString("eziam/raceattack/cops/rammedstart-"..math.random(1,35)..".wav")
									net.Broadcast()
								else
									if(!data.HitEntity:OnSmoke() && !data.HitEntity:OnFire()) then
										net.Start("playcopsound")
										net.WriteString("eziam/raceattack/cops/rammed-"..math.random(1,71)..".wav")
										net.Broadcast()
									end
								end
							end)
							timer.Create("coprammed",10,1,function() end)
							timer.Create("copdestroyed"..data.HitEntity:EntIndex(),2.5,1,function() end)
							timer.Remove("dispatchrespond")
						end
					elseif(data.Speed > 100) then
						if(!timer.Exists("coprammed") && !timer.Exists("blockthem") && !timer.Exists("copramdelayspecific"..data.HitEntity:EntIndex()) && !timer.Exists("copcommentdelay")) then
							timer.Simple(0.66,function()
								if(timer.Exists("dispatchupdate")) then
									timer.Adjust("dispatchupdate",math.random(20,40))
								end
								if(timer.Exists("copspottedracer"..data.HitEntity:EntIndex())) then
									net.Start("playcopsound")
									net.WriteString("eziam/raceattack/cops/rammedstart-"..math.random(1,35)..".wav")
									net.Broadcast()
								else
									net.Start("playcopsound")
									net.WriteString("eziam/raceattack/cops/minorram-"..math.random(1,57)..".wav")
									net.Broadcast()
								end
							end)
							timer.Create("coprammed",10,1,function() end)
							timer.Remove("dispatchrespond")
						end
					end
				else
					if(data.Speed > 1000) then
						if(!timer.Exists("coprammed") && !timer.Exists("blockthem") && !timer.Exists("copramdelayspecific"..data.HitEntity:EntIndex()) && !timer.Exists("copcommentdelay")) then
							timer.Simple(0.66,function()
								if(timer.Exists("dispatchupdate")) then
									timer.Adjust("dispatchupdate",math.random(20,40))
								end
								net.Start("playcopsound")
								net.WriteString("eziam/raceattack/cops/rammed-"..math.random(1,71)..".wav")
								net.Broadcast()
							end)
							timer.Create("coprammed",10,1,function() end)
							timer.Create("copdestroyed"..data.HitEntity:EntIndex(),2.5,1,function() end)
							timer.Remove("dispatchrespond")
						end
						timer.Remove("copramdelayspecific"..data.HitEntity:EntIndex())
						data.HitEntity.ramming = false
					end
				end
			end
		end
		if(IsValid(ent:GetDriver()) && simfphys.IsCar(data.HitEntity) && ent:GetNWBool("usingnitro") == true && data.Speed > 500 && !timer.Exists("ramdelay"..ent:GetDriver():GetName()) && (ent:GetDriver():GetNWBool("inrace") == true or ent:GetDriver().incopcar)) then
			data.HitEntity:GetPhysicsObject():ApplyForceCenter(ent:GetVelocity():GetNormalized()*((ent:GetPhysicsObject():GetMass()+ent:GetVelocity():Length())*466*(1+(ent:GetDriver().V_Ram/100)))*NITROUSRAM_MULT)
			if(IsValid(ent:GetDriver())) then
				if(!timer.Exists("ramdelay"..ent:GetDriver():GetName())) then
					if(!derbymode) then
						if(data.HitEntity.MadVehicle) then
							ent:GetDriver():PS_GivePoints(math.Round(math.Clamp((data.Speed-500)/10,1,180)*1.667,0))
							ent:GetDriver():PS_Notify("[Cop Nitrous Ram] "..math.Round(math.Clamp((data.Speed-500)/10,1,180)*1.667,0).." coins!")
						else
							ent:GetDriver():PS_GivePoints(math.Round(math.Clamp((data.Speed-500)/10,1,180),0))
							ent:GetDriver():PS_Notify("[Nitrous Ram] "..math.Round(math.Clamp((data.Speed-500)/10,1,180),0).." coins!")
						end
						net.Start("playclientsound")
						net.WriteString("pga/perfect"..math.random(1,2)..".wav")
						net.Send(ent:GetDriver())
					end
					if(derbymode == false) then
					timer.Create("ramdelay"..ent:GetDriver():GetName(),3,1,function() end)
					else
					timer.Create("ramdelay"..ent:GetDriver():GetName(),0.5,1,function() end)
					end
					data.HitEntity:TakeDamage( ((data.Speed / 7)*((ent:GetPhysicsObject():GetMass()/1100))*(1100/math.Clamp(data.HitEntity:GetPhysicsObject():GetMass(),1100,100000))) * simfphys.DamageMul*2.5*(1+(ent:GetDriver().V_Ram/100))*(1-((data.HitEntity:GetDriver().V_Defense or 0)/100))*NITROUSRAM_MULT, Entity(0), Entity(0) )
				end
			end
		end
	end
	
	if(data.Speed > 500 && CurTime() > (ent.DeltaTime or 0)) then
		net.Start("impactshake")
		net.WriteFloat(data.Speed-500)
		net.Send(ent:GetDriver())
		ent.DeltaTime = CurTime() + 0.2
	end
	ent:GetDriver().airtime = 0
	
	if ( data.Speed > 120 && data.DeltaTime > 0.2 ) then

		local pos = data.HitPos
		
		if (data.Speed > 500) then
			Spark( pos , data.HitNormal , "pga/physics/carhit-"..math.random(1,14)..".wav" )
			Spark( pos , data.HitNormal , ")eziam/raceattack/physics/impact_hard-0"..math.random(1,6)..".wav" )
			if (data.Speed > 700) then
				ent:EmitSound("pga/physics/crashhard-0"..math.random(1,8)..".wav",90,math.random(90,110),1,CHAN_USER_BASE)
			else
				ent:EmitSound("pga/physics/crashsmall-0"..math.random(1,8)..".wav",85,math.random(90,110),1,CHAN_USER_BASE)
			end
			if (data.Speed > 1000) then
				ent:EmitSound("pga/physics/carwindow-0"..math.random(1,8)..".wav",85,math.random(90,110),1,CHAN_USER_BASE)
			end
			local clr = ent:GetColor()
			local effectdata = EffectData()
			effectdata:SetOrigin( data.HitPos - data.HitNormal )
			effectdata:SetNormal( -data.HitNormal )
			effectdata:SetStart( Vector(clr.r,clr.g,clr.b) )
			effectdata:SetMagnitude( math.Clamp(data.Speed/2000,0,1) )
			util.Effect( "carpieces", effectdata, true, true )
			local effectdata2 = EffectData()
			effectdata2:SetOrigin( data.HitPos - data.HitNormal )
			effectdata2:SetNormal( -data.HitNormal )
			effectdata2:SetMagnitude( math.Clamp(data.Speed/2000,0,1) )
			util.Effect( "carglass", effectdata2, true, true )
			
			if(!ent.shielded) then
			ent:TakeDamage( ((data.Speed / 7)*((1100/ent:GetPhysicsObject():GetMass())))* simfphys.DamageMul*(1-((ent:GetDriver().V_Defense or 0)/100)), Entity(0), Entity(0) )
			end
			
			bcDamage( ent , ent:WorldToLocal( pos ) , true )
		else
			Spark( pos , data.HitNormal , "pga/physics/carhit-"..math.random(1,14)..".wav" )
			ent:EmitSound("pga/physics/crashsmall-0"..math.random(1,8)..".wav",85,math.random(90,110),1,CHAN_USER_BASE)
			local clr = ent:GetColor()
			local effectdata = EffectData()
			effectdata:SetOrigin( data.HitPos - data.HitNormal )
			effectdata:SetNormal( -data.HitNormal )
			effectdata:SetStart( Vector(clr.r,clr.g,clr.b) )
			effectdata:SetMagnitude( math.Clamp(data.Speed/2000,0,1) )
			util.Effect( "carpieces", effectdata, true, true )
			
			if data.Speed > 250 then
				local hitent = data.HitEntity:IsPlayer()
				if not hitent then
					bcDamage( ent , ent:WorldToLocal( pos ) , true )
					
					if simfphys.DamageMul > 1 then
						if(!ent.shielded) then
						ent:TakeDamage( ((data.Speed / 28)*((1100/ent:GetPhysicsObject():GetMass()))) * simfphys.DamageMul*(1-((ent:GetDriver().V_Defense or 0)/100)), Entity(0), Entity(0) )
						end
					end
				end
			end
			
			if data.Speed > 500 then
				if(!ent.shielded) then
				ent:TakeDamage( ((data.Speed / 12)*((1100/ent:GetPhysicsObject():GetMass()))) * simfphys.DamageMul*(1-((ent:GetDriver().V_Defense or 0)/100)), Entity(0), Entity(0) )
				end
			end
		end
	end
end

local function OnDamage( ent, dmginfo )
	ent:TakePhysicsDamage( dmginfo )
	
	if not ent:IsInitialized() then return end
	
	local Damage = dmginfo:GetDamage() 
	local DamagePos = dmginfo:GetDamagePosition() 
	local Type = dmginfo:GetDamageType()
	local Driver = ent:GetDriver()
	
	ent.LastAttacker = dmginfo:GetAttacker() 
	ent.LastInflictor = dmginfo:GetInflictor()
	
	bcDamage( ent , ent:WorldToLocal( DamagePos ) )
	
	local Mul = 1
	if Type == DMG_BLAST then
		Mul = 10
	end
	
	if Type == DMG_BULLET then
		Mul = 2
		
		local effectdata = EffectData()
		effectdata:SetOrigin( DamagePos )
		effectdata:SetNormal( (ent:GetPos() - DamagePos):GetNormalized() )
		util.Effect( "stunstickimpact", effectdata, true, true )
	end
	
	DamageVehicle( ent , Damage * Mul, Type )
end

hook.Add( "OnEntityCreated", "simfphys_damagestuff", function( ent )
	if simfphys.IsCar( ent ) then
		timer.Simple( 0.2, function()
			if not IsValid( ent ) then return end
			
			local Health = math.floor(ent.MaxHealth and ent.MaxHealth or (1000 + ent:GetPhysicsObject():GetMass() / 3))
			
			ent:SetMaxHealth( Health )
			ent:SetCurHealth( Health )
			
			ent.PhysicsCollide = onCollide
			ent.OnTakeDamage = OnDamage
		end)
	end
end)
