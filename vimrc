set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "let path = '~/some/path/here'
" "call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'Shougo/unite.vim'
"Plugin 'tpope/vim-rails.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'The-NERD-tree'

"vim color solarized
Bundle 'altercation/vim-colors-solarized'

" Markdown
"Plugin 'JamshedVesuna/vim-markdown-preview'
"let vim_markdown_preview_github=1
"let vim_markdown_preview_hotkey='<C-p>'

"SilverSearcher 
Bundle 'rking/ag.vim'

" scripts not on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
call vundle#end()

filetype plugin indent on     " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList          - list configured plugins
" " :PluginInstall(!)    - install (update) plugins
" " :PluginSearch(!) foo - search (or refresh cache first) for foo
" " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Plugin commands are not allowed.
" " Put your stuff after this line

"nnoremap <C-p> :Unite file_rec<CR>

" solarized
let g:solarized_termtrans=1 "use transparent bg
syntax enable
set background=dark
colorscheme solarized

:set nobackup
:set noswapfile

:set hlsearch
:set nowrap
:set tabstop=2 expandtab
:retab
:set shiftwidth=3
" :set foldmethod=indent
set encoding=utf-8

:map <F2> :cd %:p:h<CR>
