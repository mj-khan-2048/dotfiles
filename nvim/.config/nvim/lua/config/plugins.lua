-- Autoupdate hook for treesitter
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    if ev.data.spec.name == 'nvim-treesitter' and ev.data.kind == 'update' then
      vim.cmd('TSUpdate')
    end
  end,
})

vim.pack.add({
    -- Load dependencies first
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },

    { src = "https://github.com/ibhagwan/fzf-lua" },
    { src = "https://github.com/otavioschwanck/arrow.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
})
