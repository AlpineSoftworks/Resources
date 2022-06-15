--[[
    + Tween Function
    + Tweens any object that has a property that can be tweened
    + Used on Roblox, Language: Lua (specifically, RLua (Roblox Lua))
    + complex#2300 (900187302016471092)
]]--

-- Required:
--[[
object (Instance)
property [The property of the Instance] (string)
setProperty [Value to set the property to] (https://developer.roblox.com/en-us/api-reference/function/TweenService/Create (All properties that can be tweened listed here))
]]--

-- Not required:
--[[
tweenTime
easingDirection
easingStyle
]]--

function Tween(object, property, setProperty, tweenTime, easingDirection, easingStyle)
    local styles = {}
    local directions = {}
    for _, v in ipairs(Enum.EasingStyle:GetEnumItems()) do
      table.insert(styles, v.Name)
    end
    for _, v in ipairs(Enum.EasingDirection:GetEnumItems()) do
      table.insert(directions, v.Name)
    end
    if type(tweenTime) == "nil" then
      tweenTime = 1
    else
      tweenTime = tonumber(tweenTime)
    end
    if type(easingStyle) == "nil" then
      easingStyle = "Quint"
    else
      easingStyle = easingStyle
    end
    if type(easingDirection) == "nil" then
      easingDirection = "Out"
    else
      easingDirection = easingDirection
    end
    if table.find(styles, easingStyle) == nil or table.find(directions, easingDirection) == nil then
      easingStyle, easingDirection = easingDirection, easingStyle
    end
    local tweenInfo = TweenInfo.new(tweenTime, Enum.EasingStyle[easingStyle], Enum.EasingDirection[easingDirection])
    local tween = game:GetService("TweenService"):Create(object, tweenInfo, {[property] = setProperty})
    tween:Play()
end
