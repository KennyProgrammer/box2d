--
-- Main Premake5 file for building Box2D project.
-- Copyright (c) 2020-2023 by Danil (Kenny) Dukhovenko, All rights reserved.
--
-- Requirement:
--  - ForceEngine.lua
--

-- Box2D C++ Project
project "Box2D"
	kind          "StaticLib"
	language      "C++"
	cppdialect    "C++11"
	staticruntime "on"
	targetdir     ("%{ForceDir.BinLib}/" .. BuildDir .. "/%{prj.name}/Lib")
	objdir        ("%{ForceDir.BinLib}/" .. BuildDir .. "/%{prj.name}/Obj")

	files {
		"src/**.h",
		"src/**.cpp",
		"include/**.h"
	}

	includedirs {
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"