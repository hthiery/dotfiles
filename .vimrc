call pathogen#infect()

set encoding=utf-8


syntax enable
set number
set ts=4
set laststatus=2
set hlsearch
set incsearch

" This is used for running vim in putty terminal with modified color palette.
if !has("gui_running")
"	let g:solarized_termtrans = 1
"	but now the font is not correct any more?!
endif

colorscheme solarized
set background=dark

set backspace=indent,eol,start


" Keep search matches in the middle of the window
nnoremap n nzzzv
nnoremap N Nzzzv

" ctags

" cscope


"Highlight unwanted space
"http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

"Cycling through listed buffers
nnoremap <f1> :bn<CR>
nnoremap <f2> :bp<CR>
nnoremap <f4> :bd<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" auto-reload modified .vimrc and .gvimrc
if has("autocmd")
	autocmd BufWritePost .vimrc source ~/.vimrc

	autocmd Filetype python set expandtab
	autocmd Filetype python set textwidth=79
	autocmd Filetype python set tabstop=8
	autocmd Filetype python set softtabstop=4
	autocmd Filetype python set shiftwidth=4
endif

if has("gui_running")
	set guioptions-=m "remove menu bar
	set guioptions-=T "remove toolbar
	set guioptions-=R "remove right scrollbar
	set guioptions-=L "remove left scrollbar
	set guifont=Inconsolata-dz_for_Powerline:h10:cANSI
endif

let s:solarized_termtrans = 0

" Tagbar plugin
let g:tagbar_ctags_bin='ctags.exe'
nnoremap <f8> :TagbarToggle<CR>

" Airline plugin
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" NERDtree
nnoremap <f7> :NERDTreeToggle<CR>
