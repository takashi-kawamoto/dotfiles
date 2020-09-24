"""""""""""""""""""""""""""""
" プラグイン設定 
"""""""""""""""""""""""""""""
""" Vundle.vim
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-jp/vimdoc-ja'

call vundle#end()
filetype plugin indent on

""" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 隠しファイルを表示する
let g:NERDTreeShowHidden=1

" ツリーを表示する
nnoremap <silent><C-e> :NERDTreeToggle<CR>

""" vim-airline
" テーマを設定する
let g:airline_theme = 'papercolor'

""" vim-jp/vimdoc-ja 
set helplang=ja,en

"""""""""""""""""""""""""""""
" 画面設定 
"""""""""""""""""""""""""""""
syntax on
" 行番号を表示する
set number

" カーソルが何行目の何列目に置かれているかを表示する
set ruler

" コマンドラインに使われる画面上の行数
set cmdheight=2

" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2

" ステータス行に表示させる情報の指定(どこからかコピペしたので細かい意味はわかっていない)
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title

" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu

" 入力中のコマンドを表示する
set showcmd

" 検索結果をハイライト表示する
set hlsearch

" 暗い背景色に合わせた配色にする
set background=dark

" タブ入力を複数の空白入力に置き換える
set expandtab

" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch

" 不可視文字を表示する
"set list

" 対応する括弧やブレースを表示する
set showmatch

" 改行時に前の行のインデントを継続する
set autoindent

" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

" タブ文字の表示幅
set tabstop=4
  
" Vimが挿入するインデントの幅
set shiftwidth=4

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" 行番号の色
highlight LineNr ctermfg=darkyellow

" 長いテキストは折り返す
set wrap

"""""""""""""""""""""""""""""
" ファイル・バックアップ 
"""""""""""""""""""""""""""""
" swapファイルは生成しない
set nowritebackup
set nobackup
set noswapfile

"""""""""""""""""""""""""""""
" マクロおよびキー設定
"""""""""""""""""""""""""""""
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>

" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 矢印移動を無効化
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" インサートモードのカーソル移動
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-h> <Left>
imap <C-l> <Right>

"""""""""""""""""""""""""""""
" その他設定
"""""""""""""""""""""""""""""
" ビープ音を無効化
set vb t_vb=
