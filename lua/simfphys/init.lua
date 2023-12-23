if SERVER then
	AddCSLuaFile("simfphys/client/fonts.lua")
	AddCSLuaFile("simfphys/client/hud.lua")
	AddCSLuaFile("simfphys/client/lighting.lua")
	AddCSLuaFile("simfphys/anim.lua")
	AddCSLuaFile("simfphys/base_functions.lua")
	AddCSLuaFile("simfphys/base_lights.lua")
	AddCSLuaFile("simfphys/base_vehicles.lua")
	
	include("simfphys/base_functions.lua")
	include("simfphys/server/damage.lua")
end
	
if CLIENT then
	include("simfphys/base_functions.lua")
	include("simfphys/client/fonts.lua")
	include("simfphys/client/hud.lua")
	include("simfphys/client/lighting.lua")
end

include("simfphys/anim.lua")
include("simfphys/base_lights.lua")
include("simfphys/base_vehicles.lua")
