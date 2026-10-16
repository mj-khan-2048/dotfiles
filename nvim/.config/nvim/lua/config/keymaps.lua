-- keymaps.lua

-- Toggle relative line numbers
vim.keymap.set("n", "<leader>rn", function()
    vim.wo.relativenumber = not vim.wo.relativenumber 
    vim.wo.number = true
end, { desc = "Toggle relative/absolute line numbers" })

-- Arrow keymaps
require('arrow').setup({
    show_icons = true,
    leader_key = ';', -- Recommended to be a single key
    buffer_leader_key = 'm', -- Per Buffer Mappings
})

-- fzf-lua keymaps
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find files with fzf" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua grep<cr>", { desc = "Grep files with fzf" })
