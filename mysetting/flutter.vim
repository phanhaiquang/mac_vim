" Enable Flutter menu
autocmd FileType dart :call FlutterMenu()

" Some of these key choices were arbitrary;
" it's just an example.
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>

"dart
let g:lsc_auto_map = v:true

" doc
"'GoToDefinition': <C-]>,
"'GoToDefinitionSplit': [<C-W>], <C-W><C-]>],
"'FindReferences': gr,
"'NextReference': <C-n>,
"'PreviousReference': <C-p>,
"'FindImplementations': gI,
"'FindCodeActions': ga,
"'Rename': gR,
"'DocumentSymbol': go,
"'WorkspaceSymbol': gS,
"'SignatureHelp': gm,"
