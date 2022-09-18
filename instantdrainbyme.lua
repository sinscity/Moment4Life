local function getPlayer()
local userInput = game:GetService("UserInputService")
local cam = workspace.CurrentCamera
local mousePos = userInput:GetMouseLocation()
local mouseRay = cam:ViewportPointToRay(mousePos.X, mousePos.Y)
players = {}
for _, x in next, game:GetService('Players'):GetPlayers() do
players[#players + 1] = x.Character
end
local raycastParams = RaycastParams.new()
raycastParams.FilterType = Enum.RaycastFilterType.Whitelist
raycastParams.FilterDescendantsInstances = players
raycastParams.IgnoreWater = true
local raycastResult = workspace:Raycast(mouseRay.Origin, mouseRay.Direction * 1000, raycastParams)
if raycastResult then
for _, x in next, game:GetService('Players'):GetPlayers() do
if not raycastResult.Instance:IsDescendantOf(x.Character) then
continue 
end
return x
end
end
return false
end
                                
local function Set(list)
local set = {}
for _, l in ipairs(list) do
if l then
set[l] = true
end
end
return set
end
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
if key == "e" then
local player = getPlayer()
if player then

local args = {
    [1] = player.Character
}

game:GetService("ReplicatedStorage").LifeDrainEvent:FireServer(unpack(args))



end
end
end)