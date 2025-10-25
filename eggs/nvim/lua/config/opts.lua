-- Global variables
vim.g.undodir = vim.fn.expand("~/.vim/undodir")

-- theme & transparency
vim.o.background = "dark"
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- Basic settings
vim.opt.number = true          -- Line numbers
vim.opt.relativenumber = true  -- Relative line numbers
vim.opt.cursorline = true      -- Highlight current line
vim.opt.cursorlineopt = "line" -- Cursorline options
vim.opt.wrap = false           -- Don't wrap lines
vim.opt.scrolloff = 5          -- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 8      -- Keep 8 columns left/right of cursor

-- Indentation
vim.opt.tabstop = 4        -- Tab width
vim.opt.shiftwidth = 4     -- Indent width
vim.opt.softtabstop = 4    -- Soft tab stop
vim.opt.smartindent = true -- Smart auto-indenting
vim.opt.autoindent = true  -- Copy indent from current line
vim.opt.expandtab = true   -- Use spaces instead of tabs

-- Search settings
vim.opt.ignorecase = true -- Case insensitive search
vim.opt.smartcase = true  -- Case sensitive if uppercase in search
vim.opt.hlsearch = false  -- Don't highlight search results
vim.opt.incsearch = true  -- Show matches as you type

-- Visual settings
vim.opt.termguicolors = true  -- Enable 24-bit colors
vim.opt.signcolumn = "number" -- Always show sign column
vim.opt.showmatch = true      -- Highlight matching brackets
vim.opt.matchtime = 2         -- How long to show matching bracket
vim.opt.cmdheight = 1         -- Command line height
vim.opt.showmode = false      -- Don't show mode in command line
vim.opt.pumheight = 10        -- Popup menu height
vim.opt.pumblend = 10         -- Popup menu transparency
vim.opt.winblend = 0          -- Floating window transparency
vim.opt.conceallevel = 0      -- Don't hide markup
vim.opt.concealcursor = ""    -- Don't hide cursor line markup
vim.opt.lazyredraw = true     -- Don't redraw during macros
vim.opt.synmaxcol = 500       -- Syntax highlighting limit

-- File handling
vim.opt.backup = false          -- Don't create backup files
vim.opt.writebackup = false     -- Don't create backup before writing
vim.opt.swapfile = false        -- Don't create swap files
vim.opt.undofile = true         -- Persistent undo
vim.opt.undodir = vim.g.undodir -- Undo directory
vim.opt.timeoutlen = 500        -- Key timeout duration
vim.opt.ttimeoutlen = 0         -- Key code timeout
vim.opt.autoread = true         -- Auto reload files changed outside vim
vim.opt.autowrite = false       -- Don't auto save

-- Behavior settings
vim.opt.hidden = true           -- Allow hidden buffers
vim.opt.errorbells = false      -- No error bells
vim.opt.autochdir = false       -- Don't auto change directory
vim.opt.iskeyword:append("-")   -- Treat dash as part of word
vim.opt.path:append("**")       -- include subdirectories in search
vim.opt.selection = "exclusive" -- Selection behavior
vim.opt.modifiable = true       -- Allow buffer modifications

-- Folding settings
vim.opt.foldmethod = "expr"                          -- Use expression for folding
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Use treesitter for folding
vim.opt.foldlevel = 99                               -- Start with all folds open

-- Split behavior
vim.opt.splitbelow = true -- Horizontal splits go below
vim.opt.splitright = true -- Vertical splits go right

-- Command-line completion
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })

-- Performance improvements
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000
