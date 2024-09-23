vim.g.mapleader = " "

local keymap = vim.keymap

-- normal mode
keymap.set("i", "kj", "<Esc>")

-- make j k gj and gk by defeault
keymap.set("n", "j", "gj", { desc = "softline navigation" })
keymap.set("n", "k", "gk", { desc = "softline navigation" })
-- Toggle Markdown Render
keymap.set("n", "<leader>md", "<cmd>RenderMarkdown toggle<CR>", { desc = "Toggle Markdown Rendering" })

-- save file with ctrl-s
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<C-o>:write<CR>a", { noremap = true })

-- Better spelling jump
keymap.set("n", "z[", "[s", { desc = "Jump to previous incorrect spelling" })
keymap.set("n", "z]", "]s", { desc = "Jump to next incorrect spelling" })

-- auto-session
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "restore session for cwd" }) -- restore last workspace session for current directory
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "save session for auto session root dir" }) -- save workspace session for current working directory

-- Enable word wrap
keymap.set("n", "<leader>ww", "<cmd>set linebreak<CR><cmd>set wrap<CR>", { desc = "enable line breaks" })
keymap.set("n", "<leader>wd", "<cmd>set nolinebreak<CR><cmd>set nowrap<CR>", { desc = "enable line breaks" })

-- Spell Checking
keymap.set("n", "<leader>zz", "<cmd>setlocal spell spelllang=en_us<CR>", { desc = "Enable Spell Checking" })
keymap.set("n", "<leader>zd", "<cmd>setlocal spell spelllang=<CR>", { desc = "Disable Spell Checking" })

-- for clearing highlight on search
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "clear search highlights" })

-- J to move the current line down
vim.keymap.set("n", "J", ":m .+1<CR>==", { desc = "move line down", noremap = true, silent = true })
-- K to move the current line up (use g? to show docs for something)
vim.keymap.set("n", "K", ":m .-2<CR>==", { desc = "move line up", noremap = true, silent = true })

-- increment or decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "increment number" })
keymap.set("n", "<leader>-", "<C-a>", { desc = "decrement number" })

-- spliting windows
keymap.set("n", "<leader>ss", ":vsplit<CR>", { desc = "split window vertically" })
keymap.set("n", "<leader>sh", ":split<CR>", { desc = "split window horizontally" })
keymap.set("n", "<leader>sv", "<C-w>=", { desc = "make windows equal size" })
keymap.set("n", "<leader>sl", "<cmd>close<CR>", { desc = "close current split" })

keymap.set("n", "<leader>h", "<cmd>vert-resize +3<CR>", { desc = "resize" })
keymap.set("n", "<leader>j", "<cmd>resize -3<CR>", { desc = "resize" })
keymap.set("n", "<leader>k", "<cmd>resize +3<CR>", { desc = "resize" })
keymap.set("n", "<leader>l", "<cmd>vert-resize -3<CR>", { desc = "resize" })

keymap.set("n", "<leader>H", "<cmd>vert-resize +30<CR>", { desc = "resize" })
keymap.set("n", "<leader>J", "<cmd>resize -15<CR>", { desc = "resize" })
keymap.set("n", "<leader>K", "<cmd>resize +15<CR>", { desc = "resize" })
keymap.set("n", "<leader>L", "<cmd>vert-resize -30<CR>", { desc = "resize" })

-- telescope
keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "find string under cursor in cwd" })
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "find todos" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "list buffers" })

-- tab and buffer management
keymap.set("n", "<leader>rb", "<cmd>b#<CR>", { desc = "go to last buffer" })
keymap.set("n", "<F5>", "<cmd>checkt<CR>", { desc = "reload active buffers" })
keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "open new tab" })
keymap.set("n", "<leader>tl", "<cmd>tabclose<CR>", { desc = "close current tab" })
keymap.set("n", "<leader>tc", ":bdelete<CR>", { desc = "close current tab and the currently selected buffer" })
keymap.set("n", "L", "<cmd>tabn<CR><cmd>checkt<CR>", { desc = "go to next tab" })
keymap.set("n", "H", "<cmd>tabp<CR><cmd>checkt<CR>", { desc = "go to prev tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" })
keymap.set("n", "<leader>bc", "<cmd>bdelete<CR>", { desc = "close current buffer" })

-- debugger
keymap.set("n", "<leader>dt", "<cmd>lua require('dapui').toggle()<CR>", { desc = "toggle debug ui", noremap = true })
keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { noremap = true })
keymap.set("n", "<leader>dc", "<cmd>DapContinue<CR>", { noremap = true })
keymap.set(
	"n",
	"<leader>dr",
	"<cmd>lua require('dapui').open({reset=true})<CR>",
	{ desc = "reset debug ui", noremap = true }
)
keymap.set("n", "<leader>i", "<cmd>DapStepInto<CR>", { noremap = true })
keymap.set("n", "<leader>O", "<cmd>DapStepOut<CR>", { noremap = true })
keymap.set("n", "<leader>o", "<cmd>DapStepOver<CR>", { noremap = true })

-- lazygit
keymap.set(
	"n",
	"<leader>gg",
	'<cmd>TermExec cmd="lazygit;exit" direction=float<CR>',
	{ desc = "open lazygit", noremap = true }
)

-- lsp
local opts = {}
opts.desc = "show LSP references"
keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

opts.desc = "go to declaration"
keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

opts.desc = "show LSP definitions"
keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Show LSP Definitions" }) -- show lsp definitions

opts.desc = "show LSP implementations"
keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

opts.desc = "show LSP type definitions"
keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

opts.desc = "see available code actions"
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

opts.desc = "smart rename"
keymap.set("n", "<leader>srn", vim.lsp.buf.rename, opts) -- smart rename

opts.desc = "show buffer diagnostics"
keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

opts.desc = "show line diagnostics"
keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

opts.desc = "go to previous diagnostic"
keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

opts.desc = "go to next diagnostic"
keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

opts.desc = "show documentation for what is under cursor"
keymap.set("n", "g?", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
