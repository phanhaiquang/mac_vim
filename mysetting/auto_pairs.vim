let g:AutoPairsFlyMode = 0
"let g:AutoPairsShortcutBackInsert = '<M-b>'
let g:AutoPairsShortcutBackInsert = '<c-u>'

autocmd FileType verilog let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"' }

" bug ???  -->  sometimes, it does not work in neovim
" :e! to make it work again
