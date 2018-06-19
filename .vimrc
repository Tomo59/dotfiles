"--------------------------------------------------------------
" plugins
"--------------------------------------------------------------
call plug#begin('~/.vim/plugins_by_vimplug')
Plug 'jlanzarotta/bufexplorer'
call plug#end()

if empty(glob("~/.vim/plugins_by_vimplug"))
  PlugInstall
endif


"--------------------------------------------------------------
" vim options
"--------------------------------------------------------------
set nocompatible               " get rid of vi compatibility
set nobackup                   " don't keep a backup file
set viminfo='20,\"50           " read/write a .viminfo file, don't store more than
                               " 50 lines of registers
set history=50                 " keep 50 lines of command line history
set textwidth=0                " don't wrap words by default
set wildmode=longest,list,full " wildchar completion mode
set hlsearch                   " highlight search
set expandtab                  " tab expand to space
set tabstop=2                  " number of spaces that a <Tab> in the file counts for
set shiftwidth=2               " number of spaces to use for each step of (auto)indent
set mouse=a                    " allow to resize and copy/paste without selecting text outside of the window
set title                      " change terminal title
set ttimeoutlen=50             " ms waited for a key code/sequence to complete. Allow faster insert to normal mode
set complete=.,w,b,u           " specifies how keyword completion works when CTRL-P or CTRL-N are used
set incsearch                  " Incremental search
set showcmd                    " in Visual mode the size of the selected area is shown
set showmatch                  " Show matching brackets.
set ruler                      " show the cursor position all the time
set ignorecase smartcase       " pattern with at least one uppercase character: search becomes case sensitive
set cscopetag                  " cstag performs the equivalent of tjump when searching through tags file
set cscopetagorder=1           " tag files searched before cscopte database
runtime! ftplugin/man.vim      " allow man to be displayed in vim
runtime! macros/matchit.vim    " allow usage of % to match 'begin end' and other '{ }' kind of pairs



setlocal clipboard=
setlocal ts=2
setlocal sw=2
setlocal sts=2


if has("syntax")
  syntax on             " Default to no syntax highlightning
endif

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.d

" We know xterm-debian is a color terminal
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
  set t_Co=16
  set t_Sf=^[[3%dm
  set t_Sb=^[[4%dm
endif

"""""""""""""""""""""""""""""""""""""""""
" Options depending of user setup
"""""""""""""""""""""""""""""""""""""""""

" If using a dark background within the editing area and syntax highlighting
set background=dark

"""" use ; as leader key (instead of backslash)
let mapleader = ";"
" map ; :

""""" Let all buffers in memory. This allow to :
"       - have a separate history for each buffer
"       - switch buffer without saving
set hidden
set list
set listchars=nbsp:¬
