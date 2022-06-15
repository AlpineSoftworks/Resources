--[[
    + Find Players Library
    + Finds the player you want
    + Used on Roblox, Language: Lua (specifically, RLua (Roblox Lua))
    + complex#2300 (900187302016471092)
]]--

local fp = {}

-- Returns a player in the game (Instance).
--[[
Example:
local plr = fp.FindPlayer("ROBLOX")
print(plr.Name)
]]--
fp.FindPlayer = function(string)
    for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
        if v.Name:lower():find(string:lower()) or v.DisplayName:lower():find(string:lower()) then
            return v
        end
    end
end

-- Returns the LocalPlayer (Instance).
--[[
Example:
local plr = fp.FindLocalPlayer()
print(plr.Name)
]]--
fp.FindLocalPlayer = function()
    return game:GetService("Players").LocalPlayer
end

-- Returns the player/player's name (Instance/string).
--[[
Example:
local plr = fp.FindPlayerByUserId(1)
if plr ~= nil then
    print(plr.Name)
else
    print(plr)
end
]]--
fp.FindPlayerByUserId = function(id)
    local check = game:GetService("Players"):GetPlayerByUserId(id)
    if check then
        return game:GetService("Players"):GetPlayerByUserId(id)
    else
        return game:GetService("Players"):GetNameFromUserIdAsync(id)
    end
end

-- Returns oldest/youngest player in the game & their age (Instance & integer).
--[[
Example:
local old, age = fp.FindPlayerByDistance("oldest")
print(old .. " | " .. age .. " days old")
]]--
fp.FindPlayerByAge = function(option)
    local oldestAliases = {"old", "oldest"}
    local youngestAliases = {"young", "youngest"}
    if table.find(oldestAliases, option:lower()) then
        local accountAge = 0
        local oldestPlayer
        for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
            if v.AccountAge > accountAge then
                accountAge = v.AccountAge
                oldestPlayer = v
            end
        end
        return oldestPlayer, accountAge
    end
    if table.find(youngestAliases, option:lower()) then
        local accountAge = math.huge
        local youngestPlayer
        for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
            if v.AccountAge < accountAge then
                accountAge = v.AccountAge
                youngestPlayer = v
            end
        end
        return youngestPlayer, accountAge
    end
end

-- Returns the farthest/nearest player in the game and their distance from you (Instance & integer).
--[[
Example:
local far, dist = fp.FindPlayerByDistance("far")
print(far .. " | " .. dist .. " units away")
]]--
fp.FindPlayerByDistance = function(option)
    local farthestAliases = {"far", "farthest"}
    local nearestAliases = {"near", "nearest"}
    if table.find(farthestAliases, option:lower()) then
        local distance = 0
        local farthestPlayer
        for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
            if v ~= nil and v ~= game:GetService("Players").LocalPlayer and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                local magnitude = math.round((v.Character:FindFirstChild("HumanoidRootPart").Position - game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).magnitude)
                if magnitude > distance then
                    distance = magnitude
                    farthestPlayer = v
                end
            end
        end
        return farthestPlayer, distance
    end
    if table.find(nearestAliases, option:lower()) then
        local distance = math.huge
        local nearestPlayer
        for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
            if v ~= nil and v ~= game:GetService("Players").LocalPlayer and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                local magnitude = math.round((v.Character:FindFirstChild("HumanoidRootPart").Position - game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).magnitude)
                if magnitude < distance then
                    distance = magnitude
                    nearestPlayer = v
                end
            end
        end
        return nearestPlayer, distance
    end
end

return fp
