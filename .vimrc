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

let g:autofmt_autosave = 1 " auto fmt the file

" old settings
set hidden
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
Plugin 'ludovicchabant/vim-gutentags' " management for tags / help with auto complete
Plugin 'Valloric/YouCompleteMe' " auto completion
Plugin 'bling/vim-bufferline' " buffer tabs
Plugin 'vimwiki/vimwiki' " wiki for todos and stuff

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
let NERDTreeShowHidden = 1 " show hidden files on nerd tree
let NERDTreeQuitOnOpen = 1
autocmd StdinReadPre * let s:std_in=1 " start nerd tree when no file selected
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " start nerd tree when no file selected

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_enable_highlighting = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint', 'tslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_quiet_messages = { "level": "warnings" }

" TODO: check eslint, tslint and stylelint

" lightline
let g:lightline = {}
let g:lightline.separator = { 'left': '▶', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
let g:lightline.tabline = { 'left': [ ['tabs']  ], 'right': [ ['close']  ] }
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline

" vimwiki
let g:vimwiki_list = [{ 'path': '~/Dropbox/wiki' }]

"""""""""""""""""""""""""""""""""""""""""""""""
" Mapping section

map <Leader>o :NERDTreeToggle<CR>
" TODO: key binding not working...
map <Leader>c <plug>NERDComComment 
map <Leader>p :LeaderfFile<CR>

" Start esearch prompt autofilled with one of g:esearch.use initial patterns
call esearch#map('<Leader>f', 'esearch')

" Buffer

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
" nmap <leader>t :enew<cr>
nmap <leader>n :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>w :bp <BAR> bd #<CR>

