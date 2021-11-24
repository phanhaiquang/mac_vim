"https://github.com/w0rp/ale/issues/1016

let g:ale_enabled = 1
let g:ale_linters = {
\   'javascript': ['prettier', 'eslint'],
\   'ruby': ['rubocop', 'prettier'],
\   'eruby': ['erblint', 'erb', 'erubis', 'ruumba', 'tidy'],
\   'json': ['jsonlint'],
\}

let g:ale_fixers = {}
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 1
"let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 300

"let g:ale_open_list = 1

" navigate to next error
map ,ne <Plug>(ale_next)

" set error/warning signs
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

" common for all languages
let g:ale_fixers['*'] = ['remove_trailing_lines', 'trim_whitespace']

" javascript
let g:ale_fixers['javascript'] = ['prettier', 'eslint', 'prettier_standard']
"let g:ale_fixers['javascript'] = ['prettier_standard']
let g:ale_javascript_prettier_options = '--trailing-comma es5 --write'

" ruby
let g:ale_fixers['ruby'] = ['prettier', 'rubocop']
"let g:ale_ruby_rubocop_options = '--auto-correct-all --disable-uncorrectable'
"let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_ruby_rubocop_auto_correct_all = 1
let g:ale_ruby_rubocop_options = '-A'
let g:ale_ruby_rubocop_executable = '/usr/local/bin/rubocop-daemon-wrapper/rubocop'
let g:ale_ruby_prettier_options = '--trailing-comma es5 --write'

" erb ~/.vim/ftplugin/eruby.vim
let g:ale_fixers['eruby'] = ['erblint']
let g:ale_eruby_erubis_executable = 'bundle'
let g:ale_eruby_ruumba_executable = 'bundle'
let g:ale_eruby_erblint_executable = 'bundle'
let g:ale_eruby_erblint_options = '--autocorrect'

" tidy-html5: generate this file and manually edit it
" tidy -export-default-config > ~/.tidy_config
let g:ale_eruby_tidy_options = '-config ~/.tidy_config'
let g:ale_html_tidy_options = '-config ~/.tidy_config'
