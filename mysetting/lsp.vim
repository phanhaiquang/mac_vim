lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.denols.setup{}
require'lspconfig'.solargraph.setup{}
require'lspconfig'.sorbet.setup{}
require'lspconfig'.html.setup{}
EOF
