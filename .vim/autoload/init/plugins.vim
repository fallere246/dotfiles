let s:dein_dir = expand('~/.vim/bundle')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &compatible
  set nocompatible
endif

" dein.vim をインストールしていない場合は自動インストール
if !isdirectory(s:dein_repo_dir)
  echo "install dein.vim..."
  execute '!git clone git://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

" プラグインの読み込み
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインはtomlから読み込む
  call dein#load_toml(s:dein_dir . '/rc/dein.toml', {'lazy': 0})
  call dein#load_toml(s:dein_dir . '/rc/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" 起動時にインストールされていないプラグインをインストールする
if dein#check_install()
  call dein#install()
endif
