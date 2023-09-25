require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    transparent_background = true, -- disables setting the background color.
    custom_highlights = function(colors)
        return {
            LineNr = { fg = colors.overlay1 }
        }
    end,
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
