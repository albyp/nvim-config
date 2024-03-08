local options = {
        backup = false,                 -- creates a backup file
        clipboard = "unnamedplus",      -- allows neovim to acces the system clipboard
        cmdheight = 2,                  -- more space in the neovim command line
        cursorline = true,              -- highlight the current line
        expandtab = true,               -- converts tab into spaces
        fileencoding = "utf-8",
        ignorecase = true,              -- ignore case in search patterns
        linebreak = true,
        mouse = "a",                    -- allows the mouse to be used in neovim
        number = true,                  -- set numbered lines
        numberwidth = 4,                -- set numuber column width to 2 (default 4)
        relativenumber = true,          -- set relative numbered lines
        scrolloff = 8,
        shiftwidth = 2,                 -- the number of spaces inserted for each indentation
        showtabline = 2,                -- always show tabs
        smartindent = true,             -- make indenting smarter
        splitbelow = true,              -- force all horizontal splits to go below the current window
        splitright = true,              -- force all vertical splits to go right of current window
        swapfile = false,               -- disables swapfile
        tabstop = 2,                    -- insert 2 spaces for a tab
        termguicolors = true,           -- set term gui colors (most terminals support this)
        undofile = true,                -- enable persistent undo
        wrap = true,                    -- wrap lines
}

for k, v in pairs(options) do
        vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
