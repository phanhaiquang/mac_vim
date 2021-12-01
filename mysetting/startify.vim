" https://www.chrisatmachine.com/Neovim/11-startify/
" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

function! s:mapInfo()
    return [
                \ {'line': '----------- Telescope -----------'},
                \ {'line': 'ff    : find files'},
                \ {'line': 'fa    : find keyword'},
                \ {'line': 'fm    : list recent files'},
                \ {'line': 'fr    : list references'},
                \ {'line': 'fe    : list error and warning'},
                \ {'line': 'fd    : show definition'},
                \ {'line': 'fi    : show implementations'},
                \ {'line': 'fv    : show variables, method,..'},
                \ {'line': '<c-q> : send info to Quickfix'},
                \ {'line': '----------- COC -----------'},
                \ {'line': 'gd    : go to definition'},
                \ {'line': 'gr    : go to reference'},
                \ {'line': 'gi    : go to implementation'},
                \ {'line': 'gy    : go to type definition'},
                \ {'line': 'K     : open documentation'},
                \ {'line': ''},
                \ {'line': ',dp   : go to previous diagnostic'},
                \ {'line': ',dn   : go to next diagnostic'},
                \ {'line': ',rn   : rename'},
                \ {'line': ',ac   : code action'},
                \ {'line': ',ff   : quick fix'}
                \ ]
endfunction

" plugin to manage projects
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': function('s:mapInfo'),     'header': ['   key mapping']},
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Blog',
            \ '~/Code',
            \ '~/Pics',
            \ ]
let g:startify_session_autoload = 1


":SLoad       load a session
":SSave[!]    save a session
":SDelete[!]  delete a session
":SClose      close a session
:nmap ,ss :SSave!<CR>
:nmap ,os :SLoad<CR>

"" -- old way to manage session
"" save and restore session
":nmap ,ss :mksession! ~/.vim/session/
":nmap ,os :so ~/.vim/session/

let g:startify_custom_header = startify#pad(split(system('figlet -w 100 "NVIM v0.6.0"'), "\n"))

