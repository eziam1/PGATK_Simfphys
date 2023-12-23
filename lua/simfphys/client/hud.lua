local screenw = ScrW()
local screenh = ScrH()
local Widescreen = (screenw / screenh) > (4 / 3)
local sizex = screenw * (Widescreen and 1 or 1.32)
local sizey = screenh
local xpos = sizex * 0.02
local ypos = sizey * 0.8
local x = xpos * (Widescreen and 43.5 or 32)
local y = ypos * 1.015
local radius = 0.0766 * sizex
local startang = 105
local s_smoothrpm = 0
local sm_throttle = 0

local lights_on = Material( "simfphys/hud/low_beam_on" )
local lights_on2 = Material( "simfphys/hud/high_beam_on" )
local lights_off = Material( "simfphys/hud/low_beam_off" )
local icon_nitro = Material( "pga/icons/fire.png", "smooth" )
local icon_tire = Material( "pga/icons/wheel.png", "smooth" )
local icon_slipstream = Material( "pga/icons/speed.png", "smooth" )
local fog_on = Material( "simfphys/hud/fog_light_on" )
local fog_off = Material( "simfphys/hud/fog_light_off" )
local hbrake_on = Material( "simfphys/hud/handbrake_on" )
local hbrake_off = Material( "simfphys/hud/handbrake_off" )
local HUD_1 = Material( "simfphys/hud/hud" )
local HUD_2 = Material( "simfphys/hud/hud_center" )
local HUD_3 = Material( "simfphys/hud/hud_center_red" )
local HUD_5 = file.Exists( "materials/simfphys/hud/hud_5.vmt", "GAME") and Material( "simfphys/hud/hud_5" ) or false
local hudcolor_black = Color(32,32,32,255)
local hudcolor_red = Color( 225, 0, 0, 255 )
local hudcolor_red2 = Color( 255, 0, 0, 255 )
local hudcolor_orange = Color(255,192,0,255)
local hudcolor_blue = Color(0,192,255,255)
local reloadkey = input.LookupBinding("+reload") or "RELOAD"

local function DrawCircle( X, Y, radius )
	local segmentdist = 360 / ( 2 * math.pi * radius / 2 )
	
	for a = 0, 360 - segmentdist, segmentdist do
		surface.DrawLine( X + math.cos( math.rad( a ) ) * radius, Y - math.sin( math.rad( a ) ) * radius, X + math.cos( math.rad( a + segmentdist ) ) * radius, Y - math.sin( math.rad( a + segmentdist ) ) * radius )
	end
end

local function drawsimfphysHUD(vehicle)
	local maxrpm = vehicle:GetLimitRPM()
	local rpm = vehicle:GetRPM()
	local throttle = math.Round(vehicle:GetThrottle() * 100,0)
	local revlimiter = vehicle:GetRevlimiter() and (maxrpm > 2500) and (throttle > 0)
	
	local powerbandend = math.min(vehicle:GetPowerBandEnd(), maxrpm)
	local redline = math.max(rpm - powerbandend,0) / (maxrpm - powerbandend)
	
	local Active = vehicle:GetActive() and "" or "!"
	local speed = vehicle:GetVelocity():Length()
	local mph = math.Round(speed * 0.0568182,0)
	local kmh = math.Round(speed * 0.09144,0)
	local usemph = GetConVar("pga_simfphys_mph"):GetInt() == 1
	local gear = vehicle:GetGear()
	local DrawGear = (gear == 1 and "R" or gear == 2 and "N" or "(".. (gear - 2)..")")
	
	local o_x = impactshakeSmooth.y*-5 + shiftcamsmooth*3 - 40*brakecam + 40
	local o_y = impactshakeSmooth.y*-5 + shiftcamsmooth*3 - 40*brakecam + 40

	local LightsOn = vehicle:GetLightsEnabled()
	local LampsOn = vehicle:GetLampsEnabled()
	local FogLightsOn = vehicle:GetFogLightsEnabled()
	local HandBrakeOn = vehicle:GetHandBrakeEnabled()

	s_smoothrpm = math.Clamp(s_smoothrpm + (rpm - s_smoothrpm) * 0.3,0,maxrpm)
	
	local endang = startang + math.Round( (s_smoothrpm/maxrpm) * 255, 0)
	local c_ang = math.cos( math.rad(endang) )
	local s_ang = math.sin( math.rad(endang) )
	local ang_pend = startang + math.Round( (powerbandend / maxrpm) * 255, 0)
	local r_rpm = math.floor(maxrpm / 1000) * 1000
	local in_red = s_smoothrpm < powerbandend
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	
	/*local mat = LightsOn and (LampsOn and lights_on2 or lights_on) or lights_off
	surface.SetMaterial( mat )
	surface.DrawTexturedRect( x + radius * 1.33 + o_x, y - radius * 0.16 + o_y, sizex * 0.014, sizex * 0.014 )*/
	
	//local mat = FogLightsOn and fog_on or fog_off
	//surface.SetMaterial( mat )
	//surface.DrawTexturedRect( x + radius * 1.12 + o_x, y - radius * 0.43 + o_y, sizex * 0.018, sizex * 0.018 )

	//local mat = HandBrakeOn and hbrake_on or hbrake_off
	//surface.SetMaterial( mat )
	//surface.DrawTexturedRect( x + radius * 1.13 + o_x, y - radius * 0.75 + o_y, sizex * 0.018, sizex * 0.018 )

	//surface.SetMaterial( HUD_1 )
	//surface.DrawTexturedRect( x - radius + o_x, y - radius + 1 + o_y, radius * 2, radius * 2)
	surface.SetDrawColor( 255, 255, 255, 255 )
	
	//surface.SetMaterial( in_red and HUD_2 or HUD_3 )
	//surface.DrawTexturedRect( x - radius + o_x, y - radius + 1 + o_y, radius * 2, radius * 2)
	

	if HUD_5 then
		surface.SetMaterial( HUD_5 )
		
		for i = 345, 90, -4 do
			if i >= (450 - ((360) - math.Round( ((LocalPlayer():GetNWFloat("nitroustemp")/2000)) * 260, 0))) then 
				surface.SetDrawColor( 255, 255*(1-(i/345)), 0, 255 )
				surface.DrawTexturedRectRotated(x + o_x, y + 1 + o_y, radius * 2*1.22, radius * 2*1.22 , i)
			else
				surface.SetDrawColor( 32, 32, 32, 255 )
				surface.DrawTexturedRectRotated(x + o_x, y + 1 + o_y, radius * 2*1.22, radius * 2*1.22 , i)
			end
			if i >= (450 - ((startang-5) + math.Round( ((LocalPlayer():GetNWFloat("tiretemp")/2000)) * 260, 0))) then 
				surface.SetDrawColor( 255, 192*(i/345), 0, 425*(1-(i/345)) )
				surface.DrawTexturedRectRotated(x + o_x, y + 1 + o_y, radius * 2*0.819, radius * 2*0.819 , i)
			end
			if i >= (450 - ((startang-5) + math.Round( ((LocalPlayer():GetNWFloat("slipstreamboost")/200)) * 260, 0))) then 
				surface.SetDrawColor( 0, 255*(1-(i/345)), 255, 425*(1-(i/345)) )
				surface.DrawTexturedRectRotated(x + o_x, y + 1 + o_y, radius * 2*0.5, radius * 2*0.5 , i)
			end
			if i <= (450 - ang_pend) then
				surface.SetDrawColor(172, 0, 0, 255 )
				surface.DrawTexturedRectRotated(x + o_x, y + 1 + o_y, radius * 2, radius * 2 , i)
			else
				surface.SetDrawColor( 32, 32, 32, 255 )
				surface.DrawTexturedRectRotated(x + o_x, y + 1 + o_y, radius * 2, radius * 2 , i)
			end
			
			if i >= (450 - endang) then 
				if i < (450 - ang_pend) then
					surface.SetDrawColor( 255, 0, 0, 255 )
				else
					surface.SetDrawColor( 255, 255, 255, 255 )
				end
				surface.DrawTexturedRectRotated(x + o_x, y + 1 + o_y, radius * 2, radius * 2 , i)
			end
			if i >= (450 - ((startang-5) + math.Round( (math.min(vehicle:GetBoost()/0.94,1)) * 260, 0))) then 
				surface.SetDrawColor( 255, 192*(i/345), 0, 255 )
				surface.DrawTexturedRectRotated(x + o_x, y + 1 + o_y, radius * 2*0.275, radius * 2*0.275 , i)
			end
		end
		surface.SetDrawColor( 255, 255, 255, 255 )
	end
	surface.DrawCircle( x + o_x, y + 1 + o_y, 28, color_white )
	surface.SetDrawColor( 255, 192*(1-math.min(LocalPlayer():GetNWFloat("nitroustemp")/2000,1)), 0, 255 )
	surface.SetMaterial( icon_nitro )
	surface.DrawTexturedRect( x + radius * 0.89*1.167 + o_x, y + o_y-20, sizex * 0.014, sizex * 0.014 )
	draw.SimpleTextOutlined( 100-(100*math.Round(LocalPlayer():GetNWFloat("nitroustemp")/2000,2)).."%", "quirkfontspeedo", x + radius * 0.89*1.16 + o_x, y + radius * 0.16 + o_y, color_white, 0, 1, 1, color_black )

	surface.SetDrawColor( 255, 64, 0, 425*(LocalPlayer():GetNWFloat("tiretemp")/2000) )
	surface.SetMaterial( icon_tire )
	surface.DrawTexturedRect( x + radius * 0.89*0.75 + o_x, y + o_y-20, sizex * 0.014, sizex * 0.014 )

	if(LocalPlayer():GetNWFloat("slipstreamboost") >= 200) then
		surface.SetDrawColor( 0, 192, 255, 255 )
		surface.SetMaterial( icon_slipstream )
		surface.DrawTexturedRect( x + radius * 0.89*0.425 + o_x, y + o_y-20, sizex * 0.014, sizex * 0.014 )
		draw.SimpleTextOutlined( "Press '"..string.upper(reloadkey).."' To Quick Boost!", "quirkfontspeedo", x + o_x, y - radius * 1.4152 + o_y, hudcolor_blue, 1, 1, 1, color_black )
	end

	local step = 0
	for i = 0,maxrpm,250 do
		step = step + 1
		
		local anglestep = (255 / maxrpm) * i
		
		local n_col_on
		local n_col_off
		if (i < powerbandend) then
			n_col_off = color_white
			n_col_on = color_white
		else
			n_col_off = hudcolor_red
			n_col_on = hudcolor_red
		end
		local u_col = (s_smoothrpm > i) and n_col_on or n_col_off
		surface.SetDrawColor( u_col )
		
		local cos_a = math.cos( math.rad(startang + anglestep) )
		local sin_a = math.sin( math.rad(startang + anglestep) )
		
		if step > 4 then
			step = 1
			surface.DrawLine( x + cos_a * radius / 1.3 + o_x, y + sin_a * radius / 1.3 + o_y, x + cos_a * radius + o_x, y + sin_a * radius + o_y)
			local printnumber = tostring(i / 1000)
			draw.SimpleTextOutlined(printnumber, "quirkfontspeedo", x + cos_a * radius / 1.5 + o_x, y + sin_a * radius / 1.5 + o_y,u_col, 1, 1, 1, color_black )
		else
			surface.DrawLine( x + cos_a * radius / 1.05 + o_x, y + sin_a * radius / 1.05 + o_y, x + cos_a * radius + o_x, y + sin_a * radius + o_y)
		end
	end
	
	local center_ncol = in_red and color_white or hudcolor_red2
	
	surface.SetDrawColor( in_red and hudcolor_orange or hudcolor_red2 )
	surface.DrawLine( x + c_ang * radius / 3.5 + o_x, y + s_ang * radius / 3.5 + o_y, x + c_ang * radius + o_x, y + s_ang * radius + o_y)
	surface.SetDrawColor( 255, 255, 255, 255 )
	
	draw.SimpleTextOutlined( (gear == 1 and "R" or gear == 2 and "N" or (gear - 2)), "quirkfontspeedo3", x * 0.9975 + o_x, y * 0.996 + o_y, center_ncol, 1, 1, 1, color_black )
	
	draw.SimpleTextOutlined( usemph && "MPH" or "KM/H", "quirkfontspeedo", x + radius * 0.82 + o_x, y + radius * 0.16 + o_y, color_white, 1, 1, 1, color_black )

	
	local printspeed = usemph && mph or kmh
	
	local digit_1  =  printspeed % 10
	local digit_2 =  (printspeed - digit_1) % 100
	local digit_3  = (printspeed - digit_1 - digit_2) % 1000
	
	local col_on = hudcolor_black
	local col_off = color_white
	local col1 = (printspeed > 0) and col_off or col_on
	local col2 = (printspeed >= 10) and col_off or col_on
	local col3 = (printspeed >= 100) and col_off or col_on
	
	draw.SimpleTextOutlined( digit_1, "quirkfontspeedo2", x + radius * 0.84 + o_x, y + radius * 0.65 + o_y, col1, 1, 1, 1, color_black )
	draw.SimpleTextOutlined( digit_2/ 10, "quirkfontspeedo2", x + radius * 0.48 + o_x, y + radius * 0.65 + o_y, col2, 1, 1, 1, color_black )
	draw.SimpleTextOutlined( digit_3 / 100, "quirkfontspeedo2", x + radius * 0.12 + o_x, y + radius * 0.65 +  o_y, col3, 1, 1, 1, color_black )
	
	sm_throttle = sm_throttle + (throttle - sm_throttle) * 0.1
	local t_size = (sizey * 0.1)
	surface.SetDrawColor( hudcolor_black )
	surface.DrawRect( x + radius * 1.22 + o_x, y + radius * 0.36 + o_y, radius * 0.08, sizey * 0.1 )
	surface.SetDrawColor( color_white )
	surface.DrawRect( x + radius * 1.22 + o_x, y + radius * 0.36 + t_size - t_size * math.min(sm_throttle / 100,1) + o_y, radius * 0.08, t_size * math.min(sm_throttle / 100,1) )
end

local function simfphysHUD()
	local ply = LocalPlayer()
	
	if not IsValid( ply ) or not ply:Alive() then return end

	if(ConVarExists("pga_disablehud")) then
		if(GetConVar("pga_disablehud"):GetInt() == 1 or !finishedintro) then return end
	end

	local veh = ply:GetSimfphys()

	if not IsValid( veh ) then return end

	drawsimfphysHUD( veh )
end
hook.Add( "HUDPaint", "simfphys_HUD", simfphysHUD)

-- draw.arc function by bobbleheadbob
-- https://dl.dropboxusercontent.com/u/104427432/Scripts/drawarc.lua
-- https://facepunch.com/showthread.php?t=1438016&p=46536353&viewfull=1#post46536353

function surface.PrecacheArc(cx,cy,radius,thickness,startang,endang,roughness,bClockwise)
	local triarc = {}
	local deg2rad = math.pi / 180
	
	-- Correct start/end ang
	local startang,endang = startang or 0, endang or 0
	if bClockwise and (startang < endang) then
		local temp = startang
		startang = endang
		endang = temp
		temp = nil
	elseif (startang > endang) then 
		local temp = startang
		startang = endang
		endang = temp
		temp = nil
	end
	
	
	-- Define step
	local roughness = math.max(roughness or 1, 1)
	local step = roughness
	if bClockwise then
		step = math.abs(roughness) * -1
	end
	
	
	-- Create the inner circle's points.
	local inner = {}
	local r = radius - thickness
	for deg=startang, endang, step do
		local rad = deg2rad * deg
		table.insert(inner, {
			x=cx+(math.cos(rad)*r),
			y=cy+(math.sin(rad)*r)
		})
	end
	
	
	-- Create the outer circle's points.
	local outer = {}
	for deg=startang, endang, step do
		local rad = deg2rad * deg
		table.insert(outer, {
			x=cx+(math.cos(rad)*radius),
			y=cy+(math.sin(rad)*radius)
		})
	end
	
	
	-- Triangulize the points.
	for tri=1,#inner*2 do -- twice as many triangles as there are degrees.
		local p1,p2,p3
		p1 = outer[math.floor(tri/2)+1]
		p3 = inner[math.floor((tri+1)/2)+1]
		if tri%2 == 0 then --if the number is even use outer.
			p2 = outer[math.floor((tri+1)/2)]
		else
			p2 = inner[math.floor((tri+1)/2)]
		end
	
		table.insert(triarc, {p1,p2,p3})
	end
	
	-- Return a table of triangles to draw.
	return triarc
	
end

function surface.DrawArc(arc)
	for k,v in ipairs(arc) do
		surface.DrawPoly(v)
	end
end

function draw.Arc(cx,cy,radius,thickness,startang,endang,roughness,color,bClockwise)
	surface.SetDrawColor(color)
	surface.DrawArc(surface.PrecacheArc(cx,cy,radius,thickness,startang,endang,roughness,bClockwise))
end
