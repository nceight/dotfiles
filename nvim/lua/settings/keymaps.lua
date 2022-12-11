local opts = { noremap = true, silent = true }

-- Shorten keymap nvim call
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes:
--   Normal        = "n"
--   Insert        = "i"
--   Visual        = "v"
--   Visual_Block  = "x"
--   Terminal      = "t"
--   Command       = "c"
--   Normal|Visual = ""

-- Reload changes
keymap("n", "<Leader>so", "<CMD>so<CR>", opts)

-- Fast exit insert mode
keymap("i", "<C-c>", "<Esc>", opts)

-- Change Visual Block mode 
keymap("n", "<C-A-v>", "<C-v>", opts)

-- Save shortcut
keymap("n", "<C-s>", "<CMD>w<CR>", opts)
keymap("i", "<C-s>", "<Esc><CMD>w<CR>", opts)

-- Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

-- Split window
keymap("n", "<C-x>", "<CMD>split<Return><C-w>w", opts)
keymap("n", "<C-v>", "<CMD>vsplit<Return><C-w>w", opts)

-- Navigate window
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize window with arrows
keymap("n", "<C-Up>", ":resize -1<CR>", opts)
keymap("n", "<C-Down>", ":resize +3<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -1<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +3<CR>", opts)

-- Navigate buffers left and right
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Navigate buffers with numbers
keymap("n", "<Leader>1", "<CMD>BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "<Leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "<Leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "<Leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
keymap("n", "<Leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
keymap("n", "<Leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)
keymap("n", "<Leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", opts)
keymap("n", "<Leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", opts)
keymap("n", "<Leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", opts)
keymap("n", "<Leader>0", "<CMD>BufferLineGoToBuffer -1<CR>", opts)
keymap("n", "<C-w>", "<CMD>bdelete<CR>", opts)

-- Move line or visually selected block - alt+j/k
keymap("n", "<A-j>", "<CMD>m .+1<CR>==", opts)
keymap("n", "<A-k>", "<CMD>m .-2<CR>==", opts)
keymap("v", "<A-j>", "<CMD>m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", "<CMD>m '<-2<CR>gv=gv", opts)
keymap("i", "<A-j>", "<Esc><CMD>m .+1<CR>==gi", opts)
keymap("i", "<A-k>", "<Esc><CMD>m .-2<CR>==gi", opts)

-- Comment with ctrl+/
keymap("n", "<C-_>", "<Plug>(comment_toggle_linewise_current)", opts)
keymap("x", "<C-_>", "<Plug>(comment_toggle_linewise_visual)", opts)

-- File Explore
keymap("n", "<C-b>", "<CMD>NvimTreeToggle<CR>", opts)
keymap("n", "<C-p>", "<CMD>Telescope find_files<CR>", opts)
keymap("n", "<C-g>", "<CMD>Telescope live_grep<CR>", opts)
keymap("n", "<F1>", "<CMD>Telescope help_tags<CR>", opts)
keymap("n", "<C-f>", "<CMD>lua require('telescope.builtin').live_grep({search_dirs={vim.fn.expand('%:p')}})<CR>", opts)

-- Find and replace all
keymap("n", "<F4>", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gi<Left><Left><Left>", opts)

-- Git
keymap("n", "<Leader>g", "<CMD>lua _GITUI_TOGGLE()<CR>", opts)
keymap("n", "gb", "<CMD>Gitsigns toggle_current_line_blame<CR>", opts)
keymap("n", "g.", "<CMD>Gitsigns next_hunk<CR>", opts)
keymap("n", "g,", "<CMD>Gitsigns prev_hunk<CR>", opts)
keymap("n", "gv", "<CMD>Gitsigns preview_hunk<CR>", opts)

-- Toggle Terminal
keymap("n", [[<A-\>]], "<CMD>ToggleTermToggleAll<CR>", opts)
keymap("t", [[<A-\>]], "<CMD>ToggleTermToggleAll<CR>", opts)
