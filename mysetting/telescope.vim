" Using Lua functions
" to go project root dir before run to find all 
nnoremap ff :ProjectRootCD<CR><cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap fa :ProjectRootCD<CR><cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap fb :ProjectRootCD<CR><cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap fg :ProjectRootCD<CR><cmd>lua require('telescope.builtin').git_bcommits()<cr>

nnoremap fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap fm <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap fr <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap fv <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>
nnoremap fe <cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>
nnoremap fd <cmd>lua require('telescope.builtin').lsp_definitions()<cr>
nnoremap fi <cmd>lua require('telescope.builtin').lsp_implementations()<cr>
nnoremap ft <cmd>lua require('telescope.builtin').treesitter()<cr>

"lua << EOF
"  require('telescope').setup {
"    mappings = {
"      n = {
"        ["<C-j>"] = require('telescope.actions').move_selection_previous,
"        ["<C-k>"] = require('telescope.actions').move_selection_next,
"        }
"      }
"    }
"EOF
