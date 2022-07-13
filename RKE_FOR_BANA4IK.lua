local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local UserName = "tuykgfhmut"
local Window = Library.CreateLib("KRE", "RJTheme7")
local Active = false
local x = 22
local j = 50--от 1 до 8
local y = false
local SpeedHackEnable = false
local QuestDioParking30lvl = 
{
	["NPC"] = "Dopey", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue3"
}
local ActiveQuestCorruptPolice10 = 
{
	["NPC"] = "Deputy Bertrude", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue2"
}
function ActiveEsp(On)
	while On do
	print("ok")
		while wait(0.5) do
		for i, childrik in ipairs(workspace:GetDescendants()) do
			if childrik:FindFirstChild("Humanoid") then
				if not childrik:FindFirstChild("EspBox") then
					if childrik ~= game.Players.LocalPlayer.Character then
						local esp = Instance.new("BoxHandleAdornment",childrik)
						esp.Adornee = childrik
						esp.ZIndex = 0
						esp.Size = Vector3.new(4, 5, 1)
						esp.Transparency = 1
						esp.Color3 = Color3.fromRGB(255,48,48)
						esp.AlwaysOnTop = true
						esp.Name = "EspBox"
					end
				end
			end
		end
	end
		end
end
local QuestAlphaTug15lvl = 
{
	["NPC"] = "Lion Abbacho's Partner", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue6"
}
local AutoTask20 = 
{
	["NPC"] = "Dracula", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue4"
}
local WorthinessUp = 
{
	["Skill"] = "Worthiness II", 
	["SkillTreeType"] = "Character"
}
local AutoSell= 
{
	["NPC"] = "Merchant", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue5"
}
local PureRoka = 
{
	["NPC"] = "Pure Rokakaka", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue2"
}
local UseRoka = 
{
	["NPC"] = "Rokakaka", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue2"
}
local UseArrow = 
{
	["NPC"] = "Mysterious Arrow", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue2"
}
local FastArcade = 
{
	["NPC"] = "Item Machine", 
	["Option"] = "Option1", 
	["Dialogue"] = "Dialogue1"
}
-- Секция
local Tab = Window:NewTab("Ваня в морте 1к душ дают")
local Section = Tab:NewSection("Ваня в морте 1к душ даю")
Section:NewButton("Fast Arcade", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteEvent:FireServer("EndDialogue", FastArcade)
end)
Section:NewButton("Use Roka", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteEvent:FireServer("EndDialogue", UseRoka)
end)
Section:NewButton("Use Arrow", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteEvent:FireServer("EndDialogue", UseArrow)
end)
Section:NewButton("Use Pure Roka", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteEvent:FireServer("EndDialogue", PureRoka)
end)
Section:NewButton("Sell holding item", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteEvent:FireServer("EndDialogue", AutoSell)
end)
Section:NewButton("Worthiness Up to 2", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteFunction:InvokeServer("LearnSkill", WorthinessUp)
end)
local Section = Tab:NewSection("Ваня гей")
Section:NewButton("Drop Roka", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteEvent:FireServer("DropItem", game:GetService("Players").tuykgfhmut.Backpack.Rokakaka)
end)
Section:NewButton("Drop Arrow", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteEvent:FireServer("DropItem", game:GetService("Players").tuykgfhmut.Backpack["Mysterious Arrow"])
end)
local Tab = Window:NewTab("Ваня в морте 1к душ даю")
-- Подсекция
local Section = Tab:NewSection("Ваня в морте 1к душ даю")
-- Слайдер
Section:NewSlider("WalkSpeed", "Info", 500, 25, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
	x = s
end)
Section:NewSlider("JumpPower", "Info", 500, 25, function(o) -- 500 (Макс. значение) | 0 (Мин. значение)
	j = o
end)
local Tab = Window:NewTab("Ваня в морте 1к душ даю")
-- Подсекция
local Section = Tab:NewSection("Ваня в морте 1к душ даю")
Section:NewButton("20lvlDraculaQuest", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteEvent:FireServer("EndDialogue", AutoTask20)
end)
Section:NewButton("QuestCorruptPolice10lvl", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteEvent:FireServer("EndDialogue", ActiveQuestCorruptPolice10)
end)
Section:NewButton("QuestAlphaTug15lvl", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteEvent:FireServer("EndDialogue", QuestAlphaTug15lvl)
end)
Section:NewButton("QuestDio30Parkinglvl", "", function()
    game:GetService("Workspace").Living.tuykgfhmut.RemoteEvent:FireServer("EndDialogue", QuestDioParking30lvl)
end)
local Tab = Window:NewTab("Ваня в морте 1к душ даю")
local Section = Tab:NewSection("Ваня в морте 1к душ даю")
Section:NewToggle("Ваня гей", "ToggleInfo", function(state)
    if state then
        Active = true
    else
        Active = false
    end
end)

while game:GetService("RunService").RenderStepped:wait() do
	ActiveEsp(Active)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = x
end


