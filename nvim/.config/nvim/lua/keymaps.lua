-- keymaps.lua

-- Set leader
vim.g.mapleader = " "

-- Toggle relative line numbers
vim.keymap.set("n", "<leader>rn", function()
    if vim.wo.relativenumber then
        vim.wo.relativenumber = false
        vim.wo.number = true
    else
        vim.wo.relativenumber = true
        vim.wo.number = true
    end
end, { desc = "Toggle relative/absolute line numbers" })

