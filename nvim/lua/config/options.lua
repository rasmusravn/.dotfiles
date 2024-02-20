-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        -- Enable line numbers
        vim.wo.number = true -- Optional, but helps to verify it's working
        -- Set text width to 80 characters
        vim.bo.textwidth = 80
        -- Set wrap margin to 0
        vim.bo.wrapmargin = 0
        -- Ensure text is automatically wrapped and prepended with text
        vim.cmd("set formatoptions+=t")
        -- Enable breaking by word
        vim.wo.linebreak = true -- Optional, but breaks by word rather than character
    end,
})
