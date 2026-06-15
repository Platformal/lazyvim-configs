-- Format and save buffer
vim.keymap.set({ "n", "i" }, "<C-s>", function()
  vim.lsp.buf.code_action({
    context = {
      only = { "source.organizeImports.ruff" },
    },
    apply = true,
  })

  vim.cmd("LazyFormat")
  vim.cmd("write")
end, { desc = "Organize imports, format, and save" })
