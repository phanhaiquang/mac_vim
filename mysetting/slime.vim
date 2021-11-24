let g:slime_target = "tmux"
let g:slime_socket_name = "default"

" Explanation:
"   g_    : last non-blank character
"   %     : match it (to highlight a block of command)
func! SlimeConfigOrSend()
  if exists("g:slime_config_done")
    SlimeSend
    normal jVg_%
  else
    SlimeConfig
    normal Vg_%
    let g:slime_config_done=1
  endif
endfunc

map  ,sl :call SlimeConfigOrSend()<CR>
vmap ,sl <c-c><c-c>'>jVg_%
