--[[
    + Find Players Library
    + Finds the player you want
    + Used on Roblox, Language: Lua (specifically, RLua (Roblox Lua))
    + complex#2300 (900187302016471092)
]]--

local fp = {}

-- Returns a player in the game (Instance).
fp.FindPlayer = function(string)
    for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
        if v.Name:lower():find(string:lower()) or v.DisplayName:lower():find(string:lower()) then
            return v
        end
    end
end

-- Returns the player/player's name (Instance/string).
fp.FindPlayerByUserId = function(id)
    local check = game:GetService("Players"):GetPlayerByUserId(id)
    if check then
        return game:GetService("Players"):GetPlayerByUserId(id)
    else
        return game:GetService("Players"):GetNameFromUserIdAsync(id)
    end
end

-- Returns oldest/youngest player in the game (Instance).
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
        return oldestPlayer
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
        return youngestPlayer
    end
end

-- Returns the farthest/nearest player in the game (Instance).
fp.FindPlayerByDistance = function(player, option)
    local farthestAliases = {"far", "farthest"}
    local nearestAliases = {"near", "nearest"}
    if table.find(farthestAliases, option:lower()) then
        local distance = 0
        local farthestPlayer
        for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
            local magnitude = (v.Character:FindFirstChild("HumanoidRootPart").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude
            if magnitude > distance then
                distance = magnitude
                farthestPlayer = v
            end
        end
        return farthestPlayer
    end
    if table.find(nearestAliases, option:lower()) then
        local distance = math.huge
        local nearestPlayer
        for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
            local magnitude = (v.Character:FindFirstChild("HumanoidRootPart").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude
            if magnitude < distance then
                distance = magnitude
                nearestPlayer = v
            end
        end
        return nearestPlayer
    end
end

return fp
