local colorscheme = "darkplus"
local present, _ = pcall(vim.api.nvim_command, "colorscheme " .. colorscheme)

if not present then
    print("colorscheme " .. colorscheme .. " not found!")
    return
end
