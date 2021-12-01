let g:AutoPairsFlyMode = 0
"let g:AutoPairsShortcutBackInsert = '<M-b>'
let g:AutoPairsShortcutBackInsert = '<c-u>'

autocmd FileType verilog let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"' }
autocmd FileType ruby     let b:AutoPairs = AutoPairsDefine({'\v(^|\W)\zsbegin': 'end//n', '\v(^|\W)\zsdef': 'end//n'})

