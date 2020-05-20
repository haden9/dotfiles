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
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'rking/ag.vim'
Plugin '4Evergreen4/vim-hardy'
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'epilande/vim-react-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'prettier/vim-prettier'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --all' }

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
" Disable auto tab for js files
" autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
set expandtab
retab
set list
set noswapfile
highlight ColorColumn ctermbg=darkgrey
let &colorcolumn="80,".join(range(100,999),",")

" Vim file/dir options
set listchars=tab:>-,trail:~,extends:>,precedes:<
autocmd FileType ruby,eruby,yaml,css,scss,javascript,sass,jsx autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>
autocmd BufEnter * silent! lcd %:p:h

" indentLine
let g:indentLine_color_term = 239

" vim-ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

" ctrlp-vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/coverage/*,*/log/*,*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

" silver_searcher
let g:ag_prg="/usr/local/bin/ag -H --nocolor --nogroup --ignore-dir=log --ignore-dir=tmp --column --vimgrep"

" Trigger config UtilSnips
let g:UltiSnipsExpandTrigger="<C-l>"

" prettier Settings Start
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier

" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 80

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'true'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'avoid'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'none'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'
" prettier Settings End

" You Complete Me
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
" End You Complete Me
