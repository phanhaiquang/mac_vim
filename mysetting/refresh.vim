function! Refresh_repo()
  ":!~/bin/gen_tags ; rm -rf ~/.cache/ctrlp/*
  :!~/bin/gen_tags
endfunction

map <f5> :call Refresh_repo()<CR>:call UpdateProjectData()<CR>
