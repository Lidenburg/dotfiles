set nocompatible

" To install vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
call vundle#end()
filetype plugin indent on


" Various settings and preferences
" Vertical line at 80 chars
set cc=80
" Enable line numbers
set number
" Enable full mouser support
set mouse=a
" Set the width of tabs
set ts=4
" Enable tab completion for :e
set wildmenu
" Highlight all occurences of a word with '*'
set hlsearch
" Tags for OP2 linux kernel source
set tags=~/code/lxr/tags


" Color settings
" Enable 256bit color terminal
set t_Co=256
" Use theme https://github.com/tomasr/molokai
colo molokai

" Custom key bindings
nnoremap <C-t> :tabnew<CR>
" Bind CTRL+n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>


"Plugin options

" If NERDTree is the only window left open, close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
