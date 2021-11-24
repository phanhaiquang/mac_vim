" comment on the left by default
let g:NERDDefaultAlign = 'left'

" do not map anything by default
"let g:NERDCreateDefaultMappings = 0

let g:NERDCustomDelimiters = {
      \ 'vim': { 'left': '"' },
      \ 'systemverilog': { 'left': '//' },
      \ 'csh': { 'left': '#' },
      \ 'html': { 'left': '<!--', 'right': '-->' },
      \ 'eruby': { 'left': '<!--', 'right': '-->' }
      \ }

"" commenter
"map <c-j> :normal $V%,cc<CR>:normal $%<CR>
"map <c-k> :normal $V%,c <CR>
"map <c-J> :normal V%,cc<CR>:normal $%<CR>
"map <c-K> :normal V%,c <CR>
" somehow, vim map <c-/> to <c-_>
nmap ,c<space>  <Plug>NERDCommenterToggle<CR>
vmap ,c<space>  <Plug>NERDCommenterToggle<CR>
nmap <C-_>   <Plug>NERDCommenterToggle<CR>
vmap <C-_>   <Plug>NERDCommenterToggle<CR>
