-- arithmetic operators
-- + - (minus and negation) * / ^(exponent) % (modulo)
-- relational operators
-- < > <= >= == ~=
-- logical operators
-- not and or

print(not nil) --> true
print(not false) --> true
print(not 0) --> false
print(not not nil) --> false

print(false ==  nil) --> false
print(false ==  0) --> false

-- precedence
--[[
^
not # - (unary)
* / %
+ -
..
< > <= >= ~= ==
and
or
--]]


a, b, c = 0, 1
print(a, b, c) --> 0 1 nil

x = 10

local i = 1 -- local to the chunk
while i <= x do
  local x = i*2 -- local to the while body
  print(x) --> 2, 4, 6, 8, ...
  i = i + 1
end

if i > 20 then
  local x -- local to the "then" body
  x = 20
  print(x + 2) -- (would print 22 if test succeeded)
else
  print(x) --> 10 (the global one)
end

print(x) --> 10 (the global one)

do
  local a = 2
  local d = 5
  X1 = a - d -- assigned globally
end -- scope of ’a’ and ’d’ ends here

print(X1)
