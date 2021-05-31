" Linters and fixers for ale
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}
let g:ale_fix_on_save =1
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️ '

