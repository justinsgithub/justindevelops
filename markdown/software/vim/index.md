# Vim

!!! info

    This is was written using version 8.2, there were some major changes in the most recent version 9, mostly concerning vimscript

    99% of concepts should still apply no matter the version you are using

## Install

Go to [https://www.vim.org/download.php](https://www.vim.org/download.php) to see available installation options

Should come with every Linux distribution, however it might not be the latest version

You also may need to install additional packages to make the system clipboard work (such as vim-gtk3)

<div class="termy">

```sh

$ sudo apt install vim vim-gtk3
```
</div>

Use homebrew for a convenient way to get the most recent version (9) [https://formulae.brew.sh/formula/vim](https://formulae.brew.sh/formula/vim)

<div class="termy">

```sh

$ brew install vim
```
</div>

## Help

Get help

```vim

:help
```

Open help in new tab

```vim

:tabnew %
```

Switch tabs and close help window in the previous tab, switch back to help tab
```vim

gt
:close
gt
```

Jump to a specific subject (highlighted blue)

```vim
" move cursor to highlighted subject
CTRL-]
```

View available help topics for a word or part of word (can also use <Tab> to cycle through auto-complete)

```vim

:help opt
CTRL-d

" OR
:help opt
<Tab>
```

Help with normal mode command

```vim

" syntax
:help {COMMAND}

" example
:help x
```

Help with visual mode command

```vim

" syntax, prepend with v_
:help v_{COMMAND}

" example
:help v_u
```

Help with insert mode command

```vim

" syntax, prepend with i_
:help i_{COMMAND}

" example
:help i_<Esc>
```

Help with command-line commands

```vim

" syntax, prepend with :
:help :{COMMAND}

" example
:help :read
```

Help with command-line editing

```vim

" syntax, prepend with c_
:help c_{KEY}

" example
:help c_CTRL-W
```

Help with a vim command argument

!!! info

      these are arguments passed when first starting vim, such as:

      `vim + myfile.txt`

      `vim -R myfile.txt`

```vim

" syntax, prepend with -
:help -{ARG}

" examples
:help -+
:help -R
```

Help with an option

```vim

" syntax, prepend with '
:help '{OPTION}'

" examples
:help 'tabstop'
:help 'shiftwidth'
```

Help with a regular expression

```vim

" syntax, prepend with /
:help /{REGEX}

" example
:help /[
```

Search for all help files for a word

```vim
" syntax
:helpgrep {WORD}

" example
:helpgrep helpgrep

" use quickfix commands to navigate matches
:cnext
:cprevious

" open quickfix list in a window
:cwindow
```

