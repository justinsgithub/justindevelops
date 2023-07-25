type("Hello world")--> string

page = [[
<html>
<head>
<title>An HTML Page</title>
</head>
<body>
<a href="http://www.lua.org">Lua</a>
</body>
</html>
]]

page_with_bracks = [==[
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
