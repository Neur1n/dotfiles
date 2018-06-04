set nocompatible
set fileformat=unix    " The following two make Vim create unix file by default
set fileformats=unix,dos

"======================================================== <Displaying language>
let $LANG = 'en'                                         " set message language
set langmenu=en                                             " set menu language

"========================================================= <Comment Formatting>
augroup comment_format
    autocmd FileType * set fo-=ro       " turn off insertion of comment leaders
    autocmd FileType * set fo+=j   " remove a comment leader when joining lines
augroup END

"================================================================ <UI Settings>
if has('gui_running')
    nnoremap <C-F9> :if &go=~#'L'<Bar>set go-=L<Bar>else<Bar>set go+=L<Bar>endif<CR>
    nnoremap <C-F10> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
endif

if has('syntax')
    syntax on
    if has('gui_running')
        set background=dark
        colorscheme solarized
        let g:solarized_contrast="high"
    else
        colorscheme molokai
    endif
endif

"======================================================================= <Misc>
augroup pwd
    au BufEnter * silent! lcd %:p:h                            " auto cd to pwd
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

if has('mouse')
    set mouse=a
endif

"=================================================================== <Encoding>
if has('multi_byte')
    if &termencoding ==# ''
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    set fileencodings=utf-8,gbk,gb2312,gb18030
endif

"==================================================================== <General>
set autoindent                                           " set auto indentation
set backspace=indent,start                       " for vim-latex, see issue #53
set colorcolumn=80                                          " show right margin
set cursorline                                          " highlight current row
set expandtab shiftwidth=4 softtabstop=4     " set <Tab> width to be 4 <space>s
set tabstop=4                                " make real <Tab> to be width of 4
set hlsearch
set iminsert=0 imsearch=0                                " make IME more usable
set foldmethod=indent                      " fold code according to indentation
set foldlevelstart=99                              " start with no folds closed
set guifont=mononoki\ NF:h10                                 " set default font
set incsearch                                              " incremental search
set lines=30 columns=120                                  " initial window size
set linespace=0                                         " set line spacing to 0
set number                                                   " show line number
set relativenumber                                       " relative line number
set showcmd                                                 " show pressed keys
set wildmenu                                 " show possible matches when <Tab>
set tags+=../tags

augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/3
augroup END

"================================================================== <Splitting>
set splitright                                            " split on right side
set splitbelow                                                 " split on below

"================================================================= <File Types>
"au BufRead,BufNewFile *.bug setf bug
augroup file_types
    au BufRead,BufNewFile *.nim setf nim
    au BufRead,BufNewFile *.note setf note
    au BufRead,BufNewFile *.tut setf tut
    au BufRead,BufNewFile *.oct setf octave
augroup END

"=========================================================== <Backup Directory>
set backup
set backupdir=E:\ProgramFiles\Vim\recovery\backup

"============================================================= <netrw Settings>
let g:netrw_winsize=15                     " set explorer window width to be 30
let g:netrw_liststyle=3                         " set explorer to be tree style

if has('win32')
    let s:source_path = $VIM
else
    let s:source_path = $HOME
endif

"============================================================= <File Templates>
augroup templates
  au!
  autocmd BufNewFile *.* silent! execute '0r E:\ProgramFiles\Vim\vimfiles\templates\skeleton.'.expand("<afile>:e")
augroup END

"================================================================ <Key Mapping>
exec 'source '.s:source_path.'/configs/.keymap.vim'

"============================================================== <Abbreviations>
exec 'source '.s:source_path.'/configs/.abbrev.vim'

"==================================================================== <Plugins>
exec 'source '.s:source_path.'/configs/.plugin.vim'

"====================================================== <Plugin configurations>
exec 'source '.s:source_path.'/configs/.plugin.conf.vim'
