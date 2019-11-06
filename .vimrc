set background=dark

set nocompatible
filetype off "required by vundle

"enable mouse
set mouse=a

"set colors
set t_Co=256

"setup powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Always show powerline status bar
set laststatus=2

"foldcolumn
set foldcolumn=3

"setup vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" The bundles you install will be listed here
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

Plugin 'dart-lang/dart-vim-plugin'

Plugin 'jeetsukumaran/vim-indentwise'

Plugin 'vim-scripts/indentpython.vim'

" A Vim Plugin for using ack in vim
Plugin 'mileszs/ack.vim'

" A Vim Plugin for file tree nav in Vim
Plugin 'scrooloose/nerdtree'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
"Plugin 'xuhdev/vim-latex-live-preview'

" A Vim Plugin for LaTex
Plugin 'lervag/vimtex'

call vundle#end()            " required
filetype plugin indent on

let python_highlight_all=2
syntax on
set encoding=utf-8

set backupdir=~/vimfiles/tmp,.
set directory=~/vimfiles/tmp,.

" Look for .tags file in current file dir + working dir + up + up
"set tags=~/.tags
set tags=./tags;,tags;

"set pastetoggle=<F10>
set expandtab

"configs for specific type types
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.c set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.h set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.hpp set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
setlocal foldmethod=expr

au BufNewFile,BufRead *.js,*.html,*.css: set tabstop=2 softtabstop=2 shiftwidth=2
set list
set listchars=tab:>-

"let mapleader = "\\"
"map <Leader>ve :sp $HOME/.vimrc<CR>
"map <Leader>vs :source $HOME/.vimrc<CR>

"map g] :stj<CR>
"map <Leader>= <C-W>=
"map <Leader><CR> <C-W>_
"map <Leader><Up> <C-W><Up><C-W>_
"map <Leader><Down> <C-W><Down><C-W>_
"map <Leader>1 99<C-W><Up><C-W>_
"map <Leader>2 99<C-W><Up>1<C-W>j<C-W>_
"map <Leader>3 99<C-W><Up>2<C-W>j<C-W>_
"map <Leader>4 99<C-W><Up>3<C-W>j<C-W>_
"map <Leader>5 99<C-W><Up>4<C-W>j<C-W>_
"map <Leader>d Oimport pdb; pdb.set_trace()^[

"split navigation
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
"nnoremap <C-]> g<C-]>

nmap <C-n> :NERDTreeToggle<CR>

set backspace=indent,eol,start

