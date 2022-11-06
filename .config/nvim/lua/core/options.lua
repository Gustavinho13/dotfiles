local set = vim.opt

-- maintain undo history between sessions
vim.cmd([[set undofile]])

-- set mouse support
set.mouse = 'a'

-- tab settings
set.expandtab = true
set.autoindent = true
set.shiftwidth = 2
set.tabstop = 2

-- search settings
set.ignorecase = true
set.smartcase = true

-- line numbers
set.relativenumber = true
set.number = true

-- line wrapping 
set.wrap = falser

-- cursor line
set.cursorline = true

-- appearanece
set.background = "dark"
set.signcolumn = "yes"
settermguicolors = true

-- backspace
set.backspace = "indent,eol,start"

-- clipboard
set.clipboard:append("unnamedplus")

-- split windows
set.splitright = true
set.splitbelow = true

-- consider string-string one word
set.iskeyword:append("-")

set.hidden = true
set.list = true
set.listchars:append('tab:> ')
set.encoding = "utf-8"
vim.syntax = 'on'
