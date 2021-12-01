" move current line to one line below/above
" this should match with ~/.vim/mysetting/supertab.vim
nnoremap <expr><c-j> pumvisible() ? "\<c-n>" : ":m .+1<CR>=="
nnoremap <expr><c-k> pumvisible() ? "\<c-p>" : ":m .-2<CR>=="
inoremap <expr><c-j> pumvisible() ? "\<c-n>" : "<Esc>:m .+1<CR>==gi"
inoremap <expr><c-k> pumvisible() ? "\<c-p>" : "<Esc>:m .-2<CR>==gi"
vnoremap <expr><c-j> pumvisible() ? "\<c-n>" : ":m '>+1<CR>gv=gv"
vnoremap <expr><c-k> pumvisible() ? "\<c-p>" : ":m '<-2<CR>gv=gv"
