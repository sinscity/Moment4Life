local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Get to the Top", "GrapeTheme")
local Win = Window:NewTab("Win")
local Section = Win:NewSection("Teleports")
Section:NewButton("Teleport to top section", "ButtonInfo", function()
    print("Teleported")
    local plyr = game.Players.LocalPlayer.Character
local Top = game:GetService("Workspace").TowerPosition.section12

plyr.HumanoidRootPart.CFrame = Top.CFrame
end)
Section:NewButton("Infinite Yield", "ButtonInfo", function()
    print("Admin loaded")
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local Credits = Window:NewTab("Credits")
local Section = Credits:NewSection("Credits: Tink")
Section:NewKeybind("Toggle UI", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
