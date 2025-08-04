vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Anyone even do this anymore?
vim.keymap.set("n", "Q", "<nop>")

-- Sometimes that selection really needs to go
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- Sometimes that selection really needs to go... elsewhere
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Sometimes that selection really needs to stay
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Primeagen's "greatest remap ever"
vim.keymap.set("x", "<leader>p", [["_dP]])

-- asbjornHaland's next "greatest remap ever"
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Even though I set scrolloff
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
