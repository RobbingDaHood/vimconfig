set nocompatible
set hidden
set nocp
filetype plugin on
set relativenumber number
set undodir=~/.vim/undo_dir
set undofile
set clipboard=unnamedplus,unnamed
set hlsearch
set incsearch

call plug#begin() 

Plug 'https://github.com/md-img-paste-devs/md-img-paste.vim'  "Copy image from clipboard (in case of .md file), save it to disk and link it
Plug 'https://github.com/tpope/vim-eunuch' "Got it primarly for its Move
call plug#end()

" md-img-paste.vim setup to overwrite p
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
