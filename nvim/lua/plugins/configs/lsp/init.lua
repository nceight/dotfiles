-------------------------------------------
-- mason --> handlers --> null-ls
-- must be setup in this order
-------------------------------------------
require "plugins.configs.lsp.mason"
require "plugins.configs.lsp.handlers".setup()
require "plugins.configs.lsp.null-ls"
