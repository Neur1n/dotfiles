scriptencoding utf-8

"********************************************************* {luochen1990/rainbow
nnoremap <leader>rp :RainbowToggle<CR>
let g:rainbow_active = 1
" }

"*********************************************************** {majutsushi/tagbar
nnoremap <leader>tb :TagbarOpenAutoClose<CR>
let g:tagbar_iconchars = ['►', '▼'] " 
let g:tagbar_show_linenumbers = -1
let g:tagbar_silent = 1
let g:tagbar_sort = 0
"let g:tagbar_autoclose = 1
" }

"********************************************************** {mhinz/vim-startify
let g:startify_fortune_use_unicode = 1
let g:startify_session_dir = '$VIMCONFIG/recovery/session'

if strftime('%M') % 3 == 0
    let b:greeting = startify#fortune#boxed()
elseif strftime('%M') % 3 == 1
    let b:greeting = b:greetings['hello']
else
    let b:greeting = b:greetings['vim']
endif

if strftime('%H') < 12
    let b:animal = b:animals['cow']
elseif strftime('%H') < 18
    let b:animal = b:animals['lion']
else
    let b:animal = b:animals['moose']
endif
let g:startify_custom_header = map(b:greeting + b:animal, "\"   \".v:val")
" }

"************************************************************* {mileszs/ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
nnoremap <Leader>ag :Ack!<Space>
" }

"************************************************************* {morhetz/gruvbox
" let g:gruvbox_improved_strings=1
" let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_improved_warnings=1
let g:gruvbox_italic=1
let g:gruvbox_underline=1
let g:gruvbox_undercurl=1
" }

"*********************************************************** {neoclide/coc.nvim
set completeopt=menuone,noinsert,noselect
set hidden

function! s:check_back_space() abort
  let a:col = col('.') - 1
  return !a:col || getline('.')[a:col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<Tab>" : coc#refresh()
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-reference)
nmap <leader>rn <Plug>(coc-rename)

" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>\<CR>" : "\<CR>"

" nmap <C-p> <Plug>(coc-diagnostic-prev)
" nmap <C-n> <Plug>(coc-diagnostic-next)

" highlight link CocErrorSign Error_
" highlight link CocWarningSign Warning_
" highlight link CocInfoSign Warning_
" highlight link CocHintSign Warning_
"}

"************************************************************ {SirVer/ultisnips
let g:UltiSnipsExpandTrigger = '<C-s>'
" let g:UltiSnipsRemoveSelectModeMappings = 0
let g:UltiSnipsJumpForwardTrigger = '<C-f>'
let g:UltiSnipsJumpBackwardTrigger = '<C-b>'
" }

"************************************************************* {nermake/nermake
call neomake#configure#automake({
\   'TextChanged': {},
\   'InsertLeave': {},
\   'BufWritePost': {'delay': 0},
\   'BufWinEnter': {},
\ }, 500)

" 
let g:neomake_error_sign = {'text': '✘'}
let g:neomake_warning_sign = {'text': ''}
let g:neomake_message_sign = {'text': ''}
let g:neomake_info_sign = {'text': ''}

" {linter
let g:neomake_cpp_enabled_makers = ['clang', 'cpplint']
let g:neomake_cpp_clang_exe = 'clang-7'
let g:neomake_cpp_cpplint_exe = 'cpplint'

let g:neomake_c_enabled_makers = ['clang']
let g:neomake_c_clang_exe = 'clang-7'

let g:neomake_python_enabled_makers = ['pyflakes', 'pycodestyle', 'pydocstyle']
let g:neomake_python_pyflakes_exe = 'pyflakes'
let g:neomake_python_pycodestyle_exe = 'pycodestyle'
let g:neomake_python_pydocstyle_exe = 'pydocstyle'
" }
" }

"*********************************************************** {Yggdroot/LeaderF
let g:Lf_ShowHidden=1
" }