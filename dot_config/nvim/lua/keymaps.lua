cat > dot_config/nvim/lua/keymaps.lua << 'EOF'
local keymap = vim.keymap

-- ファイル保存
keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

-- 終了
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- ウィンドウ移動
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to down window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to up window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- バッファ移動
keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

-- インデント維持
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- 行移動
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
EOF
