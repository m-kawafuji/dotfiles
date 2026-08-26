require("plugins")

vim.cmd("colorscheme catppuccin")

-- Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.guicursor = ""
vim.opt.mouse = ""
vim.opt.completeopt = "menu"
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.number = true

-- Global Variables
vim.g.netrw_liststyle = 3

-- Keymaps
vim.keymap.set("n", "<leader>s", ":%s/")
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<C-n>", ":noh<CR>")
vim.keymap.set("n", "<leader>e", ":Neotree<CR>")

-- Filetypes
vim.filetype.add({
  extension = {
    ejs = "ejs",
    mdx = "markdown",
    njk = "html",
    liquid = "html",
  },
})

-- Diagnostics
vim.diagnostic.config({
  virtual_text = true,
})

vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg = "NONE" })
