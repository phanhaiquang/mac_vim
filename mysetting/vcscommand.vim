"map GIT (vcscommand plugin)
map ,gd :call ExecuteVCSCommand("VCSDiff")<CR>
map ,gl :call ExecuteVCSCommand("VCSLog")<CR>
map ,gb :call ExecuteVCSCommand("VCSBlame")<CR>

"avoid mapping
let VCSCommandDisableExtensionMappings=1
let VCSCommandDisableMappings=1

