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

-- TODO: Remove once I kick the habit of not using HJKL
-- I'll allow myself arrow keys in insert mode
vim.keymap.set({ "n", "v" }, "<up>", "<nop>")
vim.keymap.set({ "n", "v" }, "<down>", "<nop>")
vim.keymap.set({ "n", "v" }, "<left>", "<nop>")
vim.keymap.set({ "n", "v" }, "<right>", "<nop>")

-- I prefer <leader> hotkeys to Ctrl for ~muh pinky health~
vim.keymap.set("n", "<leader>wh", "<C-w>h") -- navigate left
vim.keymap.set("n", "<leader>wj", "<C-w>j") -- navigate down
vim.keymap.set("n", "<leader>wk", "<C-w>k") -- navigate up
vim.keymap.set("n", "<leader>wl", "<C-w>l") -- navigate right

vim.keymap.set("n", "<leader>wH", "<C-w>H") -- move left
vim.keymap.set("n", "<leader>wJ", "<C-w>J") -- move down
vim.keymap.set("n", "<leader>wK", "<C-w>K") -- move up
vim.keymap.set("n", "<leader>wL", "<C-w>L") -- move right

vim.keymap.set("n", "<leader>wv", "<C-w>v") -- vertical split
vim.keymap.set("n", "<leader>ws", "<C-w>s") -- horizontal split

vim.keymap.set("n", "<leader>wc", "<C-w>c") -- close current
vim.keymap.set("n", "<leader>wo", "<C-w>o") -- close others

vim.keymap.set("n", "<leader>wpv", function() -- horizontal open explorer
    vim.cmd("vsplit")
    vim.cmd("wincmd l")
    vim.cmd("Ex")
end)

vim.keymap.set("n", "<leader>wpf", function() -- horizontal open search
    vim.cmd("vsplit")
    vim.cmd("wincmd l")
    vim.cmd("Ex")

    local builtin = require("telescope.builtin")
    local ok = pcall(builtin.git_files, { show_untracked = true })
    if not ok then
        builtin.find_files()
    end
end, {})

-- Trying this out as I leave hlsearch on
vim.keymap.set("n", "<Esc>", "<cmd>nohl<CR>")

vim.keymap.set('n', '<leader>pd', '<cmd>DiffviewOpen<CR>', { desc = 'Open Diffview' })
vim.keymap.set('n', '<leader>pc', '<cmd>DiffviewClose<CR>', { desc = 'Close Diffview' })
