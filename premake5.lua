project "spdlog"
    language "C++"
    kind "StaticLib"
    staticruntime "on"

    targetdir ("../../../Binaries/" .. outputdir .. "/%{prj.name}")
    objdir ("../../../Binaries-Int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.cpp",
        "include/spdlog/**.h"
    }

    includedirs
    {
        "include"
    }

    defines
    {
        "SPDLOG_COMPILED_LIB"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Distribution"
        runtime "Release"
        optimize "on"

