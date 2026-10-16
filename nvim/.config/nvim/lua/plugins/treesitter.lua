-- Autorun :TSUpdate
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    if ev.data.spec.name == 'nvim-treesitter' and ev.data.kind == 'update' then
      vim.cmd('TSUpdate')
    end
  end,
})

-- Install nvim-treesitter
vim.pack.add({
  'https://github.com/nvim-treesitter/nvim-treesitter',
})

-- config nvim-treesitter
require('nvim-treesitter').install({ 'lua', 'vim', 'vimdoc', 'python', 'c', 'cpp' })

vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})
