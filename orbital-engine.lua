-- orbital-engine.lua
workspace "OrbitalEngine"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "OrbitalEngine"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Lumina
include "lumina/lumina-external.lua"

-- Orbital Engine
group "App"
   include "orbital-engine/orbital-engine.lua"
group ""