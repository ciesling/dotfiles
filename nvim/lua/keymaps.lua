vim.cmd("let mapleader = ' '")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<C-x>", ":q<CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "S", ":%s/")

vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal right toggle<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree focus<CR>")

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fc", ":Telescope colorscheme<CR>")
vim.keymap.set("n", "<leader>fr", ":Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>")

--vim.keymap.set("n", "<leader>fw", ":Telescope live_grep<CR>")
--vim.keymap.set("n", "<leader>km", ":Telescope keymaps<CR>")

-- vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format, {})
-- vim.keymap.set("n", "<leader>lr", ":LspRestart<CR>")
-- vim.keymap.set("n", "<leader>li", ":LspInfo<CR>")

--vim.keymap.set("n", "<tab>", ":BufferNext<CR>")
--vim.keymap.set("n", "<S-tab>", ":BufferPrevious<CR>")
--vim.keymap.set("n", "<leader>q", ":BufferClose<CR>")

-- vim.keymap.set("n", "<leader>tr", ":ToggleTerm<CR>")

--vim.keymap.set("n", "<leader>/", "gcc", { remap = true })
--vim.keymap.set("n", "<C-up>", "<C-y>", { remap = true })
--vim.keymap.set("n", "<C-down>", "<C-e>", { remap = true })

