set nocompatible              " be iMproved, required
filetype on                  " required
syntax on
filetype indent on
filetype plugin on
set nu!
set guifont=Cascadia\ Code:h14
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ngmy/vim-rubocop'
Plugin 'craigemery/vim-autotag'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-endwise'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'tpope/vim-repeat'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ervandew/supertab'
Plugin 'isruslan/vim-es6'
Plugin 'junegunn/fzf.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
set background=dark
let g:jsx_ext_required = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set encoding=utf-8
set textwidth=80
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set ts=2 sw=2 et
let g:indent_guides_enable_on_vim_startup = 1
let g:ctrlp_show_hidden = 1
set rtp+=/usr/local/opt/fzf
let g:NERDTreeShowBookmarks=1
set hlsearch
set incsearch
let mapleader = " "

" use silver searcher for ctrl-p
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_cachin = 0
" Reinforce Vim directions remove directional keys
nnoremap <Left> :echoe "use h" <CR>
nnoremap <Right> :echoe "use l" <CR>
nnoremap <Up> :echoe "use k" <CR>
nnoremap <Down> :echoe "use j" <CR>

" Personal Setting
map <C-n> :NERDTreeToggle<CR>
" Normal Mode Mappings
nmap 0 ^
nmap <Leader>f :FZF <CR>
nmap <Leader>s :Ag! <CR>
nmap <Leader>h :nohl <CR>
nmap j gj
nmap k gk
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"let g:vimrubocop_config = 
let g:vimrubocop_keymap = 0

" Insert Mode Mappings
imap jj <esc>

" Bang version of Ag the_silver_searcher with preview
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" automatically rebalance windows on vim resize
 autocmd VimResized * :wincmd =
 autocmd Filetype help nnoremap <buffer>q :q<CR>
" zoom a vim pane, <C-w>= to re-balance
 nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
 nnoremap <leader>= :wincmd =<cr>
" Command alias for typoed commands
 command! Q q
 command! Qall qall
 command! QA qall
 command! E e

 augroup numbertoggle
   autocmd!
   autocmd InsertLeave * set nornu
   autocmd InsertEnter * set rnu
 augroup END

 set colorcolumn=80
 set cursorline

nnoremap <leader>. :CtrlPTag<CR>
let g:autotagTagsFile="tags"
set tags=./tags;/
