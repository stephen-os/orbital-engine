-- premake5.lua
workspace "OrbitalEngine"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "OrbitalEngine"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "lumina/LuminaExternal.lua"

group "App"
   include "orbital-engine"
group ""