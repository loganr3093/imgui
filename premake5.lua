-- Build ImGui
project "ImGui"
    kind "StaticLib"
    language "C++"

	targetdir ("Binaries/" .. OutputDir .. "/%{prj.name}")
    objdir ("Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

	files
	{
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "imgui_tables.cpp"
    }

	filter "system:windows"
        systemversion "latest"
        cppdialect "C++20"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
