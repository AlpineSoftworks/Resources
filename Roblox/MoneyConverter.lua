--[[
  Name: MoneyConverter.lua
  Description: Converts a string into a money format, It's a bit useless but everybody got their own uses.
]]

local function formatNumber(number)
    local number = tonumber(number)
    local left, num, right = string.match(number, "^([^%d]*%d)(%d*)(.-)$")
    local k
    repeat
        num, k = num:gsub("(%d+)(%d%d%d)", "%1,%2")
    until k == 0
    return left .. num .. right
end

print(formatNumber(123456789.12345678))
--                 ^^^^^^^^^^^^^^^^^^
--                 NUMBER W/ DECIMALS
