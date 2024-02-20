local options = {
        backup = false,
        clipboard = "unnamedplus",
        mouse = "a",
        splitbelow = true,
        splitright = true,
        showtabline = 2,
        ignorecase = true,
        smartindent = true,
        undofile = true,
        expandtab = true,
        shiftwidth = 2,
        tabstop = 2,
        cursorline = true,
        number = true,
        relativenumber = true,
        numberwidth = 4,
        wrap = true,
        linebreak = true,
        scrolloff = 8,
}

for k, v in pairs(options) do
        vim.opt[k] = v
end
