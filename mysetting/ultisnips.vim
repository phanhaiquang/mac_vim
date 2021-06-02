"for snip & supertab
let g:UltiSnipsExpandTrigger='<c-l>'
"let g:UltiSnipsListSnippets = '<tab>'
"let g:UltiSnipsJumpForwardTrigger = '<c-j>'
"let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<c-h>'

"https://github.com/SirVer/ultisnips/issues/214

"testing
"let g:UltiSnipsSnippetDirectories=["ultisnips"]
"let g:UltiSnipsSnippetDirectories=$HOME.'/.vim/UltiSnips'

"function! CleverTab()
"  if pumvisible()
"    return "\<C-N>"
"  endif
"  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"    return "\<Tab>"
"  elseif exists('&omnifunc') && &omnifunc != ''
"    return "\<C-X>\<C-O>"
"  else
"    return "\<C-N>"
"  endif
"endfunction

"let g:ulti_expand_or_jump_res = 0 "default value, just set once                                                                                                                      
"function! Ulti_ExpandOrJump_and_getRes()                                                                                                                                             
"  call UltiSnips_ExpandSnippetOrJump()                                                                                                                                               
"  return g:ulti_expand_or_jump_res                                                                                                                                                   
"endfunction
""inoremap <NL> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0)?"":IMAP_Jumpfunc('', 0)<CR>
"inoremap <Tab> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0) ? "": CleverTab()<CR>

