local LP = game.Players.LocalPlayer
local LPC = LP.Character
local Pos = LPC.HumanoidRootPart.CFrame

LPC:WaitForChild("Humanoid").Health = 0
require(game.Players.LocalPlayer.PlayerScripts.ChatScript.ChatMain).MessagePosted:fire("-re")
require(game.Players.LocalPlayer.PlayerScripts.ChatScript.ChatMain).MessagePosted:fire("-noclip")

spawn(function()
    while wait() do
        local LP = game.Players.LocalPlayer
        local LPC = LP.Character

        if game.Players.LocalPlayer.Backpack:FindFirstChild("Foil") then
            game.Players.LocalPlayer.Backpack.Foil.Parent = LPC
        end
    end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(Character)
    Character:WaitForChild("Humanoid").Died:Connect(function()
        require(game.Players.LocalPlayer.PlayerScripts.ChatScript.ChatMain).MessagePosted:fire("-re")
        require(game.Players.LocalPlayer.PlayerScripts.ChatScript.ChatMain).MessagePosted:fire("-noclip")
    end)
end)

game:GetService("Workspace").TotallyNotAChairLOL["weird grass"].Touched:Connect(function(Player)
    local TargetName = nil
    
    if string.find(Player.Name, "Leg") then
        TargetName = Player.Parent.Name
    elseif string.find(Player.Name, "Handle") then
        TargetName = Player.Parent.Parent.Parent.Parent.Name
    end
    
    if TargetName == "Game" then
        --Nothing
    else
        local LP = game.Players.LocalPlayer
        local LPC = LP.Character

        LPC.HumanoidRootPart.CFrame = game.Players[TargetName].Character.HumanoidRootPart.CFrame
    end
end)
