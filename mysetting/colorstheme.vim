set t_Co=256
if &term =~ '256color'
  set t_ut=
endif

"collor
"colorscheme github
"colorscheme desert
"colorscheme wombat
"colorscheme railscasts
":highlight Normal ctermfg=grey ctermbg=black

"colorscheme twilight
"colorscheme candycode
"colorscheme jellybeans
"let g:jellybeans_overrides = {
      "\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
      "\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
      "\              'attr': 'bold' },
      "\}
"let g:jellybeans_use_lowcolor_black = 0
"autocmd FileType * colorscheme jellybeans

"let blacklist = ['js']
"autocmd BufWritePre * if index(blacklist, &ft) < 0 
  
"endif
"let g:hybrid_use_Xresources = 1
"colorscheme lucius
"let g:lucius_style = 'dark'

"set background=dark
"colorscheme hybrid

"" for vim 8
if (has("termguicolors"))
  "let &t_8f="\e[38;2;%ld;%ld;%ldm"
  "let &t_8b="\e[48;2;%ld;%ld;%ldm"
  set termguicolors
endif

set background=dark
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
