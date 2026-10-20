-- Autoupdate hook for treesitter

local function complete_packages(match)
  return vim.iter(vim.pack.get())
    :map(function(pack) return pack.spec.name end)
    :filter(function(pack) return pack:find(match) end)
    :totable()
end

vim.api.nvim_create_user_command(
  'PackUpdate',
  function(info)
    if #info.fargs ~= 0 then
      vim.pack.update(info.fargs, { force = info.bang })
    else
      vim.pack.update(nil, { force = info.bang })
    end
  end,
  {
    desc = 'Update packages',
    nargs = '*',
    bang = true,
    complete = complete_packages,
  }
)

vim.api.nvim_create_user_command(
  'PackDelete',
  function(info)
    vim.pack.del(info.fargs, { force = info.bang })
  end,
  {
    desc = 'Delete packages',
    nargs = '+',
    bang = true,
    complete = complete_packages,
  }
)

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
--  { src = "https://github.com/otavioschwanck/arrow.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
})
