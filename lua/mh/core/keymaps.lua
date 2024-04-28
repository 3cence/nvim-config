vim.g.mapleader = " "

local keymap = vim.keymap

-- normal mode
keymap.set("i", "kj", "<Esc>")

-- save file with ctrl-s
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<C-o>:write<CR>a", { noremap = true })

-- auto-session
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "restore session for cwd" }) -- restore last workspace session for current directory
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "save session for auto session root dir" }) -- save workspace session for current working directory

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

-- telescope
keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "find string under cursor in cwd" })
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "find todos" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "list buffers" })

-- tab and buffer management
keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "open new tab" })
keymap.set("n", "<leader>tl", "<cmd>tabclose<CR>", { desc = "close current tab" })
keymap.set("n", "<leader>tc", ":bdelete<CR>", { desc = "close current tab and the currently selected buffer" })
keymap.set("n", "L", "<cmd>tabn<CR>", { desc = "go to next tab" })
keymap.set("n", "H", "<cmd>tabp<CR>", { desc = "go to prev tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" })
keymap.set("n", "<leader>bc", "<cmd>bdelete<CR>", { desc = "close current buffer" })

-- debugger
keymap.set("n", "<leader>dt", ":lua require('dapui').toggle()<CR>", { desc = "toggle debug ui", noremap = true })
keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true })
keymap.set("n", "<leader>dc", ":DapContinue<CR>", { noremap = true })
keymap.set(
	"n",
	"<leader>dr",
	":lua require('dapui').open({reset=true})<CR>",
	{ desc = "reset debug ui", noremap = true }
)
keymap.set("n", "<leader>i", ":DapStepInto<CR>", { noremap = true })
keymap.set("n", "<leader>O", ":DapStepOut<CR>", { noremap = true })
keymap.set("n", "<leader>o", ":DapStepOver<CR>", { noremap = true })

-- lazygit
keymap.set(
	"n",
	"<leader>gg",
	":tabnew<CR>:terminal lazygit<CR>:tabm -1<CR>:startinsert<CR>",
	{ desc = "open new tab & lazygit", noremap = true }
)
