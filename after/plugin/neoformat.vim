let s:stylelint = {
            \ 'exe': 'stylelint',
            \ 'args': ['--fix', '--stdin-filename', '"%:t"'],
            \ 'stdin': 1,
            \ 'valid_exit_codes': [0, 2],
            \ }

" let s:customprettiereslint = {
"         \ 'exe': '/Users/brandoncc/.nvm/versions/node/v10.22.0/bin/prettier-eslint',
"         \ 'args': ['--stdin', '--stdin-filepath', '"%:p"'],
"         \ 'stdin': 1,
"         \ }
"

let s:cachedeslint_d = {
        \ 'exe': 'eslint_d',
        \ 'args': ['--cache', '--stdin', '--stdin-filename', '"%:p"', '--fix-to-stdout'],
        \ 'stdin': 1,
        \ }

let g:neoformat_css_stylelint = s:stylelint
let g:neoformat_less_stylelint = s:stylelint
let g:neoformat_sass_stylelint = s:stylelint
let g:neoformat_scss_stylelint = s:stylelint

let g:neoformat_enabled_css = ['stylelint']
let g:neoformat_enabled_less = ['stylelint']
let g:neoformat_enabled_sass = ['stylelint']
let g:neoformat_enabled_scss = ['stylelint']

" let g:neoformat_javascript_customprettiereslint = s:customprettiereslint
" let g:neoformat_javascriptreact_customprettiereslint = s:customprettiereslint
" let g:neoformat_typescript_customprettiereslint = s:customprettiereslint
" let g:neoformat_typescriptreact_customprettiereslint = s:customprettiereslint

let g:neoformat_javascript_cachedeslint_d = s:cachedeslint_d
let g:neoformat_javascriptreact_cachedeslint_d = s:cachedeslint_d
let g:neoformat_typescript_cachedeslint_d = s:cachedeslint_d
let g:neoformat_typescriptreact_cachedeslint_d = s:cachedeslint_d

let g:neoformat_enabled_javascript = ['cachedeslint_d']
let g:neoformat_enabled_javascriptreact = ['cachedeslint_d']
let g:neoformat_enabled_typescript = ['cachedeslint_d']
let g:neoformat_enabled_typescriptreact = ['cachedeslint_d']

let s:fishrubocop = {
        \ 'exe': 'rubocop',
        \ 'args': ['--auto-correct', '--stdin', '"%:p"', '2>/dev/null', '|', 'sed "1,/^====================\$/d"'],
        \ 'stdin': 1,
        \ 'stderr': 1
        \ }

let g:neoformat_ruby_fishrubocop = s:fishrubocop

let g:neoformat_enabled_ruby = ['fishrubocop']

let s:eruby_rufo = {
        \ 'exe': 'rufo',
        \ 'args': ['--filename', '"%:t"'],
        \ 'stdin': 1,
        \ 'valid_exit_codes': [0, 3]
        \ }

let g:neoformat_eruby_erubyrufo = s:eruby_rufo
let g:neoformat_enabled_eruby = ['erubyrufo']
