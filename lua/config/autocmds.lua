-- set tab to 4 space when entering a buffer with .java file
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.java" },
   callback = function()
      vim.opt.shiftwidth = 4
      vim.opt.tabstop = 4
      vim.opt.softtabstop = 4
   end
})

-- set tab to 2 space when entering a buffer with .yml file
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.yml" },
   callback = function()
      vim.opt.shiftwidth = 2
      vim.opt.tabstop = 2
      vim.opt.softtabstop = 2
   end
})

