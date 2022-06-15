function Tween(object, prop, setProp, t, ed, es)
    local styles = {}
    local directions = {}
    for _, v in ipairs(Enum.EasingStyle:GetEnumItems()) do
      table.insert(styles, v.Name)
    end
    for _, v in ipairs(Enum.EasingDirection:GetEnumItems()) do
      table.insert(directions, v.Name)
    end
    if type(t) == "nil" then
      t = 1
    else
      t = tonumber(t)
    end
    if type(es) == "nil" then
      es = "Quint"
    else
      es = es
    end
    if type(ed) == "nil" then
      ed = "Out"
    else
      ed = ed
    end
    if table.find(styles, es) == nil or table.find(directions, ed) == nil then
      es, ed = ed, es
    end
    local ti = TweenInfo.new(t, Enum.EasingStyle[es], Enum.EasingDirection[ed])
    local tw = ts:Create(object, ti, {[prop] = setProp})
    tw:Play()
end
