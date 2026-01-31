# dotfiles

[chezmoi](https://www.chezmoi.io/) で管理するNeovim設定

## セットアップ
```bash
# chezmoiをインストール
brew install chezmoi

# Neovimをインストール
brew install neovim

# dotfilesを初期化して適用
chezmoi init --apply git@github.com:fallere246/dotfiles.git

# Neovimを起動（プラグインが自動インストールされます）
nvim
```

## 更新
```bash
# 最新の設定を取得して適用
chezmoi update
```

## 設定の編集
```bash
# 設定ファイルを編集
chezmoi edit ~/.config/nvim/init.lua

# 変更を適用
chezmoi apply
```

## 主要なキーマップ

- `Space + w` - ファイル保存
- `Space + q` - 終了
- `Space + e` - ファイルツリー表示/非表示
- `Space + ff` - ファイル検索
- `Space + fg` - テキスト検索
- `Space + fb` - バッファ一覧
- `Ctrl + h/j/k/l` - ウィンドウ間を移動
- `Shift + h/l` - バッファ切り替え

## インストールされるプラグイン

- **tokyonight.nvim** - カラースキーム
- **nvim-tree** - ファイルツリー
- **telescope.nvim** - ファジーファインダー
- **nvim-treesitter** - シンタックスハイライト
- **nvim-lspconfig** - LSP設定
- **nvim-cmp** - 自動補完

## トラブルシューティング

プラグインのインストールでエラーが出た場合：
```bash
# Neovimのデータをクリア
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

# 再度起動
nvim
```

## 構成
```
~/.config/nvim/
├── init.lua              # メイン設定
└── lua/
    ├── options.lua       # 基本設定
    ├── keymaps.lua       # キーマップ
    └── plugins/
        └── essentials.lua  # プラグイン設定
```
