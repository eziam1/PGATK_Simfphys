AddCSLuaFile("simfphys/init.lua")
include("simfphys/init.lua")

--CreateConVar( "pga_disable_tire_particles", "1" )

if SERVER then
	resource.AddWorkshop("771487490") -- makes sure all clients have the hud textures

	--util.AddNetworkString( "impactshake" )
	
	--function SIMFPHYSDEBUG()
	--	simfphys.SpawnVehicleSimple( "sim_fphys_conscriptapc", Entity(1):GetPos(), Angle(0,0,0) )
	--end
end