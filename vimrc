set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

source ~/.vim/plugins.vim
source ~/.vim/mapping.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Number
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible     " Use Vim settings, rather then Vi settings (much better!).
filetype plugin on   " load filetype plugins
filetype indent on   " load filetype indents
filetype on          " detect the type of file
set backspace=indent,eol,start	" more powerful backspacing

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on            " active coloration
colorscheme delek    " default coloration theme
set background=dark  " default background

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler        " show the cursor position all the time
set cursorline
set cmdheight=2  " the command bar is 2 high
set backspace=2  " make backspace work normal
set report=0     " tell us when anything is changed via :...
set noerrorbells " don't make noise
set ignorecase   " ignore case for searching

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch     " show matching brackets
set mat=5         " how many tenths of a second to blink matching brackets for
set hlsearch      " highlight searched for phrases
set incsearch     " BUT do highlight as you type you search phrase
set so=10         " Keep 10 lines (top/bottom) for scope
set noerrorbells  " no noise
set laststatus=2  " always show the status line
set showcmd       " display incomplete commands
set modeline      " display the current mode
set nostartofline " keep the cursor in the same colon when changing line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fo=tcrqn      " See Help (complex)
set ai            " autoindent
set si            " smartindent
set cindent       " do c-style identing
set softtabstop=3 " 2 spaces when pressing <tab> unify
set expandtab
set shiftwidth=3  " unify

autocmd FileType python call s:python_settings()
autocmd FileType cpp call s:cpp_settings()

function! s:python_settings()
	set softtabstop=4
	set shiftwidth=4
endfunction

function! s:cpp_settings()
	set softtabstop=2
	set shiftwidth=2
endfunction
