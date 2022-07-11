local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("KRE", "RJTheme7")
local x = 22
local j = 50--от 1 до 8
local y = false
local SpeedHackEnable = false
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
local Tab = Window:NewTab("FastAction")
local Section = Tab:NewSection("FastMode")
Section:NewButton("Fast Arcade", "", function()
    game:GetService("Workspace").Living.efwfwfwefdsf4rw.RemoteEvent:FireServer("EndDialogue", FastArcade)
end)
Section:NewButton("Use Roka", "", function()
    game:GetService("Workspace").Living.efwfwfwefdsf4rw.RemoteEvent:FireServer("EndDialogue", UseRoka)
end)
Section:NewButton("Use Arrow", "", function()
    game:GetService("Workspace").Living.efwfwfwefdsf4rw.RemoteEvent:FireServer("EndDialogue", UseArrow)
end)
Section:NewButton("Use Pure Roka", "", function()
    game:GetService("Workspace").Living.efwfwfwefdsf4rw.RemoteEvent:FireServer("EndDialogue", PureRoka)
end)
Section:NewButton("Sell holding item", "", function()
    game:GetService("Workspace").Living.efwfwfwefdsf4rw.RemoteEvent:FireServer("EndDialogue", AutoSell)
end)
Section:NewButton("Worthiness Up to 2", "", function()
    game:GetService("Workspace").Living.efwfwfwefdsf4rw.RemoteFunction:InvokeServer("LearnSkill", WorthinessUp)
end)
local Tab = Window:NewTab("Teleport Menu")
-- Подсекция
local Section = Tab:NewSection("Section Name")
-- Заголовок
Section:NewLabel("LabelText")
Section:NewButton("EnableSpeedHack", SpeedHackEnable, function()
    
end)

-- Переключатель
Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-- Слайдер
Section:NewSlider("WalkSpeed", "Info", 500, 25, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
	x = s
end)
Section:NewSlider("JumpPower", "Info", 500, 25, function(o) -- 500 (Макс. значение) | 0 (Мин. значение)
	j = o
end)

-- Текст Бокс
Section:NewTextBox("Speed", "Speed", function(txt)
	
end)

-- Бинд на клавиши
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)

-- Дропдаун
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)

while game:GetService("RunService").RenderStepped:wait() do
game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = x
end
