"vim-test
let test#strategy = "dispatch"
map <Leader>tc :TestNearest<CR>
map <Leader>tl :TestLast<CR>
map <f9> :TestLast<CR>
autocmd BufRead,BufNewFile *_spec.rb map >> :execute "cd " projectroot#get()<CR>:TestNearest<CR>
