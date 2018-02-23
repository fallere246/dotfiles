" setting
set nobackup   " バックアップファイルを作らない
set noswapfile " スワップファイルを作らない
set autoread   " 編集中のファイルが変更されたら自動で読み直す
set hidden     " バッファが編集中でもその他のファイルを開けるように
set showcmd    " 入力中のコマンドをステータスに表示する

" 見た目系
filetype plugin indent on
syntax on
set autoindent            " 自動インデントを有効に
set ambiwidth=double      " 全角記号の表示幅を修正
set number                " 行番号を表示
set cursorline            " 現在の行を強調表示
set scrolloff=8           " 上下8行の視界を確保
set ttyfast               " カーソル移動高速化
set autoread              " 外部でファイルに変更がされた場合は読みなおす
set virtualedit=onemore   " 行末の1文字先までカーソルを移動できるように
set smartindent           " スマートインデント
set autoindent            " オートインデント
set visualbell            " ビープ音を可視化
set showmatch             " 括弧入力時の対応する括弧を表示
set laststatus=2          " ステータスラインを常に表示
set wildmode=list:longest " コマンドラインの補完

" 全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

"INSERTモードのときだけ横線解除
augroup set_cursorline
  autocmd!
  autocmd InsertEnter,InsertLeave * set cursorline!  "redraw!
augroup END

" Tab系
set list listchars=tab:\▸\- " 不可視文字を可視化(タブが「▸-」と表示される)
set tabstop=2               " 行頭以外のTab文字の表示幅（スペースいくつ分）
set shiftwidth=2            " 行頭でのTab文字の表示幅
set softtabstop=2
set expandtab               "tabを空白に変換

" クリップボード
set clipboard=unnamed,autoselect " ヤンクした内容をクリップボードでも使えるようにする

"backspaceの挙動
set backspace=start,eol
