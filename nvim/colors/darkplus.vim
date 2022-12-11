lua << EOF

local present, darkplus = pcall(require, "darkplus")

if not present then
    return
end

local c = require("darkplus.palette")

local hl = function(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
end

darkplus.setup {}

hl("TelescopeNormal", { bg = c.bg })

hl("GitSignsCurrentLineBlame", { fg = c.gray })

hl("Whitespace", { fg = c.dark_gray })

hl("IndentBlanklineContextChar", { fg = c.blue })

EOF
