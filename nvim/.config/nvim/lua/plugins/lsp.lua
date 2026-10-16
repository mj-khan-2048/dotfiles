vim.lsp.enable("ts_ls")

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local function map(keys, fn, desc)
            vim.keymap.set("n", keys, fn, { buffer = args.buf, desc = desc })
        end

        map("gd", vim.lsp.buf.definition, "Go to definition")
        map("K", vim.lsp.buf.hover, "Hover docs")
        map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
        map("<leader>ca", vim.lsp.buf.code_action, "Code action")
        vim.keymap.set("i", "<C-n>", "<C-x><C-o>", { buffer = args.buf, desc = "Trigger completion" })

        vim.lsp.completion.enable(true, args.data.client_id, args.buf, { autotrigger = false })
    end,
})
