-- Format and save buffer
vim.keymap.set({ "n", "i" }, "<C-s>", function()
  require("conform").format({
    async = false,
    lsp_fallback = true,
  })

  vim.cmd("write")
end, { desc = "Organize imports, format, and save" })

vim.keymap.set("n", "<Leader>nf", function()
  require("neogen").generate()
end, { 
  silent = true, 
  desc = "Create initial documentation" 
})
