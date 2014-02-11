call pathogen#infect()

set encoding=utf-8


syntax enable
set number
set ts=4
set laststatus=2
set hlsearch


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

"Highlight unwanted space
"http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/


nnoremap <f1> :bN<CR>
nnoremap <f2> :bn<CR>
nnoremap <f4> :bd<CR>
