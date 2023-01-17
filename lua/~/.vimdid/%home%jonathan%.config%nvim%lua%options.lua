Vim�UnDo� �xH���Q�!
2P!F��3�#䂖������l   �       �                           c��v    _�                     K       ����                                                                                                                                                                                                                                                                                                                                                             c��s     �   J   K          -vim.opt.runtimepath:prepend("~/.config/nvim")   2vim.opt.runtimepath:append("~/.config/nvim/after")5��    J                      �      a               5�_�                    K        ����                                                                                                                                                                                                                                                                                                                                                             c��s    �   J   K           5��    J                      �                     5�_�                    K        ����                                                                                                                                                                                                                                                                                                                                                             c��t    �   �               �               �   4-- ============ files and directories ==============       3-- don't change the directory when a file is opened   -- to work more like an IDE   vim.opt.autochdir = false       3-- ============ tabs and indentation ==============   K-- automatically indent the next line to the same depth as the current line   vim.opt.autoindent = true   vim.opt.smartindent = true   vim.opt.smarttab = true   -- backspace across lines   0vim.opt.backspace = { "indent", "eol", "start" }       vim.opt.tabstop = 4   vim.opt.softtabstop = 4   vim.opt.shiftwidth = 4   vim.opt.expandtab = true       (-- indent and dedent using tab/shift-tab   #vim.keymap.set("n", "<tab>", ">>_")   %vim.keymap.set("n", "<s-tab>", "<<_")   'vim.keymap.set("i", "<s-tab>", "<c-d>")   #vim.keymap.set("v", "<Tab>", ">gv")   %vim.keymap.set("v", "<S-Tab>", "<gv")       +-- ============ line numbers ==============   -- set number,relativenumber   vim.opt.number = true   vim.opt.relativenumber = true       Q-- when pressing control, switch to number temporarily (todo, maybe use `on_key`)   --vim.keymap.set(   %--    {"n", "c", "v", "i", "c", "t"},   --    "Ctrl",   --   --)   --   &-- ============ history ==============       vim.opt.undodir = "~/.vimdid"   vim.opt.undofile = true       +-- ============ miscelaneous ==============       vim.opt.belloff = "all"       #-- show (usually) hidden characters   vim.opt.list = true   vim.opt.listchars = {       nbsp = "¬",       extends = "»",       precedes = "«",       trail = "·",       tab = ">-",   }       --- paste and yank use global system clipboard   !vim.opt.clipboard = "unnamedplus"       3-- show partial commands entered in the status line   %-- (like show "da" when typing "daw")   vim.opt.showcmd = true   vim.opt.mouse = "a"       vim.opt.modeline = true       +-- highlight the line with the cursor on it   vim.opt.cursorline = true       (-- enable spell checking (todo: plugin?)   vim.opt.spell = false           vim.opt.wrap = false           .local opts = { noremap = true, silent = true }   &local keymap = vim.api.nvim_set_keymap   -- TODO:   ---keymap("n","<C-Down>",":move .+1<CR>",opts)   +--keymap("n","<C-Up>",":move .-1<CR>",opts)       <-- format on wq and x and replace X, W and Q with x, w and q   5vim.cmd [[cabbrev wq execute "Format sync" <bar> wq]]   3vim.cmd [[cabbrev x execute "Format sync" <bar> x]]   vim.cmd [[cnoreabbrev W w]]   7vim.cmd [[cnoreabbrev X execute "Format sync" <bar> x]]   vim.cmd [[cnoreabbrev Q q]]   vim.cmd [[nnoremap ; :]]       -- format on control-shift-t   )keymap("n", "<C-L>", ":Format<CR>", opts)           -- better search   
vim.cmd([[   " Better search   set incsearch   set ignorecase   set smartcase   set gdefault       /nnoremap <silent> n n:call BlinkNextMatch()<CR>   /nnoremap <silent> N N:call BlinkNextMatch()<CR>        function! BlinkNextMatch() abort   @  highlight JustMatched ctermfg=white ctermbg=magenta cterm=bold         let pat = '\c\%#' . @/   '  let id = matchadd('JustMatched', pat)     redraw         exec 'sleep 150m'     call matchdelete(id)     redraw   endfunction       2nnoremap <silent> <Space> :silent noh<Bar>echo<CR>   0nnoremap <silent> <Esc> :silent noh<Bar>echo<CR>       nnoremap <silent> n nzz   nnoremap <silent> N Nzz   nnoremap <silent> * *zz   nnoremap <silent> # #zz   nnoremap <silent> g* g*zz       " very magic by default   nnoremap ? ?\v   nnoremap / /\v   cnoremap %s/ %sm/       ]])           (-- nice options recommended by nvim-tree   vim.g.loaded_netrw = 1   vim.g.loaded_netrwPlugin = 1   vim.opt.termguicolors = true5��            �      �               �      �      �    �                      �                     5�_�                     K        ����                                                                                                                                                                                                                                                                                                                                                             c��u    �   �               �               �   4-- ============ files and directories ==============       3-- don't change the directory when a file is opened   -- to work more like an IDE   vim.opt.autochdir = false       3-- ============ tabs and indentation ==============   K-- automatically indent the next line to the same depth as the current line   vim.opt.autoindent = true   vim.opt.smartindent = true   vim.opt.smarttab = true   -- backspace across lines   0vim.opt.backspace = { "indent", "eol", "start" }       vim.opt.tabstop = 4   vim.opt.softtabstop = 4   vim.opt.shiftwidth = 4   vim.opt.expandtab = true       (-- indent and dedent using tab/shift-tab   #vim.keymap.set("n", "<tab>", ">>_")   %vim.keymap.set("n", "<s-tab>", "<<_")   'vim.keymap.set("i", "<s-tab>", "<c-d>")   #vim.keymap.set("v", "<Tab>", ">gv")   %vim.keymap.set("v", "<S-Tab>", "<gv")       +-- ============ line numbers ==============   -- set number,relativenumber   vim.opt.number = true   vim.opt.relativenumber = true       Q-- when pressing control, switch to number temporarily (todo, maybe use `on_key`)   --vim.keymap.set(   %--    {"n", "c", "v", "i", "c", "t"},   --    "Ctrl",   --   --)   --   &-- ============ history ==============       vim.opt.undodir = "~/.vimdid"   vim.opt.undofile = true       +-- ============ miscelaneous ==============       vim.opt.belloff = "all"       #-- show (usually) hidden characters   vim.opt.list = true   vim.opt.listchars = {       nbsp = "¬",       extends = "»",       precedes = "«",       trail = "·",       tab = ">-",   }       --- paste and yank use global system clipboard   !vim.opt.clipboard = "unnamedplus"       3-- show partial commands entered in the status line   %-- (like show "da" when typing "daw")   vim.opt.showcmd = true   vim.opt.mouse = "a"       vim.opt.modeline = true       +-- highlight the line with the cursor on it   vim.opt.cursorline = true       (-- enable spell checking (todo: plugin?)   vim.opt.spell = false           vim.opt.wrap = false           .local opts = { noremap = true, silent = true }   &local keymap = vim.api.nvim_set_keymap   -- TODO:   ---keymap("n","<C-Down>",":move .+1<CR>",opts)   +--keymap("n","<C-Up>",":move .-1<CR>",opts)       <-- format on wq and x and replace X, W and Q with x, w and q   5vim.cmd [[cabbrev wq execute "Format sync" <bar> wq]]   3vim.cmd [[cabbrev x execute "Format sync" <bar> x]]   vim.cmd [[cnoreabbrev W w]]   7vim.cmd [[cnoreabbrev X execute "Format sync" <bar> x]]   vim.cmd [[cnoreabbrev Q q]]   vim.cmd [[nnoremap ; :]]       -- format on control-shift-t   )keymap("n", "<C-L>", ":Format<CR>", opts)           -- better search   
vim.cmd([[   " Better search   set incsearch   set ignorecase   set smartcase   set gdefault       /nnoremap <silent> n n:call BlinkNextMatch()<CR>   /nnoremap <silent> N N:call BlinkNextMatch()<CR>        function! BlinkNextMatch() abort   @  highlight JustMatched ctermfg=white ctermbg=magenta cterm=bold         let pat = '\c\%#' . @/   '  let id = matchadd('JustMatched', pat)     redraw         exec 'sleep 150m'     call matchdelete(id)     redraw   endfunction       2nnoremap <silent> <Space> :silent noh<Bar>echo<CR>   0nnoremap <silent> <Esc> :silent noh<Bar>echo<CR>       nnoremap <silent> n nzz   nnoremap <silent> N Nzz   nnoremap <silent> * *zz   nnoremap <silent> # #zz   nnoremap <silent> g* g*zz       " very magic by default   nnoremap ? ?\v   nnoremap / /\v   cnoremap %s/ %sm/       ]])           (-- nice options recommended by nvim-tree   vim.g.loaded_netrw = 1   vim.g.loaded_netrwPlugin = 1   vim.opt.termguicolors = true5��            �      �               �      �      �    �                      �                     5��