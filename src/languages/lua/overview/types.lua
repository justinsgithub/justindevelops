-- thread and userdata are also types
print(type("Hello world")) --> string
print(type(10.4 * 3)) --> number
print(type(print)) --> function
print(type(type)) --> function
print(type(true)) --> boolean
print(type(nil)) --> nil
print(type(type("Hello World"))) --> string
print(type({}))

function Myfunc(param)
	print("your arg is " .. param)
end
