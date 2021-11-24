" Theme
syntax enable
colorscheme OceanicNext

if has('nvim')
  " For Neovim 0.1.3 and 0.1.4
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
else
  set t_Co=256
  if &term =~ '256color'
    set t_ut=
  endif
end

" for vim 8, or neovim >= 0.1.5
if has("termguicolors")
  set termguicolors
endif

"set background=dark
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
autocmd ColorScheme OceanicNext highlight Normal ctermbg=235
colorscheme OceanicNext
