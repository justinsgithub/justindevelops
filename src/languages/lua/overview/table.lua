local mytable = {}

mytable["a"] = 'this'
mytable.b = 'that'

print(mytable)

local mylist = {}

for i=1,10 do
  mylist[i] = tostring(i)
end

local mylist_length = #mylist
print(mylist_length) --> 10

local table_len = {}
table_len[10] = "ten"
table_len[11] = "ten"
print(#table_len) -- returns 0 because assumes any nil index indicates end of array

-- not 0 indexed
local array_constructor = {"1", "2", "3", "4", "5", "6"}
print(array_constructor)

local record_table = {a = "a", b="b"}
record_table[1] = "one"

print(record_table[1])
