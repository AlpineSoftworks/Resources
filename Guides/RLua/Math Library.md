# Math Library
## Written by complex#2300 (900187302016471092)

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

# Constants
#### math.pi
> math.pi returns the decimal value of π, which is 3.1415926535... (and so on).
```lua
print(math.pi) -- Should return the decimal value of π.
```
#### math.huge
> math.huge returns a value greater than 2^(1024-1).
```lua
print(math.pi) -- Should return "inf" in the developer console, but the actual value returned is 2^(1024-1).
```

# Functions
## Random
### I would not use anything from here except *math.random*. For the best randomness, I suggest using the data type "[Random](https://developer.roblox.com/en-us/api-reference/datatype/Random "Random")"
#### math.random
> math.random returns a value between the first float/integer value and second float/integer value. Without arguments, it will return a value between 0 and 1.
```lua
print(math.random()) -- Should return a value between 0 and 1.
print(math.random(1, 10)) -- Should return a value between 1 and 10.
print(math.random(4)) -- Returns a value between 0 and 4, but doesn't return a value of 0 (I've tested this, but please do DM me if this is false.).
```
#### math.randomseed
> math.randomseed returns a seed value when an float/integer value is given (I wouldn't use this at all, it returns nothing now).
```lua
print(math.randomseed(tick()) -- Would return a random seed value, but it now returns nothing.
``` 

## Maximum/Minimum
#### math.max
> math.max returns the highest value between the first float/integer value and second float/integer value.
```lua
print(math.max(1, 10)) -- Should return 10, as it is the higher value out of the two values given.
```
#### math.min
> math.min returns the lowest value between the first float/integer value and second float/integer value.
```lua
print(math.min(1, 10)) -- Should return 1, as it is the lower value out of the two values given.
```

## Rounding
#### math.ceil
> math.ceil returns the smallest integer larger than or equal to the float/integer value given.
```lua
print(math.ceil(2.1)) -- Should return 3, as it is the smallest integer larger than 2.1.
print(math.ceil(2.7)) -- Should return 3, as it is the smallest integer larger than 2.7.
print(math.ceil(3)) -- Should return 3, as it is the smallest integer equal to 3.
```
#### math.floor
> math.ceil returns the largest integer smaller than or equal to the float/integer value given.
```lua
print(math.ceil(2.1)) -- Should return 2, as it is the largest integer smaller than 2.1.
print(math.ceil(2.7)) -- Should return 2, as it is the largest integer smaller than 2.7.
print(math.ceil(2)) -- Should return 2, as it is the largest integer equal to 2.
```

## Absolute Value, Powers, and Square Root
#### math.abs
> math.abs returns the absolute value of the float/integer given. The absolute value of any float/integer will always be positive.
```lua
print(math.abs(5)) -- Should return 5, as it is the absolute value of 5.
print(math.abs(-5)) -- Should return 5, as it is the absolute value of 5.
```
#### math.pow
> math.abs returns the first float/integer value given to the power of the second float/integer value given.
```lua
print(math.pow(5, 3)) -- Should return 125.
```
#### math.sqrt
> math.sqrt returns the square root of the first float/integer value given (math.pow(x, 0.5) is the equivalent to this function).
```lua
print(math.sqrt(144)) -- Should return 12.
```
