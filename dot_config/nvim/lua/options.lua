-- 基本設定

-- ヒアドキュメント
cat > dot_config/nvim/lua/options.lua << 'EOF'
local opt = vim.opt

-- 行番号
opt.number = true
opt.relativenumber = true

-- インデント
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- 検索
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- 外観
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8

-- クリップボード
opt.clipboard = "unnamedplus"

-- スワップファイル無効
opt.swapfile = false
opt.backup = false

-- アンドゥ
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- 分割
opt.splitright = true
opt.splitbelow = true
EOF
