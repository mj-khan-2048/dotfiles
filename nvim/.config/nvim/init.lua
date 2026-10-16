-- Set leader
vim.g.mapleader = " "

-- Load core config modules
require("config.plugins")
require("config.options")
require("config.keymaps")
require("plugins.treesitter")
require("plugins.lsp")

-- Load colorscheme
vim.cmd.colorscheme("wildcharm")
