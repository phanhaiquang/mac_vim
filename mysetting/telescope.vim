"" Find files using Telescope command-line sugar.
"nnoremap ff <cmd>Telescope find_files<cr>
"nnoremap fg <cmd>Telescope live_grep<cr>
"nnoremap fb <cmd>Telescope buffers<cr>
"nnoremap fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap fa <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap fh <cmd>lua require('telescope.builtin').help_tags()<cr>
