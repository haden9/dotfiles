set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Other Plugins
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'szw/vim-tags'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Vim options
syntax on
set nocompatible
set number
set tabstop=2
set shiftwidth=2
set expandtab
retab
set list
set noswapfile
highlight ColorColumn ctermbg=darkgrey
let &colorcolumn="80,".join(range(100,999),",")

" Vim file/dir options
set listchars=tab:>-,trail:~,extends:>,precedes:<
autocmd FileType ruby,eruby,yaml,css,scss,javascript,sass autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>
autocmd BufEnter * silent! lcd %:p:h

" indentLine
let g:indentLine_color_term = 239

" ack-vim
let g:ackprg="ack -H --nocolor --nogroup --ignore-dir=log --ignore-dir=tmp --column"

" vim-ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

" vim-tags
set tags=~/tags
let g:vim_tags_auto_generate = 1

" ctrlp-vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/coverage/*,*/log/*,*/tmp/*,*.so,*.swp,*.zip
