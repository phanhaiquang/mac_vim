if IsVscode()
  " easymotion
  map ; <Plug>(easymotion-prefix)
  map ;; ;w

  map z/ <Plug>(incsearch-fuzzy-/)
  "map f? <Plug>(incsearch-fuzzy-?)
  "map fg/ <Plug>(incsearch-fuzzy-stay)

  map cc $v%<c-/>

  nnoremap <expr> ca  ":g/\\<" . expand("<cword>") . "\\C\\>/s//" . input("") . "/g<CR>"

  nnoremap <c-]> <Cmd>call VSCodeNotify('editor.action.revealDefinition')<CR>
  nnoremap fa <Cmd>call VSCodeNotify('references-view.findReferences')<CR>
  nnoremap fd <Cmd>call VSCodeNotify('editor.action.revealDefinition')<CR>
endif
