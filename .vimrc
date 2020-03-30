call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

"set ls=2
set nocompatible
set showcmd

" Be smart about cases
set smartcase
set ignorecase

" Smart searching
set hlsearch
set incsearch

" Always show line numbers
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" Make sure there's always a few lines above or below the cursor
set scrolloff=5

set autoindent
set tabstop=4
set expandtab

" Always show the current position
set ruler
set cursorline
set cursorcolumn

" Show matching brackets
set showmatch

" Disable annoying beeps
set errorbells
set visualbell

" Cofigure backspace so that it works normally
set backspace=indent,eol,start

" Set syntax and color scheme
" Custum color schemes: orbital, lucius, apprentice, seoul256, distinguished,
"                       fahrenheit
" wombat256mod
syntax on
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
colorscheme lucius
"let g:seoul256_background = 233
set background=dark
set encoding=utf-8

autocmd FileType make setlocal noexpandtab

set guifont=Inconsolata\ For\ Powerline:h20
" set guifont=DroidSansMono\ Nerd\ Font:h10
set guioptions=e
" makes internal terminal work idk how
set guioptions+=!
set autoread

" Always show the status line
set laststatus=2

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" sets previous search term to null so sourcing vimrc does not highlight previous search
let @/ = ""

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_powerline_separators = 0
 " let g:tmuxline_theme = 'iceberg'
" let g:airline_left_sep=''
" let g:airline_right_sep=''

" autocmd WinNew * silent !AirlineToggleWhitespace
" if g:was_time == 1
" autocmd TabNew * let timer = timer_stop(timer)
" autocmd WinNew * let timer = timer_stop(timer)
" endif

" let g:webdevicons_enable = 1
" let g:webdevicons_enable_nerdtree = 1
" let g:webdevicons_enable_airline_tabline = 1
" let g:webdevicons_enable_airline_statusline = 1
" let g:webdevicons_enable = 1
" let g:webdevicons_conceal_nerdtree_brackets = 1
" let g:webdevicons_enable = 1

" Nerd Tree settings
" Close vim if only nerdtree window is present
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open nerdtree if vim was started without any file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Quit nerdtree on file open
let NERDTreeQuitOnOpen = 1
" let g:NERDTreeWinPos = "right"
map <C-n> :NERDTreeToggle<CR>

"set conceallevel=1
" let g:indentLine_conceallevel=1
let g:indentLine_enabled = 1
"let g:indentLine_color_term = 239
" let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
