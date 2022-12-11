local present, bufferline = pcall(require, "bufferline")

if not present then
    return
end

bufferline.setup {
    options = {
        diagnostics = "nvim_lsp",
        buffer_close_icon = '×',
        close_icon = '×',
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        numbers = function(opts)
            return string.format('%s', opts.raise(opts.ordinal))
        end,
    },
    highlights = {
    },
}
