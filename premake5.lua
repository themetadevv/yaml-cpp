project "YAML"
	kind "StaticLib"
	language "C++"
    cppdialect "C++20"
	staticruntime "off" 

	targetdir ("bin/yaml/builds/%{cfg.system}_%{cfg.buildcfg}")
	objdir ("bin/yaml/intermediates/%{cfg.system}")

	includedirs
  	{
      	"include"
  	}

	files
	{
	    "include/**.h",
	    "src/**.h",
	    "src/**.cpp"
	}

	defines { "YAML_CPP_STATIC_DEFINE" }

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		optimize "off"

	filter "configurations:Release"
		runtime "Release"
		symbols "off"
		optimize "on"
