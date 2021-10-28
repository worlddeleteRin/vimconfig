set nocompatible
set backspace=2
set number
set noai
filetype off

let python_highlight_all=1
syntax on
set clipboard=unnamed

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'neoclide/coc.nvim'
Plugin 'iamcco/coc-tailwindcss'
Plugin 'danilo-augusto/vim-afterglow'
call vundle#end()

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set fileformat=unix

" map keys
:map <S-s><S-s> :w<CR>

source ~/vcomments.vim
map <C-a> :call Comment()<CR>
map <C-b> :call Uncomment()<CR>

colorscheme one
set background=dark

if !has("gui_running")
    set t_Co=256
    set term=screen-256color
endif



autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux rename-window bash")
autocmd BufEnter * let &titlestring = ' ' . expand("%:t") 
set title
