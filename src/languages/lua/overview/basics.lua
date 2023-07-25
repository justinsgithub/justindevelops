local i10 = "i10"
local _ij = "_ij"
local aSomewhatLongName = "a verbose variable name"
-- stylua: ignore
local i = "i" local j = "j" -- legal, lua doesn't care about line breaks (\n)

-- BAD, underscore followed by 1 or more capital letters are reserved for Lua
local _BADVARNAME = "don't use this format"

print(i, j, i10, _ij, aSomewhatLongName, a, b, c, _BADVARNAME)

-- use _ for dummy var
local dummyvar = function(_, autoparams)
	print(autoparams)
	Global_variable = "start globals with capital letter"
end

print(Global_variable) -- nil

dummyvar("ignoring this", "using this")

print(Global_variable)

--[[ multiline comment
  print("comment trick")
--]]

local page = [[
<html>
<head>
<title>An HTML Page</title>
</head>
<body>
<a href="http://www.lua.org">Lua</a>
</body>
</html>
]]

print(page)

-- add equal signs to change delimiter
local page_with_brackets = [==[
<html>
<head>
<title>An HTML Page</title>
</head>
<body>
DOESNT END ]]
<a href="http://www.lua.org">Lua</a>
</body>
</html>
]==]

print(page_with_brackets)
