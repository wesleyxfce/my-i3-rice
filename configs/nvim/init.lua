-- =========================
-- Opções
-- =========================

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

vim.opt.mouse = ""
vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.scrolloff = 8


-- =========================
-- Plugins
-- =========================

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "Mofiqul/dracula.nvim",
        lazy = false,
        priority = 1000,
    },
})


-- =========================
-- Dracula
-- =========================

vim.cmd.colorscheme("dracula")


-- =========================
-- Nossas cores
-- =========================

-- Fundo
vim.api.nvim_set_hl(0, "Normal", {
    fg = "#F8F8F2",
    bg = "#211F2D",
})

-- Linha atual
vim.api.nvim_set_hl(0, "CursorLine", {
    bg = "#282A36",
})

-- Números
vim.api.nvim_set_hl(0, "LineNr", {
    fg = "#6272A4",
})

-- Número da linha atual
vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = "#50FA7B",
    bold = true,
})


-- =========================
-- Barra inferior
-- =========================

vim.opt.statusline = "%#StatusLine# %f %m %= %l:%c "

vim.api.nvim_set_hl(0, "StatusLine", {
    fg = "#282A36",
    bg = "#50FA7B",
    bold = true,
})
