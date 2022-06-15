# RLua (Roblox Lua) Guide
### You must have simple knowledge about coding in general / a decent brain to understand what's going on

# Basic Learning
### Made by https://github.com/kuraise Discord ID: 877231123476906035
Hello, welcome to the beginning of the Lua Guide, here you will learn the basics of Roblox Lua, now let's get started:

WARNING: THIS DOES NOT GO IN-DEPTH IN LUA, IT'S JUST THE BASIC LEARNING OF LUA.

## Variables
Of course everything needs a value so in Lua you use `local` to make a variable and `_G` to make a **global** variable, **global** variables can be passed through other scripts without having to give it a value already.
```lua
local wow = true

_G.foo = false
```

## Calling Variables
Well you're just not going to keep a value there sitting for no reason, so you have to use it for a reason:
```lua
local wow = true

_G.foo = false

print('wow = ', wow) -- true
print('foo = ', foo) -- false
```
This just sends the values of both `wow` and `foo` to the console and 'prints' them into the console.

## If statements
`If statements` is when you can make conditions, it's like: if I ate and I'm full then do exercise else if I ate and I'm not full then eat more

in `elseif`s statements they won't be used if the main if statement is skipped.

### If statements: about `and`
```lua
local hungry = true
local ate = false

if hungry and not ate then
    print('Give me food please.')
    hungry = not hungry
    ate = not ate
elseif not hungry and ate then
    print('Damn I need to do exercise')
    hungry = not hungry
    ate = not ate
end
```
the code above may seem confusing and it's true for a beginner but here's some "vocabulary"

* `not in if statement` => checks if the value is false
* `single variable in if statement` => checks if it's true
* `value = not value` => reverses the current value (true to false or false to true)
* `elseif` => switch statement, used if there's any code you want to do if something else happens compared to the current code
* `and` => used to check if another value wanted is correct (helpful to prevent stacking the if statements) 

The code below shown means the same thing but it uses a more simplimatic / familiar way of coding:
```lua
local hungry = true
local ate = false
local hi = nil -- nil means nothing

if hungry == true and ate == false then
    print('Give me food please.')
    hungry = false
    ate = true
else
    print('Damn I need to do exercise.')
    hungry = true
    ate = false
end
```
### If statements: about `or`
```lua
local yes = true
local no = false

if yes or no then -- code going to happen because yes is true
    print('LOL')
elseif not yes or not no then -- code going to happen if the statement above was skipped
    print('Not funny.')
end
```
In `or` only **1** statement shown has to be correct, unlike `and` all the statements must be correct.

## Tables
In this section you will learn things like tables / arrays, things commonly used in coding.
```lua
local a = {
    Hi = true, -- comma required after value if you want to add a value below it.
    Bye = false,
    No = {
        Yes = true
    }
}

for i,v in pairs(a) do -- a for loop is going inside of the values in the table of "a" and "i,v" have the values / names of the tables
    print('Names ' .. i) -- sends the initial (meaning only the names inside the first table not the values) names of the values to the console
    --             ^^
    --       Only with strings
    print('Values ', v) -- sends **all** the values in the table
    -- one is going to show as a table meaning one value is a table inside the main table.
    print('New Names ' .. i)
end
```
### Tables, it's functions
There's a table for tables, nice, with this table we can controls tables. Riddleish
```lua
local a = {"White", "Blue", "Green"}
print(a[1]) -- we're going inside the table and looking at the first value, this first value in this case is "White"
table.insert(a, "Ugly") -- insert = add to table.
print(a[4]) -- there was 3 values inside the table, now that we're adding a value to the table we have 4 total values and we're trying to get the value of the 4th

table.remove(a, 4) -- removes the 4th value in the table, in this case "Ugly"
print(a[4]) -- nil (nothing)

table.remove(a) -- removes all the values inside the table.
print(a[3]) -- nil (nothing) the table has no values.
```

## Math Library
~~Soon, I'm sleepy.~~ No, I'm helping out here. - complex#2300 (900187302016471092)

We'll learn all function in this order:
* math.pi
* math.huge

* math.random
* math.randomseed

* math.max
* math.min

* math.ceil
* math.floor
* math.round

* math.abs
* math.pow
* math.sqrt

* math.exp
* math.log
* math.log10

* math.deg
* math.rad

* math.sin
* math.cos
* math.tan

* math.asin
* math.acos
* math.atan
* math.atan2

* math.sinh
* math.cosh
* math.tanh

* math.clamp
* math.fmod
* math.frexp
* math.ldexp
* math.modf
* math.noise
* math.sign

### math.pi
> math.pi returns the decimal value of π, which is 3.1415926535... (and so on)
```lua
print(math.pi) -- Should return the decimal value of π.
```
### math.huge
> math.huge returns the 
