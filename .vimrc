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
Plugin 'tpope/vim-dispatch'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'dense-analysis/ale'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'tpope/vim-repeat'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ervandew/supertab'
Plugin 'isruslan/vim-es6'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'thoughtbot/vim-rspec'
Plugin 'Valloric/YouCompleteMe'
Plugin 'leafgarland/typescript-vim'
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
colorscheme molokai
let g:airline_theme='molokai'
set background=dark
let g:jsx_ext_required = 1

set encoding=utf-8
set textwidth=80
set spell

" for YouComepleteMe have to go to plugin folder to run install script
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ALE Plugin Linter Settings
let g:ale_linters = {
  \ 'ruby':['rubocop','solargraph'],
  \ }
let g:ale_completion_enabled = 1

" ALE Status Line Config
function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   '😞 %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction
set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}


set ts=2 sw=2 et
let g:indent_guides_enable_on_vim_startup = 1
let g:ctrlp_show_hidden = 1
set rtp+=/usr/local/opt/fzf
let g:NERDTreeShowBookmarks=1
set hlsearch
set incsearch
let mapleader = " "

" fzf related commands , use control-P or this
let g:fzf_files_options =
  \ '--reverse ' .
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
let g:fzf_layout = { 'down': '~60%' }
let $FZF_DEFAULT_COMMAND = 'ag -g "" --hidden'

" use silver searcher for ctrl-p
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
" Reinforce Vim directions remove directional keys
nnoremap <Left> :echoe "use h" <CR>
nnoremap <Right> :echoe "use l" <CR>
nnoremap <Up> :echoe "use k" <CR>
nnoremap <Down> :echoe "use j" <CR>

" Personal Setting
map <C-n> :NERDTreeToggle<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>e :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
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

"  strip trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

nnoremap <leader>. :CtrlPTag<CR>
let g:autotagTagsFile="tags"
set tags=./tags;/
let g:rspec_command = "!bundle exec rspec {spec}"

set wildmenu
set wildmode=longest:full,full

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
au FileType perl set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
au FileType ruby set softtabstop=2 tabstop=2 shiftwidth=2 textwidth=79
set list listchars=tab:\ \ ,trail:·

let g:ycm_langauage_server =
  \ [
  \  {
  \    'name':'ruby',
  \    'cmdline':[ expand('/Users/scouttalent2/.rbenv/shims/solargraph'),'stdio'],
  \    'filetypes': ['ruby']
  \  }
  \ ]

