" indent
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set wrap! nu nobackup writebackup

" should use virtual-mode
map <C-W><C-D> :'q,'wd<CR>
map <C-W><C-Y> :'q,'wy<CR>

" jump to previous location when open a file
if has("autocmd")
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

set isfname-=,:

" set path to current directory
"set path+=.

" ???
let g:CSApprox_konsole = 1

"set guifont="courier new":h10:w5
"set guifont="ubuntu mono":h11:w5
set guifont=Monaco:h13
set autoread
au CursorHold * checktime
"for fish-shell
set shell=/bin/bash
if has('nvim')
  :set ignorecase smartcase
else
  :set ignorecase infercase
endif

set incsearch hlsearch
set ruler
set nocompatible
set nolist
set nostartofline
set autowriteall
let belloff="all"
set novisualbell

noremap + :

" for nativation performance
" https://andrewbrookins.com/tech/slow-scrolling-in-vim-and-macvim-on-os-x-increase-key-repeat-settings/
set nocursorline
set lazyredraw

" do not highlight syntax after this number for performance
set synmaxcol=150

set iskeyword+=-

runtime macros/matchit.vim

" do not hide quote in JSON
autocmd BufReadPost, BufNewFile *.json setlocal conceallevel=0
autocmd BufRead,BufNewFile javascript syntax=javascript
autocmd FileType json setlocal equalprg=python\ -m\ json.tool

" do not change tab to space in Makefile
autocmd FileType make setlocal noexpandtab

map ,ll :normal @e<CR>                           | "loop for a @e
map ,mm :call ToggleMouseSetting()<CR>           | "toggle mouse

map <F2> :update<CR>
imap <F2> <ESC>:update<CR>

" align
map == =%
map ,yj :normal V%y<CR>
map ,dj :normal V%d<CR>
map ''  ysiw'
map ""  ysiw"
map vv  [mV]M
map v{  [{V%
map ,ww :set wrap!

map <leader>pp :set invpaste<CR>
map ,nn :set invnu<CR>
map ,ww :set invwrap<CR>
map ,cd :call CdToCurrentPath()<CR>

" replace tab by spaces
map ,<tab><tab> :set tabstop=2 softtabstop=2 noexpandtab<CR>:retab!<CR>:set expandtab<CR>:retab!<CR>

"ctrl-s
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

