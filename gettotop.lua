local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Get To The Top") -- Creates the window

local b = w:CreateFolder("Main") -- Creates the folder(U will put here your buttons,etc)

b:DestroyGui()

b:Button("Teleport to Top",function(teleportTO)
    print("Teleported")
local plyr = game.Players.LocalPlayer.Character
local Top = game:GetService("Workspace").TowerPosition.section12

plyr.HumanoidRootPart.CFrame = Top.CFrame
end)