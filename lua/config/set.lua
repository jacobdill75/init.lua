vim .opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Keep lines short... within reason
vim.opt.wrap = false
vim.opt.colorcolumn = "80"

-- Disable swapfile polution
vim.opt.swapfile = false
vim.opt.backup = false
-- Favoring undo saving
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
-- Toggle if including neotest or lspconfig diagnostic
vim.opt.signcolumn = "yes"

-- Tells neovim that ascii values from @ to @ are valid in file names
-- Useful for frameworks like Vue.js that use @ in paths
-- Ex. @/components/...
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
