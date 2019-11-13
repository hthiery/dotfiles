" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'

Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"Plug 'valloric/vim-indent-guides'

Plug 'morhetz/gruvbox'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" deoplate for python
Plug 'zchee/deoplete-jedi'

Plug 'nlknguyen/c-syntax.vim'
Plug 'vim-scripts/gtk-vim-syntax'
Plug 'mfukar/robotframework-vim'

let g:deoplete#enable_at_startup = 1


Plug 'ryanoasis/vim-devicons'
" Initialize plugin system
call plug#end()

"call pathogen#infect()

set encoding=utf-8


syntax enable       " enable syntax processing
set number          " show line numbers
set cursorline      " highlight current line
set tabstop=4       " number of visual spaces per TAB
set shiftwidth=4
set laststatus=2
set colorcolumn=80

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set hidden

set wildmenu            " visual autocomplete for command menu

set scrolloff=5

set smartindent
set autoindent

colorschem gruvbox
set background=dark
"" colorscheme solarized
"let base16colorspace=256  " Access colors present in 256 colorspace
""colorschem base16-chalk
"colorschem base16-bright

set backspace=indent,eol,start

" ---------------------------------------------------------
" Disable beep and flash with an autocmd
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=


" ---------------------------------------------------------
" Keep search matches in the middle of the window
nnoremap n nzzzv
nnoremap N Nzzzv

" ctags

" cscope

" ---------------------------------------------------------
" UNDO support
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000


" ---------------------------------------------------------
"Highlight unwanted space
"http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" ---------------------------------------------------------
" remove trailing whitespaces
nnoremap <F9>  :%s/\s\+$//<CR>


" ---------------------------------------------------------
"Cycling through listed buffers
"nnoremap <f1> :bn<CR>
"nnoremap <f2> :bp<CR>
"nnoremap <f4> :bd<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>


" ---------------------------------------------------------
" auto-reload modified .vimrc and .gvimrc
if has("autocmd")
  autocmd BufWritePost .vimrc source ~/.vimrc

  autocmd Filetype python set expandtab
  autocmd Filetype python set textwidth=79
  autocmd Filetype python set tabstop=8
  autocmd Filetype python set softtabstop=4
  autocmd Filetype python set shiftwidth=4

  autocmd Filetype robot set expandtab
  autocmd Filetype robot set shiftwidth=4
  autocmd Filetype robot set softtabstop=4

  autocmd Filetype html set expandtab
  autocmd Filetype html set shiftwidth=2
  autocmd Filetype html set softtabstop=2

  if v:version >= 703
    highlight OverLength ctermbg=red ctermfg=white guibg=red
    autocmd Filetype * match none
    autocmd Filetype python,c,sh set colorcolumn=81
    autocmd Filetype python,c,sh match OverLength /\%81v.\+/
  endif
endif

if has("gui_running")
  set guioptions-=m "remove menu bar
  set guioptions-=T "remove toolbar
  set guioptions-=R "remove right scrollbar
  set guioptions-=L "remove left scrollbar
  set guifont=Inconsolata-dz_for_Powerline:h11:cANSI
endif

let s:solarized_termtrans = 0

" ---------------------------------------------------------
" Tagbar plugin
let g:tagbar_ctags_bin='ctags.exe'
nnoremap <f8> :TagbarToggle<CR>

" ---------------------------------------------------------
" Airline plugin
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'
"let g:airline_theme='powerlineish'
"let g:airline_theme='base16'
"let g:airline_theme='bubblegum'
"let g:airline_theme='luna'
"let g:airline_theme='solarized'
"let g:airline_theme='dark'

" ---------------------------------------------------------
" NERDtree
nnoremap <f3> :NERDTreeToggle<CR>

nnoremap \  :Ag
"
" ---------------------------------------------------------
" gitgutter
set updatetime=100


" ---------------------------------------------------------
" CtrlP
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


" ---------------------------------------------------------
" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


" ---------------------------------------------------------
" Project
" before call project#rc()
"let g:project_enable_welcome = 0
"" if you want the NERDTree integration.
"let g:project_use_nerdtree = 1
"set rtp+=~/.vim/bundle/vim-project/
"
"if !empty(glob("~/.vim_projects"))
"	source ~/.vim_projects
"endif
