" This is for ignore files that you don't want to search
let g:ctrlp_user_command=['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" This is to use caching
let g:ctrlp_use_caching=0

