-- set <LEADER> key for nvim (effectively layer key for shortcuts in nvim)
vim.g.mapleader = " "

-- map leader+y to copy to system clipboard in normal mode
vim.keymap.set({ "n", "v" }, "<Leader>y", '"+y', { noremap = true, silent = true })
