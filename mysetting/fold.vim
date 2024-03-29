" disable fold to use nvim-treesitter
"au BufReadPre *css,*scss setlocal foldmethod=indent

"set foldlevelstart=1
"let javaScript_fold=1         " JavaScript
"let perl_fold=1               " Perl
"let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=3               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
"let xml_syntax_folding=1      " XML

"" space and ctrl-space
"function! IsFold()
"  return foldclosed(line('.')) != -1
"endfunction
""map ,ff setlocal foldmethod=indent
"nnoremap <expr> <C-@> IsFold() ? 'zR' : 'zM'
"nnoremap <expr> <Space> IsFold() ? 'zo' : 'zc'
