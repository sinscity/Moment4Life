local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("MARAJ | Every Witch Way", "GrapeTheme")

local Tab = Window:NewTab("Selection")

local Section = Tab:NewSection("MUST OWN CHARACTER TO SPAWN")

Section:NewButton("Andi", "Spawns as character", function()
    print("spawned as character")
    local args = {
    [1] = "Andi",
}

game:GetService("ReplicatedStorage").CharacterSpawn:FireServer(unpack(args))
end)

Section:NewButton("Emma Alonso", "Spawns as character", function()
    print("spawned as character")
    local args = {
    [1] = "Emma Alonso",
}

game:GetService("ReplicatedStorage").CharacterSpawn:FireServer(unpack(args))
end)

Section:NewButton("Mia", "Spawns as character", function()
    print("spawned as character")
    local args = {
    [1] = "Mia",
}

game:GetService("ReplicatedStorage").CharacterSpawn:FireServer(unpack(args))
end)

Section:NewButton("Desdemona", "Spawns as character", function()
    print("spawned as character")
    local args = {
    [1] = "Desdemona",
}

game:GetService("ReplicatedStorage").CharacterSpawn:FireServer(unpack(args))
end)

local Tab2 = Window:NewTab("Combat")

local Section = Tab2:NewSection("Combats")

Section:NewToggle("Instant Kill", "Keybind E", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Section:NewButton("Kill All", "Click Once", function()
    print("Killed all")
local Player = game.Players.LocalPlayer


local IgnoreList = {
    Player.Name, -- it'll catch your user automatically like this 
    "", -- Type your friend's users in the quote | Example: "JeansKFC"
    ""
}


for _,v in pairs(game.Players:GetPlayers()) do
if table.find(IgnoreList, v.Name) then 
   
else
    game:GetService("ReplicatedStorage").LifeDrainEvent:FireServer(v.Character)

end
end
end)

Section:NewButton("Lift All", "Click once", function()
    print("done")
    local Player = game.Players.LocalPlayer


local IgnoreList = {
    Player.Name, -- it'll catch your user automatically like this 
    "", -- Type your friend's users in the quote | Example: "JeansKFC"
    ""
}


for _,v in pairs(game.Players:GetPlayers()) do
if table.find(IgnoreList, v.Name) then 
   
else
    game:GetService("ReplicatedStorage").TeleLiftEvent:FireServer(v.Character)

end
end
end)

Section:NewButton("Fire All Spell", "ButtonInfo", function()
    print("Clicked")
        local Player = game.Players.LocalPlayer


local IgnoreList = {
    Player.Name, -- it'll catch your user automatically like this 
    "", -- Type your friend's users in the quote | Example: "JeansKFC"
    ""
}


for _,v in pairs(game.Players:GetPlayers()) do
if table.find(IgnoreList, v.Name) then 
   
else
    game:GetService("ReplicatedStorage").FireSpellEvent:FireServer(v.Character)

end
end
end)

Section:NewButton("Sleep All", "ButtonInfo", function()
    print("Clicked")
            local Player = game.Players.LocalPlayer


local IgnoreList = {
    Player.Name, -- it'll catch your user automatically like this 
    "", -- Type your friend's users in the quote | Example: "JeansKFC"
    ""
}


for _,v in pairs(game.Players:GetPlayers()) do
if table.find(IgnoreList, v.Name) then 
   
else
    game:GetService("ReplicatedStorage").SleepSpellEvent:FireServer(v.Character)

end
end
end)

Section:NewButton("Channel All", "ButtonInfo", function()
    print("Clicked")
                local Player = game.Players.LocalPlayer


local IgnoreList = {
    Player.Name, -- it'll catch your user automatically like this 
    "", -- Type your friend's users in the quote | Example: "JeansKFC"
    ""
}


for _,v in pairs(game.Players:GetPlayers()) do
if table.find(IgnoreList, v.Name) then 
   
else
    game:GetService("ReplicatedStorage").ChannelEvent:FireServer(v.Character)

end
end
end)

Section:NewButton("Banish All", "ButtonInfo", function()
    print("Clicked")
                    local Player = game.Players.LocalPlayer


local IgnoreList = {
    Player.Name, -- it'll catch your user automatically like this 
    "", -- Type your friend's users in the quote | Example: "JeansKFC"
    ""
}


for _,v in pairs(game.Players:GetPlayers()) do
if table.find(IgnoreList, v.Name) then 
   
else
    game:GetService("ReplicatedStorage").BanishSpellEvent:FireServer(v.Character)

end
end
end)

local Tab4 = Window:NewTab("Teleports")

local Section = Tab4:NewSection("Teleports")

Section:NewButton("Bridge", "ButtonInfo", function()
    print("teleported")
    local plyr = game.Players.LocalPlayer.Character
local Top = game:GetService("Workspace").Structures.Bridge.Walkway.Part

plyr.HumanoidRootPart.CFrame = Top.CFrame
end)

Section:NewButton("Random Cottage", "ButtonInfo", function()
    print("teleported")
    local plyr = game.Players.LocalPlayer.Character
local Top = game:GetService("Workspace").Structures.Cottage.Doorway.Post

plyr.HumanoidRootPart.CFrame = Top.CFrame
end)


local Tab5 = Window:NewTab("Admin")

local Section = Tab5:NewSection("Admins")

Section:NewButton("Inf Yield", "ButtonInfo", function()
    print("Clicked")
    
end)