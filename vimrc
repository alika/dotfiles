:set runtimepath^=~/.vim/bundle/ctrlp.vim
:set nocompatible
filetype plugin on

:set nobackup
:set noswapfile

:set hlsearch
:set nowrap
:set tabstop=3
:set shiftwidth=3
:set foldmethod=indent

"colorscheme darkblue
"colorscheme dw_green

:map <F2> :cd %:p:h<CR>

"au FileType xml exe ":silent 1, $!xmllint --format --recover - 2>/dev/null"
