set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
let g:ruby_host_prog = '$HOME/.rbenv/verisons/2.6.5/bin/neovim-ruby-host'

