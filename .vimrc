set nocompatible

" To install vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
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
" Look for a tags file until home dir is hit
set tags=./tags;$HOME
" Always show the statusline
set laststatus=2
" Enable colors for syntax highlighting
syntax on

" Color settings
" Enable 256bit color terminal
set t_Co=256
" Use theme https://github.com/tomasr/molokai
" wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
colo molokai

" Custom key bindings
"nnoremap <C-t> :tabnew<CR>
" Bind CTRL+n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>


" Custom statusline
" Clear the statusline
set statusline=
set statusline=%#todo#
" Path to file and filename
set statusline+=[%<%F]
"set statusline+=%*
" row n/m (%of file)
set statusline+=%=\ row:%l/%L\ (%p%%)\ 
"column of file
set statusline+=\ col:%c

"Plugin options

" If NERDTree is the only window left open, close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Syntastic recommended settings
set statusline+=%#warningmsg#

" Better clipboard
set clipboard=unnamedplus

" Remove all the toolbars and scrollbar in gui vim
set guioptions-=T
set guioptions-=m
set guioptions-=r

" Fold away functions, but not loops
set foldmethod=syntax
set foldnestmax=1

" For python we want to fold based on indentation, otherwise it doesn't work
autocmd filetype python setlocal foldmethod=indent

" Bind function keys to switch to tabs
nnoremap <F1> 1gt
nnoremap <F2> 2gt
nnoremap <F3> 3gt
nnoremap <F4> 4gt
nnoremap <F5> 5gt
nnoremap <F6> 6gt

" Always open new tabs to the right, instead of left
set splitright

" Use space to insert a single character
nmap <space> i <esc>r

" Show all ctags matches
nnoremap <C-]> g<C-]>

" Add cscope files in current dir
cs add cscope.out

" Add cscope bindings to vim
"	0 or s: Find this C symbol
"	1 or g: Find this definition
"	3 or c: Find functions calling this function
"	9 or a: Find places where this symbol is assigned a value
nmap <C-\> :cs find 0 <cword><CR>
nmap <C-\>s :cs find s <cword><CR>

" D as in defined, more logical
nmap <C-\>d :cs find g <cword><CR>

" X as in xref, more logical
nmap <C-\>x :cs find c <cword><CR>
nmap <C-\>a :cs find a <cword><CR>
