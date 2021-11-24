"cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
"au BufNewFile,BufRead * call UpdateProjectData()

if has("cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cspc=3
    set cst
    set csverb
endif

"nmap fa :cs find s <C-R>=expand("<cword>")<CR><CR><Tab>
"nmap fs :cs find s <C-R>=expand("<cword>")<CR><CR><Tab>
"nmap fd :cs find g <C-R>=expand("<cword>")<CR><CR><Tab>
"nmap fn :cstag <C-R>=expand("<cword>")<CR><CR>
"nmap fp <C-T>

" ignore message \"Add cscope database\" when launching
set nocscopeverbose

:if !empty(glob("cscope.out"))
  :cscope add cscope.out
:endif

nmap fs :cs find s <cword><CR>
nmap fg :cs find g <cword><CR>
nmap fn :cs find g <cword><CR>
nmap fc :cs find c <cword><CR>
nmap ft :cs find t <cword><CR>
"nmap ff :cs find f <cword><CR>
nmap fd :cs find d <cword><CR>

" find where assign value for this
nmap fa :cs find a <cword><CR>

set nohlsearch

nmap <c-]> :cstag <C-R>=expand("<cword>")<CR><CR>
