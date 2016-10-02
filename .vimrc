set number
set mouse=a
set ts=4

set nocompatible
filetype off

" To install vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
call vundle#end()
filetype plugin indent on


" Bind CTRL+n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
" If NERDTree is the only window left open, close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"set statusline+=%oN
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Vertical line at 80 chars
set cc=80

" Color settings
set t_Co=256
" https://github.com/tomasr/molokai
colo molokai
