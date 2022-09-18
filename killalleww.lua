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