-- options.lua

-- Line numbers
vim.opt.number = true        -- Absolute line numbers
vim.opt.relativenumber = true -- Relative numbers for easier movement

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true     -- Convert tabs to spaces
vim.opt.smartindent = true   -- Smart auto-indentation

-- Search
vim.opt.ignorecase = false    -- Ignore case when searching
vim.opt.incsearch = true     -- Show matches while typing
vim.opt.hlsearch = true      -- Highlight all search matches

-- UI Stuff
vim.opt.cursorline = true 
vim.opt.termguicolors = true 
vim.opt.wrap = false
vim.opt.scrolloff = 8        -- Keep 8 lines visible above and below cursor

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Timing
vim.opt.timeoutlen = 500
vim.opt.updatetime = 300

-- Misc
vim.opt.hidden = true        -- Allow switching buffers without saving
vim.opt.signcolumn = "yes"   -- Always show sign column
