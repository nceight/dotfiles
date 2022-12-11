local fn = vim.fn

-- Automatically install packer on initial startup
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    Packer_Bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    print "---------------------------------------------------------"
    print "Press Enter to install packer and plugins."
    print "After install -- close and reopen Neovim to load configs!"
    print "---------------------------------------------------------"
    vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call
local present, packer = pcall(require, "packer")

if not present then
    return
end

packer.startup(function(use)
    use 'wbthomason/packer.nvim'                                                -- Packer manages itself
    use 'nvim-lua/plenary.nvim'                                                 -- Avoids callbacks, used by other plugins
    use 'nvim-lua/popup.nvim'                                                   -- Popup for other plugins
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }                -- Language parsing completion engine
    use "williamboman/mason.nvim"                                               -- UI for fetching/downloading LSPs
    use "williamboman/mason-lspconfig.nvim"                                     -- Bridges mason and lspconfig
    use 'neovim/nvim-lspconfig'                                                 -- Language server protocol implementation
    use 'jose-elias-alvarez/null-ls.nvim'                                       -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
    use 'hrsh7th/cmp-nvim-lsp'                                                  -- Cmp's own LSP
    use 'hrsh7th/cmp-buffer'                                                    -- Cmp source for buffer words
    use 'hrsh7th/cmp-path'                                                      -- Cmp source for path words
    use 'hrsh7th/cmp-cmdline'                                                   -- Cmp source for commandline
    use 'hrsh7th/nvim-cmp'                                                      -- Vim completion engine
    use 'L3MON4D3/LuaSnip'                                                      -- More snippets
    use 'saadparwaiz1/cmp_luasnip'                                              -- Even more snippets
    use 'RRethy/vim-illuminate'                                                 -- Automatically highlighting other uses of the word under the cursor using either LSP, Tree-sitter, or regex matching
    use 'windwp/nvim-autopairs'                                                 -- A super powerful autopair plugin for Neovim that supports multiple characters
    use 'numToStr/Comment.nvim'                                                 -- Commentting
    use 'JoosepAlviste/nvim-ts-context-commentstring'                           -- Commentting based on context
    use 'nvim-telescope/telescope.nvim'                                         -- Finder, requires fd and ripgrep
    use 'nvim-tree/nvim-tree.lua'                                               -- File explorer
    use 'akinsho/bufferline.nvim'                                               -- Fancier bufferline
    use 'nvim-lualine/lualine.nvim'                                             -- Fancier statusline
    use 'lukas-reineke/indent-blankline.nvim'                                   -- Adds indentation guides to all lines (including empty lines)
    use 'ThePrimeagen/refactoring.nvim'                                         -- The Refactoring library based off the Refactoring book by Martin Fowler
    use 'lewis6991/gitsigns.nvim'                                               -- Git integration for buffers
    use 'akinsho/toggleterm.nvim'                                               -- A neovim plugin to persist and toggle multiple terminals during an editing session
    use 'lunarvim/darkplus.nvim'                                                -- Colorscheme
    use 'NvChad/nvim-colorizer.lua'                                             -- Colorize color coded

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if Packer_Bootstrap then
        require('packer').sync()
    end
end)
