set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" On by default, turn it off for html
"let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['html'] }
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['ruby', 'javascript', 'javascript.jsx'], 'passive_filetypes': ['html'] }
let g:syntastic_html_tidy_ignore_errors = ["trimming empty"]

"ruby
let g:syntastic_ruby_exec = 'ruby'

" define when to run
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_echo_current_error=1
let g:syntastic_enable_balloons=1
let g:syntastic_ignore_files = ['\mnode_modules']

" define error/warning signs
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_warning_symbol = '⚠'
let g:go_list_type = "quickfix"

" javascript
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = '/usr/local/bin/eslint'
"let g:syntastic_quiet_messages = {
"        \ "!level":  "errors",
"        \ "type":    "syntax",
"        \ "regex":   '\m_.*is not defined',
"        \ "file:p":  ['\m.jsx'] }


highlight SyntasticErrorLine guibg=#2f0000
