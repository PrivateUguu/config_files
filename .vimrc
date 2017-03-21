" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

set nocompatible
filetype off

set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode' 

call vundle#end()
filetype plugin indent on

" Zenburn enable
colorscheme zenburn

set nofoldenable

" Pymode configs
let g:pymode=1
let g:pymode_options_max_line_length=120
let g:pymode_options_colorcolumn=1
let g:pymode_indent=1
let g:pymode_run=1
let g:pymode_run_bind='<C-r>'
let g:pymode_lint = 1
let g:pymode_syntax=1
let g:pymode_python='python'

" Nerdtree map
map <C-n> :NERDTreeToggle<CR>
