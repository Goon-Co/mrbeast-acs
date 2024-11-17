print("MrBeast Combat Framework")
warn("(C) Goon & Co, 2024; licensed under CC0 1.0 Universal")

local LogService = game:GetService("LogService")
local Yar1782109237890123129838791328971328971237869789123 = false -- Skid protection

LogService.MessageOut:Connect(function(msg)
    if msg == "(C) Goon & Co, 2024; licensed under CC0 1.0 Universal" then
        Yar1782109237890123129838791328971328971237869789123 = true
    end
end)

game.Loaded:Connect(function()
    wait(1)
    if Yar1782109237890123129838791328971328971237869789123 ~= true then
        while true do
            task.wait(1)
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                v:Kick("This game is using a skidded or copyright removed system of MCF, therefore you have been removed from the game.")
             end
        end
    end
end)