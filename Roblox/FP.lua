local functions = {}

-- Returns a player (Instance)
functions.FindPlayer = function(string)
    for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
        if v.Name:lower():find(string:lower()) or v.DisplayName:lower():find(string:lower()) then
            return v
        end
    end
end

-- Returns either the player or the player's name (Instance or String)
functions.FindPlayerByUserId = function(id)
    local check = game:GetService("Players"):GetPlayerByUserId(id)
    if check then
        return game:GetService("Players"):GetPlayerByUserId(id)
    else
        return game:GetService("Players"):GetNameFromUserIdAsync(id)
    end
end

functions.FindPlayerByName = function(string)
    print(string)
end
