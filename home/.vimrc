"(no)VimをなるべくVi互換にする
set nocompatible

"バックスペースキーの動作を決定する
"2:indent,eol,startと同じ
set backspace=2

""行番号を表示する
set number

"新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする
set autoindent

""検索で小文字なら大文字を無視、大文字なら無視しない設定
set smartcase

"(no)検索をファイルの末尾まで検索したら、ファイルの先頭へループする
set nowrapscan

"ペースト時にインデントしない
set paste

"インクリメンタルサーチを行う
set incsearch

"highlight matches with last search pattern
set hlsearch

"(no)ウィンドウの幅を超える行の折り返し設定
"set nowrap

"折り返し設定
set formatoptions+=mM
set textwidth=80

"タブ文字、行末など不可視文字を表示する
set list

"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch

"カーソルが何行目の何列目に置かれているかを表示する
set ruler

""新しい行を作ったときに高度な自動インデントを行う
set smartindent

"保存しないで他のファイルを表示することが出来るようにする
set hidden

""カレントバッファ内のファイルの文字エンコーディングを設定する
set fileencoding=utf-8

"Insertモードで<Tab> を挿入するのに、適切な数の空白を使う
set expandtab

"ファイル内の <Tab> が対応する空白の数
set tabstop=2

"自動インデントの各段階に使われる空白の数
set shiftwidth=2

"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab

"(no)ファイルを上書きする前にバックアップファイルを作る
set nobackup

"強調表示(色付け)のON/OFF設定
syntax on

"listで表示される文字のフォーマットを指定する
"※デフォルト eol=$ を打ち消す意味で設定
set listchars=tab:>-

"カーソルの上または下に表示する最小限の行数
set scrolloff=5

"ステータスラインを表示するウィンドウを設定する
"2:常にステータスラインを表示する
set laststatus=2

"ステータス行の表示内容を設定する
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" rubycomplete.vim (omnifunc is not setと言われないための対応)
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" 保存時に行末の空白削除
autocmd BufWritePre * :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/ /ge

" rails.vim
let g:rails_level=4
let g:rails_default_database="sqlite3"

""""""""""""""""""
" プラグイン設定
"
" usage:
" $ git clone https://github.com/Shougo/neobundle.vim ~/.vim/neobundle.vim.git
"
" [.vimrc]
" NeoBundle 'user_name/repository_name' # githubから取得
" NeoBundle 'script_name'               # vim-scriptsから取得
"
" [vim command]
" :NeoBundleInstall  # インストール
" :NeoBundleInstall! # アップデート
" :NeoBundleClean    # アンインストール
if has('vim_starting')
  set runtimepath+=~/.vim/neobundle.vim.git
endif
call neobundle#rc(expand('~/.vim/.bundle'))

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'

filetype on
filetype indent on
filetype plugin on
