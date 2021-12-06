" ALE also show the error, however it does not show error inline (diagnose)
" using coc enable this feature
lua << EOF
require'lspconfig'.pyright.setup{}
-- require'lspconfig'.html.setup{}
-- Javascript
-- require'lspconfig'.denols.setup{}
require'lspconfig'.tsserver.setup{}
-- Ruby
require'lspconfig'.solargraph.setup{}
-- require'lspconfig'.sorbet.setup{}
-- require'lspconfig'.typeprof.setup{}
require'lspconfig'.dartls.setup{}
EOF
