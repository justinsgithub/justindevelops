# Lua Basics

## Getting Started

- run file

```sh
lua file.lua
```
- run interpreter

```sh
lua file.lua
```

- run interpreter after running file

```sh
lua -i file.lua
```

- ```dofile('test.lua')``` to reload file after you make changes and run functions in it to test

### Chunks

- Each piece of code that Lua executes, such as a file (mostly a file) or a single line in interactive mode, is called a chunk. 
- A chunk is simply a sequence of commands (or statements)
- Lua needs no separator between consecutive statements, but you can use a semicolon if you wish.
- Lua does not recognize Line breaks

```lua
{! languages/lua/getting-started/chunks.lua !}
```

- ```dofile('test.lua')```

### Lexical Conventions

- Identifiers in Lua can be any string of letters, digits, and underscores, not beginning with a digit

```lua
i j i10 _ij aSomewhatLongName _INPUT
```
- avoid _NAME as they are special identifiers used by Lua

- reserved words


```lua
and break do else elseif end false for function if in local nil not or repeat return then true until while
```
- comments, the block trick

```lua
{! languages/lua/getting-started/comments.lua !}
```

### Global Variables

- Global variables do not need declarations, just assign a value to it
- you just get the special value nil as the result of accessing a non existeng global var
- assign nil to delete a global var

```lua
{! languages/lua/getting-started/global-vars.lua !}
```

### The Stand-Alone Interpreter


- first line with comment is ignored like other script interpreters (bash zsh python ruby node)

```lua
{! languages/lua/getting-started/interpreter.lua !}
```



- command syntax
```sh
lua -e "print(math.sin(12))" --> -0.53657291800043
```

- -e option will evaluate expression

```sh
lua -e "print(math.sin(12))" --> -0.53657291800043
```

- -l option loads a library

```sh
lua -i -l a -e "x = 10"
```

- lua gets args from global var table arg

```sh
lua -e "myname=justin" greet.lua hello there
```

```
arg[-3] = "lua"
arg[-2] = "-e"
arg[-1] = "myname=justin"
arg[0] = "greet.lua"
arg[1] = "hello"
arg[2] = "there"
```

- Lua is a dynamically typed language, no type definitions
- basic types are nil, boolean, number, string, userdata, function, thread, and table. 
- The type function gives the type name of a given value:
- type function returns a string
- brackets for long strings
- special brackets for strings and comments with brackets inside

```lua
{! languages/lua/getting-started/multi-line-strings.lua !}
```

- converts strings to nums and nums to strings with concat syntax ..
- tonumber and tostring is better
- length of string with # (length operator)

### Tables

- the only data-structuring machanism in Lua
- used to represent other data-structures like lists, dicts, objs, modules, packages
- avoid using lists with empty indices

```lua
{! languages/lua/getting-started/table.lua !}
```

### Expressions

- supports the common arithmetic operators + - (minus and negation) * / ^(exponent) % (modulo)
- relational operators are < > <= >= == ~=
- logical operators = not and or
- strings are immutable
- binary operators are left associative

```lua
{! languages/lua/getting-started/expressions.lua !}
```

### Statements

- use local keyword to scope a var to a block
- a block is a file, body of control flow or body of function


```lua
{! languages/lua/getting-started/expressions.lua !}
```

