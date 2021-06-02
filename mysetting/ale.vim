"https://github.com/w0rp/ale/issues/1016

let g:ale_enabled = 1

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

"" javascript
"let g:ale_fixers['javascript'] = ['prettier']
"let g:ale_javascript_prettier_options = '--trailing-comma es5 --write'

" ruby
let g:ale_fixers['ruby'] = ['rubocop']
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_ruby_rubocop_options = '--rails'
