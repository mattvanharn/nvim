-- lua/config/keymaps.lua

local mapkey = require("util.keymapper").mapvimkey
--
-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n") -- Next buffer
mapkey("<leader>bp", "bprevious", "n") -- Prev buffer
mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
mapkey("<leader>`", "e #", "n") -- Switch to Other Buffer

-- Directory Navigation
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<leader>f", "NvimTreeToggle", "n")

-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNaivageDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNaivageUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNaivageRight", "n") -- Navigate Right

-- Window Management
mapkey("<leader>sv", "vsplit", "n") -- Split Vertically
mapkey("<leader>sh", "split", "n") -- Split Horizontally
mapkey("<C-Up>", "resize +2", "n")
mapkey("<C-Down>", "resize -2", "n")
mapkey("<C-Left>", "vertical resize +2", "n")
mapkey("<C-Right>", "vertical resize -2", "n")

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n") -- Show Full File Path

-- Indenting
vim.keymap.set("v", "<", "<gv", { silent = true, noremap = true })
vim.keymap.set("v", ">", ">gv", { silent = true, noremap = true })

local api = vim.api

-- Zen Mode
api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", {})
api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})
api.nvim_set_keymap("n", "<leader>sm", ":TZFocus<CR>", {})
api.nvim_set_keymap("n", "<leader>zm", ":TZMinimalist<CR>", {})
api.nvim_set_keymap("n", "<leader>za", ":TZAtaraxis<CR>", {})

-- Comments
api.nvim_set_keymap("n", "<C-/>", "gtc", { noremap = false })
api.nvim_set_keymap("v", "<C-/>", "goc", { noremap = false })

-- Harpoon Keybindings
mapkey("<leader>ha", "lua require('harpoon.mark').add_file()", "n") -- Add file to Harpoon
mapkey("<leader>hn", "lua require('harpoon.ui').nav_next()", "n") -- Go to next Harpoon mark
mapkey("<leader>hp", "lua require('harpoon.ui').nav_prev()", "n") -- Go to previous Harpoon mark
mapkey("<leader>hm", "lua require('harpoon.ui').toggle_quick_menu()", "n") -- Show Harpoon marks

mapkey("<leader>hh", "lua require('harpoon.ui').nav_file(1)", "n") -- Navigate to file 1
mapkey("<leader>hj", "lua require('harpoon.ui').nav_file(2)", "n") -- Navigate to file 2
mapkey("<leader>hk", "lua require('harpoon.ui').nav_file(3)", "n") -- Navigate to file 3
mapkey("<leader>hl", "lua require('harpoon.ui').nav_file(4)", "n") -- Navigate to file 4
