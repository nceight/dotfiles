local present, nvim_tree = pcall(require, "nvim-tree")

if not present then
    return
end

local config_present, nvim_tree_config = pcall(require, "nvim-tree.config")

if not config_present then
    return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    renderer = {
        root_folder_modifier = ":t",
        icons = {
            git_placement = "after",
            glyphs = {
                default = " ",
                symlink = " ",
                bookmark = "﬜ ",
                folder = {
                    arrow_open = " ",
                    arrow_closed = " ",
                    default = " ",
                    open = " ",
                    empty = " ",
                    empty_open = " ",
                    symlink = " ",
                    symlink_open = " ",
                },
                git = {
                    unstaged = " ",
                    staged = "S ",
                    unmerged = " ",
                    renamed = "R ",
                    untracked = "U ",
                    deleted = "D ",
                    ignored = "◌ ",
                },
            },
        },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = " ",
            info = " ",
            warning = " ",
            error = " ",
        },
    },
    view = {
        width = 50,
        side = "left",
        mappings = {
            list = {
                { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
                { key = "h", cb = tree_cb "close_node" },
                { key = "v", cb = tree_cb "vsplit" },
            },
        },
    },
}
