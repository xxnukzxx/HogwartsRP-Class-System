if SERVER then
	AddCSLuaFile("main_class.lua")
	AddCSLuaFile("cl_fonts.lua")
	
end

if CLIENT then
	include("cl_fonts.lua")
	include("main_class.lua")
end