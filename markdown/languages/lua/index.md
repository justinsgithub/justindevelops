# Lua Lang

[lua.org](https://www.lua.org/about.html)

## Who

- designed, implemented, and maintained by a team at the Pontifical Catholic University of Rio de Janeiro in Brazil (PUC-Rio)

- "Lua" means "Moon" in Portuguese, please respect the capitalization, "LUA" is incorrect

## What

- dynamically typed scripting language, similar to python and ruby

- much faster than the majority of scripting languages, partly because it is a very small language

- made to be used with other languages or gluing languages and systems together (neovim, games... such as WOW and Angry Birds)

- supports procedural programming, object-oriented programming, functional programming, data-driven programming, and data description

## When 

- Created in 1993
- latest release in 2020, 5.4
- 5.1, neovim version, in 2006

## Where

- Runs every where C runs, which is almost all platforms used today

## Why 

- great for embedded systems and integrating with other languages or inside applications, such as neovim

- proven to be the fastest scripting language and even faster with LuaJIT "Just In Time" compiler

- Lua 5.4 tarball is 355K compressed and 1.4MB uncompressed

- MIT license

## Install

- use neovim builtin interpreter `nvim -l my-script.lua` (my preference)
 
- example script for linux to build from source

<div class="termy">

```sh

{! languages/lua/install.sh !}
```
</div>

- instructions to build from source on windows [ http://lua-users.org/wiki/BuildingLuaInWindowsForNewbies ](http://lua-users.org/wiki/BuildingLuaInWindowsForNewbies)
- install with package manager

<div class="termy">

```sh

sudo apt install lua5.1

```
</div>

- use the live demo online [https://www.lua.org/cgi-bin/demo](https://www.lua.org/cgi-bin/demo)

## Learn

- reference manual [https://www.lua.org/manual/5.1](https://www.lua.org/manual/5.1)

- progamming in Lua book, 1st edition, is free online [https://www.lua.org/pil/contents.html](https://www.lua.org/pil/contents.html) , it covers Lua 5.0

## Basics

You can Lua code with the Lua interpreter after installing Lua, or by using nvim with the `-l` option

```sh
lua my-script.lua

# or

nvim -l my-script.lua

# can also run interpreter after running script with -i (must have Lua installed)
lua -i my-script.lua
```

When running interactive interpreter, you can can rerun a file after making changes to it

```lua
dofile('my-script.lua')
```

- each piece of code Lua runs is known as a "chunk", which is basically any file that is loaded or ran in the interpreter

- reserved words

```lua
and break do else elseif end false for function if in local nil not or repeat return then true until while
```

- identifiers in Lua can be any string of letters, digits, and underscores, not beginning with a digit

```lua
{! languages/lua/overview/basics.lua !}
```

### Types

```lua
{! languages/lua/overview/types.lua !}
```

### Tables

- the only data-structuring machanism in Lua

- used to represent other data-structures like lists, dicts, objs, modules, packages

- avoid using lists with empty indices

```lua
{! languages/lua/overview/table.lua !}
```

### Common Examples

```lua
{! languages/lua/overview/examples.lua !}
```
