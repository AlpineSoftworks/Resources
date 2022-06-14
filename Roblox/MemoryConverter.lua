--[[
  Name: MemoryConverter.lua
  Description: Converts Roblox memory addresses to bits, can be useful for checking if there's a high memory usage.
  More Desc: You just need a bit of your brain to use it correctly.
]]

-- Source
local sizes = {"MB", "GB", "TB" }

local Stats = game:GetService("Stats")
local Memory = Stats:GetTotalMemoryUsageMb()

local function convertBytes(size)
    local i = 1
    while size > 1024 do
        size = size / 1024
        i = i + 1
    end
    return string.format("%.2f %s", size, sizes[i])
end

-- usage
if convertBytes(Memory) > maxInt .. "MB" then
  -- code!!11!!111!!
end
