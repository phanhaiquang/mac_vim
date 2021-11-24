"CTRLP plugin
"map ff :CtrlP ~/public_html<CR>
let g:ctrlp_working_path_mode = 'ra'
map ff :CtrlP<CR>
map fb :CtrlPBuffer<CR>
map fm :CtrlPMRU<CR>
map ft :CtrlPTag<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/][\.](git|hg|svn)$'
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"let g:ctrlp_user_command = 'find %s -type f | egrep -v "\.git|tmp|\<log\>|coverage" | egrep -v "png$|jpg$|.keep|zip$|swp$|.idea|node_modules|vendor"'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:ctrlp_use_caching = 0
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_cache_dir = '~/.cache/ctrlp'

""tags/cscope
"set cscopetag
"let g:ctrlp_extensions = ['tag']
