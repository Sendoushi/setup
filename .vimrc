set nocompatible
filetype off
set clipboard=unnamed,unnamedplus " default the clipboard

" set layout colors
syntax on 
" colorscheme darkblueA
set t_Co=256
set background=dark
colorscheme dracula

" fix backgrounds on terminal
hi Normal ctermbg=none
highlight NonText ctermbg=none

" keep N lines/columns when scrolling
set scrolloff=4
set sidescroll=4

" set general settings for vim
set number "line numbers
set cursorline "color the cursorline
set autoindent "auto indenting
set incsearch "search as characters are entered
set hlsearch "higlight matches

" set backspace
set backspace=indent,eol,start

" old settings
set title
set number
set history=1000
set nofoldenable
set laststatus=2
set encoding=utf-8
set showmatch
set shiftwidth=2
set softtabstop=2
set expandtab

set t_ut=

"""""""""""""""""""""""""""""""""""""""""""""""
" Plugin section

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" general system
Plugin 'dracula/vim' " colorscheme
Plugin 'eugen0329/vim-esearch' " search files
Plugin 'Yggdroot/LeaderF' " another fuzzy search
Plugin 'itchyny/lightline.vim' " better status bar
Plugin 'terryma/vim-multiple-cursors' " multiple cursors
Plugin 'scrooloose/nerdtree' " tree of files
Plugin 'Xuyuanp/nerdtree-git-plugin' " plugin for nerdtree to show git status
Plugin 'Shougo/vimproc.vim' " interactive command execution
Plugin 'airblade/vim-gitgutter' " editor git gutter
Plugin 'jiangmiao/auto-pairs' " parenthesis, brackets...
Plugin 'scrooloose/nerdcommenter' " comment/uncomment plugin 
Plugin 'nathanaelkane/vim-indent-guides' " show indent guides
Plugin 'chrisbra/NrrwRgn' " edit code on the side

" linters
Plugin 'editorconfig/editorconfig-vim' " editorconfig related
Plugin 'vim-syntastic/syntastic' " powerful code analysis

" syntaxes and language helpers
Plugin 'mattn/emmet-vim' " enables emmet
Plugin 'leafgarland/typescript-vim' " typescript
Plugin 'Quramy/tsuquyomi.git' " typescript checker
Plugin 'rust-lang/rust.vim' " rust
Plugin 'pangloss/vim-javascript' " javascript

call vundle#end()            
filetype plugin indent on   

" nerdtree
let NERDTreeShowHidden=1 " show hidden files on nerd treeA
autocmd StdinReadPre * let s:std_in=1 " start nerd tree when no file selected
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " start nerd tree when no file selected

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run eslint --'

" TODO: check eslint, tslint and stylelint

" lightline
" TODO: git branch, git status and project might be interesting

"""""""""""""""""""""""""""""""""""""""""""""""
" Mapping section

map <Leader>o :NERDTreeToggle<CR>
" TODO: key binding not working...
map <Leader>c <plug>NERDComComment 
map <Leader>p :LeaderfFile<CR>

" Start esearch prompt autofilled with one of g:esearch.use initial patterns
call esearch#map('<Leader>f', 'esearch')
