call pathogen#infect()

set encoding=utf-8


syntax enable
set number
set ts=4
set laststatus=2
set hlsearch
set incsearch


set background=dark
colorscheme solarized

set backspace=indent,eol,start


" Keep search matches in the middle of the window
nnoremap n nzzzv
nnoremap N Nzzzv

" ctags

" cscope

" Tagbar plugin
let g:tagbar_ctags_bin='ctags.exe'
nnoremap <f8> :TagbarToggle<CR>

" Airline plugin
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" NERDtree
nnoremap <f7> :NERDTreeToggle<CR>


"Highlight unwanted space
"http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

nnoremap <f1> :bN<CR>
nnoremap <f2> :bn<CR>
nnoremap <f4> :bd<CR>

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

