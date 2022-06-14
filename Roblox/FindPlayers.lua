local functions = {}

-- Returns a player (Instance).
functions.FindPlayer = function(string)
    for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
        if v.Name:lower():find(string:lower()) or v.DisplayName:lower():find(string:lower()) then
            return v
        end
    end
end

-- Returns the player/player's name (Instance/string).
functions.FindPlayerByUserId = function(id)
    local check = game:GetService("Players"):GetPlayerByUserId(id)
    if check then
        return game:GetService("Players"):GetPlayerByUserId(id)
    else
        return game:GetService("Players"):GetNameFromUserIdAsync(id)
    end
end

-- Returns oldest/youngest player in the game.
functions.FindPlayerByAge = function(option)
    local oldestAliases = {"Oldest", "oldest", "Old", "old"}
    local youngestAliases = {"Youngest", "youngest", "Young", "young"}
    if table.find(oldestAliases, option) then
        print(option)
    end
    if table.find(youngestAliases, option) then
        print(option)
    end
end
