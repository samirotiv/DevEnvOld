runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set term=xterm-256color
set t_Co=256

filetype plugin indent on

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

syntax enable
set background=light
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
colorscheme solarized

set mouse=a
set ttymouse=xterm2

set laststatus=2
set statusline+=%F
set showtabline=2

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/global_ycm_extra_conf.py"
let g:ycm_min_num_of_chars_for_completion = 0
let g:ycm_autoclose_preview_window_after_completion = 1

:set tags=./tags;

if !exists("g:ycm_semantic_triggers")
	let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']


"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTreeTabsOpen | endif
let g:nerdtree_tabs_open_on_console_startup=2
map <C-n> :NERDTreeTabsToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeMouseMode=2



" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_python_flake8_post_args='--ignore=E128,E203,E225,E226,E231,E251,E265,E302,E305,E306,E501,W293'
let g:syntastic_python_flake8_post_args='--ignore=E,W'
