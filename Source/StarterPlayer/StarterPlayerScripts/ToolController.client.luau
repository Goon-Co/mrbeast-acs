-- MrBeast Combat Framework; Tool Controller
-- (C) Goon & Co, 2024; licensed under CC0 1.0 Universal

-- ROJO: Do not use two-way sync, do not use RBXScriptSignal Types
local Player = game.Players.LocalPlayer -- Rarely nil, should be fine
local CurrentCharacter: Model = Player.Character or Player.CharacterAdded:Wait() -- Safety

CurrentCharacter.ChildAdded:Connect(function(Object)
    if Object.ClassName == "Tool" then
        local Tool: Tool = Object
        local HasMCF = Tool:HasTag("MCFWeapon")
        if HasMCF then
        print("[MCF] ToolController: Found new weapon "..Tool.Name)
        end
    end
end)

print("[MCF] ToolController successfully initalized!")