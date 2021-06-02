":map <C-W><C-P> :call TabListToggle()<CR>
":map <silent> <Leader>p <Plug>ToggleProject
":map <F8> :call TabListToggle()<CR>
:map \p <Plug>ToggleProject
:let mtl=0
" :function! TabListToggle()
" :if (g:mtl==0)
" :  let g:mtl=1
" :  normal \p
" :elseif (g:mtl==1)
" :  let g:mtl=2
" :  normal \p
" :  TlistOpen
" :else
" :  let g:mtl=0
" :  TlistClose
" :endif
" :endfunction

:function! TabListToggle()
:if (g:mtl==0)
:  let g:mtl=1
": call pathogen#runtime_append_all_bundles()
": call pathogen#helptags()
:  normal \p
:elseif (g:mtl==1)
:  let g:mtl=0
:  normal \p
:endif
:endfunction

"
:let col=50
:function! FillEnd()
:	normal $
:	if (col(".") > 50)
:		let g:col=70
:	endif
:	while (col(".") < g:col)
:		normal A 
:		normal $
:	endwhile
:endfunction
"
set wildmode=longest,full
"Mix 2 parts of text lines
:function! Mix()
:normal `q
:let i = line(".")
:normal `w
:let j = line(".")
:normal `e
:let k = line(".")
:let l = k
:while (i<=j)
: exec "normal ".k."G<CR>"
: normal 0y$
: exec "normal ".i."G$p<CR>"
: let i=i+1
: exec "normal ".k."Gdd<CR>"
:endwhile
:endfunction

"highlight a line
:map cl :call ToggleCurrentLine()<CR>
"toggle showing current line
:let g:cl=0
:function! ToggleCurrentLine()
:if (g:cl==0)
:  let g:cl=1
:  set cursorline
:elseif (g:cl==1)
:  let g:cl=0
:  set cursorline!
:endif
:endfunction

" use "alt" when using mouse to copy in vim
:map <ScrollWheelUp> <C-Y>
:map <ScrollWheelDown> <C-E>
:set mouse=
:set mousehide

:let lmouse=0
:function! ToggleMouseSetting()
:if (g:lmouse==0)
:  let g:lmouse=1
:  set mouse=a
:else
:  let g:lmouse=0
:  set mouse=
:endif
:endfunction

"go to current path (open file, or current dir)
:function! CdToCurrentPath()
:if (len(expand('%')) == 0)
:else
:cd %:h
:endif
:NERDTree
:endfunction


"go to current path (open file, or current dir)
map ,ww <C-W><C-W>
:function! ExecuteVCSCommand(command)

":if (expand('%') =~ "git diff" || expand('%') =~ "git log")
:if (expand('%') =~ "git ")
:q
:else
	:normal ,ww
	:if (expand('%') =~ "git ")
		:q
	:endif
:endif


:exec a:command
:endfunction

function! IsFold()
  return foldclosed(line('.')) != -1
endfunction

function! UpdateProjectData()
  let g:gitdir = projectroot#get()
  let g:proj_name = substitute(g:gitdir, "/", "_", "g")
  let cscope_file = expand("~/.project/" . g:proj_name . "/cscope.out")
  if filereadable(cscope_file)
    set nocscopeverbose
    exec 'cs add ' . cscope_file . ' ' . g:gitdir . ' -C '
    return
    set cscopeverbose
  endif
endfunction
