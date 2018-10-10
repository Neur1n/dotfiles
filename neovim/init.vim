set nocompatible
set fileformat=unix    " The following two make Vim create unix file by default
set fileformats=unix,dos

if has('win32')
    let $VIMCONFIG=$HOME.'/AppData/Local/nvim'
    let g:python3_host_prog='E:/ProgramFiles/Python36/python'
else
    let $VIMCONFIG=$HOME.'/.config/nvim'
    let g:python3_host_prog='/usr/bin/python3'
endif

" let g:python_host_skip_check=1
" let g:loaded_python3_provider=1

"******************************************************************************
"                                                               Moduled Configs
"******************************************************************************
exec 'source $VIMCONFIG/configs/keymap.vim'
exec 'source $VIMCONFIG/configs/abbrev.vim'
exec 'source $VIMCONFIG/configs/plugin.vim'
exec 'source $VIMCONFIG/configs/greetings.vim'
exec 'source $VIMCONFIG/configs/plugin.conf.vim'

"******************************************************************************
"                                                                            UI
"******************************************************************************
let $LANG='en'                                           " set message language
set langmenu=en                                             " set menu language
let g:netrw_winsize=15                     " set explorer window width to be 30
let g:netrw_liststyle=3                         " set explorer to be tree style

if has('mouse')
    set mouse=a
endif

" if has('syntax')
"     syntax on
"     set t_Co=256
"     set background=dark
"     if has('gui_running')
"         colorscheme solarized
"         let g:solarized_contrast='low'
"     else
"         colorscheme molokai
"     endif
" endif

if has('syntax')
    syntax on
    set t_Co=256
    set background=dark
    colorscheme gruvbox
    " colorscheme solarized
endif

"******************************************************************************
"                                                               Moduled Configs
"******************************************************************************
exec 'source $VIMCONFIG/configs/colorscheme.vim'
exec 'source $VIMCONFIG/configs/palette.vim'
exec 'source $VIMCONFIG/configs/autocmd.vim'

"=================================================================== <Encoding>
if has('multi_byte')
    if &termencoding ==# ''
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    set fileencodings=utf-8,gbk,gb2312,gb18030
endif

"******************************************************************************
"                                                                       General
"******************************************************************************
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
set incsearch                                              " incremental search
set laststatus=2                           " show statusline even only 1 window
set lines=30 columns=120                                  " initial window size
set linespace=0                                         " set line spacing to 0
set noshowmode
set number                                                   " show line number
set relativenumber                                       " relative line number
set sessionoptions-=folds                 " do not create folds when sessioning
set showcmd                                                 " show pressed keys
set signcolumn=yes
set wildmenu                                 " show possible matches when <Tab>
set tags+=../tags

set splitright                                            " split on right side
set splitbelow                                                 " split on below

set backup
set backupdir=$VIMCONFIG/recovery/backup

"******************************************************************************
"                                                               Moduled Configs
"******************************************************************************
" exec 'source $VIMCONFIG/configs/abbrev.vim'
" exec 'source $VIMCONFIG/configs/autocmd.vim'
" exec 'source $VIMCONFIG/configs/colorscheme.vim'
" exec 'source $VIMCONFIG/configs/keymap.vim'
" exec 'source $VIMCONFIG/configs/plugin.vim'
" exec 'source $VIMCONFIG/configs/greetings.vim'
" exec 'source $VIMCONFIG/configs/plugin.conf.vim'