require("mh.core.options")
require("mh.core.keymaps")
require("mh.lazy")
--require("feline.nvim")

vim.o.laststatus = 2
vim.g.autoformat = false
-- set line number colors
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#737373", bold = false })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff", bold = true })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#737373", bold = false })
