# Math Library
`Written by complex#2300 (900187302016471092)`

We'll learn all of it in this order:

__Constants:__
* math.pi
* math.huge

__Random:__
* math.random
* math.randomseed

__Maximum/Minimum:__
* math.max
* math.min

__Rounding:__
* math.ceil
* math.floor
* math.round

__Absolute Value, Powers, and Square Root:__
* math.abs
* math.pow
* math.sqrt

__Exponentials and Logarithms:__
* math.exp
* math.log
* math.log10

__Degrees and Radians:__
* math.deg
* math.rad

# Constants
#### math.pi
> math.pi returns the decimal value of π, which is 3.1415926535... (and so on).
```lua
print(math.pi) -- Should return the decimal value of π.
```
#### math.huge
> math.huge returns a value greater than 2^(1024-1).
```lua
print(math.huge) -- Should return "inf" in the developer console, but the actual value returned is 2^(1024-1).
```

# Functions
## Random
### I would not use anything from here except *math.random*. For the best randomness, I suggest using the data type "[Random](https://developer.roblox.com/en-us/api-reference/datatype/Random "Random")"
#### math.random
> math.random returns a value between x and y. Without arguments, it will return a value between 0 and 1.
`Usage: math.random(x, y)`
```lua
print(math.random()) -- Should return a value between 0 and 1.
print(math.random(1, 10)) -- Should return a value between 1 and 10.
print(math.random(4)) -- Returns a value between 0 and 4, but doesn't return a value of 0 (I've tested this, but please do DM me if this is false.).
```
#### math.randomseed
> math.randomseed returns a seed value when x is given (I wouldn't use this at all, it returns nothing now).
`Usage: math.randomseed(x)`
```lua
print(math.randomseed(tick()) -- Would return a random seed value, but it now returns nothing.
``` 

## Maximum/Minimum
#### math.max
> math.max returns the highest value between x and y.
`Usage: math.max(x, y)`
```lua
print(math.max(1, 10)) -- Should return 10, as it is the higher value out of the two values given.
```
#### math.min
> math.min returns the lowest value between x and y.
`Usage: math.min(x, y)`
```lua
print(math.min(1, 10)) -- Should return 1, as it is the lower value out of the two values given.
```

## Rounding
#### math.ceil
> math.ceil returns the smallest integer larger than or equal to x.
`Usage: math.ceil(x)`
```lua
print(math.ceil(2.1)) -- Should return 3, as it is the smallest integer larger than 2.1.
print(math.ceil(2.7)) -- Should return 3, as it is the smallest integer larger than 2.7.
print(math.ceil(3)) -- Should return 3, as it is the smallest integer equal to 3.
```
#### math.floor
> math.floor returns the largest integer smaller than or equal to x.
`Usage: math.floor(x)`
```lua
print(math.ceil(2.1)) -- Should return 2, as it is the largest integer smaller than 2.1.
print(math.ceil(2.7)) -- Should return 2, as it is the largest integer smaller than 2.7.
print(math.ceil(2)) -- Should return 2, as it is the largest integer equal to 2.
```
#### math.round
> math.round returns the integer with the smallest difference between it and x.
`Usage: math.round(x)`
```lua
print(math.round(7.4)) -- Should return 7, as 7.4 is closer to 7 than 8.
print(math.round(9.6)) -- Should return 10, as 9.6 is closer to 10 than 9.
print(math.round(8)) -- Should return 8, since 8 doesn't need to be rounded.

-- math.round always rounds away from 0, so:
print(math.round(0.5)) -- This would return 1.
print(math.round(-0.5)) -- This would return -1.
print(math.round(2.5)) -- This would return 3.
print(math.round(-4.5)) -- This would return -5.
```

## Absolute Value, Powers, and Square Root
#### math.abs
> math.abs returns the absolute value of x. The absolute value of any float/integer will always be positive.
`Usage: math.abs(x)`
```lua
print(math.abs(5)) -- Should return 5, as it is the absolute value of 5.
print(math.abs(-5)) -- Should return 5, as it is the absolute value of -5.
print(math.abs(-4.35)) -- Should return 4.35, as it is the absolute value of -4.35.
```
#### math.pow
> math.pow returns x to the power of y.
`Usage: math.pow(x, y)`
```lua
print(math.pow(5, 3)) -- Should return 125.
```
#### math.sqrt
> math.sqrt returns the square root of x (math.pow(x, 0.5) is the equivalent to this function).
`Usage: math.sqrt(x)`
```lua
print(math.sqrt(144)) -- Should return 12.
```

## Exponentials and Logarithms
#### math.exp
> math.exp returns the decimal value of e (Euler's number, 2.7182818284... (and so on)) to the power of x.
`Usage: math.exp(x)`
```lua
print(math.exp(3)) -- Should return 20.085536923187668.
```
#### math.log
> math.log returns the logarithm of x to the given base or e (Euler's number) if no value is given.
`Usage: math.log(x, base)`
```lua
print(math.log(3, 2)) -- Should return 1.584962500721156.
print(math.log(5)) -- Should return 1.6094379124341003.
```
#### math.log10
> math.log returns the logarithm of the x given to the base of 10.
`Usage: math.log10(x)`
```lua
print(math.log10(4)) -- Should return 0.6020599913279624.
```

## Degrees and Radians
#### math.deg
> math.deg returns the angle x (given in radians) in degrees.
`Usage: math.deg(x)`
```lua
print(math.deg(math.pi)) -- Should return a value close or equivalent to 180 degrees.
```
#### math.rad
> math.rad returns the angle x (given in degrees) in radians.
`Usage: math.rad(x)`
```lua
print(math.rad(90)) -- Should return a value close or equivalent to π/2 radians.
```
