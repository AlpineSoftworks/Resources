--[[
  Name: MoneyConverter.lua
  Description: Converts a string into a money format, It's a bit useless but everybody got their own uses.
]]

local function formatNumber(number)
    local number = tonumber(number)
    local left, num, right = string.match(number, "^([^%d]*%d)(%d*)(.-)$")
    return left .. (num:reverse():gsub("(%d%d%d)", "%1,"):reverse()) .. right
end

print(formatNumber(123456789.59458957))
--                 ^^^^^^^^^^^^^^^^^^
--                 NUMBER W/ DECIMALS
