""-- lsp provider to find the cursor word definition and reference
"nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
""-- code action
"nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
"vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
""-- show hover doc
"nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
""-- show signature help
"nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
""-- rename
"nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
""-- preview definition
"nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
""-- show
"nnoremap <silent><leader>cd <cmd>lua
""require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
"nnoremap <silent><leader>cc <cmd>lua
""require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>
""-- jump diagnostic
"nnoremap <silent> [e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
"nnoremap <silent> ]e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>

"-- or use command LspSagaFinder
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
"-- or use command
nnoremap <silent><leader>ta :Lspsaga code_action<CR>
vnoremap <silent><leader>ta :<C-U>Lspsaga range_code_action<CR>
"-- or use command
nnoremap <silent>K :Lspsaga hover_doc<CR>
"-- scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
"-- scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
"-- or command
nnoremap <silent> gs :Lspsaga signature_help<CR>

"--and you also can use smart_scroll_with_saga to scroll in signature help win
"-- or command
nnoremap <silent>gr :Lspsaga rename<CR>
"-- close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`
"-- or use command
nnoremap <silent> gd :Lspsaga preview_definition<CR>

"can use smart_scroll_with_saga to scroll
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
"-- only show diagnostic if cursor is over the area
"-- or use command
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>
