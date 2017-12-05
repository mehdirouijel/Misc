" ================================================================================
"                                    VIM CONFIG
"
" Creation Date : 16/07/2014 - 18:29
" Last Modified : 28/11/2017 - 23:14
" ================================================================================
" Description   : Just a little custom .vimrc file I made with some copypasta and
"                 google searches.
"                 It took some time and it's far from perfect, but I like it.
"
" Author        : Mehdi Rouijel
" ================================================================================


" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#begin('$VIM/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
" Just need the .ddl actually
Plugin 'https://github.com/derekmcloughlin/gvimfullscreen_win32'
"Plugin 'https://github.com/MarcWeber/vim-addon-qf-layout'
Plugin 'https://github.com/yuttie/comfortable-motion.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable syntax highlighting, obviously.
set nocompatible
syntax on
filetype plugin indent on


" ====================
" GVIMFULLSCREEN_WIN32
" ====================

map <F11> <Esc>:call libcallnr('gvimfullscreen.dll','ToggleFullScreen',0)<CR>


" ===================
" NERDtree-like netrw
" ===================

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END


" ====================
" CTRLP (FUZZY SEARCH)
" ====================

let g:ctrlp_map = '<Leader>p'
"let g:ctrlp_cmd = '<CtrlP>'
"let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]\.git$',
    \ 'file': '\v\.(exe|zip|rar|dll|so|obj|o|class)$',
    \ }


" =========
" QF_LAYOUT
" =========

"let g:vim_addon_qf_layout = {}
""let g:vim_addon_qf_layout.quickfix_formatters = [ 'NOP', 'vim_addon_qf_layout#DefaultFormatter', 'vim_addon_qf_layout#FormatterNoFilename', 'vim_addon_qf_layout#Reset' ]
"let g:vim_addon_qf_layout.quickfix_formatters = [ 'vim_addon_qf_layout#DefaultFormatter' ]
"let g:vim_addon_qf_layout.lhs_cycle = '<Leader>,'
"let g:vim_addon_qf_layout.file_name_align_max_width = 60


" ==================
" COMFORTABLE-MOTION
" ==================

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"


" ===========
" COLOR STUFF
" ===========

" Define custom todo-like labels. Must be placed before selecting a colorscheme.
"highlight MyTodo       cterm=bold  term=bold  gui=bold  ctermbg=NONE  guibg=NONE  ctermfg=Yellow     guifg=Red
"highlight Important  cterm=bold  term=bold  gui=bold  ctermbg=NONE  guibg=NONE  ctermfg=Yellow     guifg=Yellow
"highlight Note       cterm=bold  term=bold  gui=bold  ctermbg=NONE  guibg=NONE  ctermfg=Green      guifg=Green
"highlight Idea       cterm=bold  term=bold  gui=bold  ctermbg=NONE  guibg=NONE  ctermfg=LightBlue  guifg=DodgerBlue1
"highlight CErrors    cterm=bold  term=bold  gui=bold  ctermbg=NONE  guibg=NONE  ctermfg=LightBlue  guifg=Red
"highlight NoCErrors  cterm=bold  term=bold  gui=bold  ctermbg=NONE  guibg=NONE  ctermfg=LightBlue  guifg=Green
"augroup custom_highlighting
"    autocmd!
"    autocmd VimEnter,WinEnter * call matchadd('MyTodo',      '\W\zs\(TODO(\?.*)\?:\)')
"    autocmd VimEnter,WinEnter * call matchadd('Important', '\W\zs\(IMPORTANT(\?.*)\?:\)')
"    autocmd VimEnter,WinEnter * call matchadd('Note',      '\W\zs\(NOTE(\?.*)\?:\)')
"    autocmd VimEnter,WinEnter * call matchadd('Idea',      '\W\zs\(IDEA(\?.*)\?:\)')
"    autocmd VimEnter,WinEnter * call matchadd('CErrors',   '\W\zs\([1-9][0-9]* error(s)\)')
"    autocmd VimEnter,WinEnter * call matchadd('NoCErrors', '\W\zs\(0 error(s)\)')
"augroup END

" Set color scheme and font options.
colorscheme newkolor
set encoding=utf-8
"set guifont=Liberation\ Mono:h10
set guifont=Liberation\ Mono\ Bold:h8.35


" ================
" GENERAL SETTINGS
" ================

set hidden
set ignorecase
set incsearch "show search matches as you type
set hlsearch
set smartcase
set noshowmatch
set autoindent
set smartindent
set ruler
set vb
set noerrorbells
set showcmd
set mouse=a
set history=500
set undolevels=500
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
set lazyredraw
let loaded_matchparen = 1

let mapleader = ","
map <SPACE> <leader>

"set guicursor+=n-v-c:blinkon0
"set guicursor+=i-ci-r-cr-o:blinkwait10-blinkon400-blinkoff400

" Disable error bell and visual bell.
set noerrorbells visualbell t_vb=

set backspace=2 " Allow to erase previously entered characters with backspace.

set cino=(0,W4 " Align new line with opening paranthesis. W4 makes it so that if the first argument is on a new line, it is not aligned with opening parenthesis.
set cino+=t0 " Return type of function not indented when above the function name.
"set cino+=:1 " case statement alignment.
"set cino+={0
set cino+==0
set cino+=l1 "  alignment inside case block.
set cino+=c3 " Comment block aligned 3 characters from the comment opener.
set cino+=C3 " Same as above.
set cino+=g0 " alignment of 'public', 'private' and 'protected'
set cino+=m1

set foldcolumn=1 " Left gutter.

set fillchars+=vert:\  " VSplit separator character (It's a space escaped with the backslash character).

set guioptions-=m  " Remove menubar.
set guioptions-=T  " Remove toolbar.
set guioptions-=r  " Remove right-hand scroll bar.
set guioptions-=L  " Remove left-hand scroll bar.

"au GUIEnter * simalt ~n " Open gVim maximized... Only (sort of) works on Windows, though...

" Highlights the current line and column (de-comment end of following lines to enable column).
au WinLeave * set nocursorline "nocursorcolumn
au WinEnter * set cursorline "cursorcolumn
set cursorline "cursorcolumn


" PHP indent stuff ... doesn't really work.
"let g:PHP_removeCRwhenUnix = 1
"let g:PHP_default_indenting = 1
"let g:PHP_outdentphpescape = 0
"let g:PHP_vintage_case_default_indent = 1

" ================
" AUTOCMD GROUPING 
" ================

augroup vimrc_autocmd
    autocmd!

    " Set line wrap for quickfix window only.
    autocmd FileType qf setlocal wrap

    autocmd BufNewFile *.{c,cpp,java} call <SID>insert_header()
    autocmd BufNewFile *.mak call <SID>insert_makefile_header()
    autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()

    autocmd BufWritePre * call <SID>last_modified() " Call to last_modified() when saving.
    autocmd BufWritePre *.c,*.cpp,*.h,*.hpp call <SID>strip_trailing_whitespaces()

    autocmd VimEnter * call libcallnr('gvimfullscreen.dll','ToggleFullScreen',0)

    autocmd GUIEnter * set visualbell t_vb=

    autocmd Filetype make setlocal noexpandtab " Makefiles need tabs.
    autocmd Filetype python setlocal noexpandtab " Python needs tabs.

    autocmd BufEnter * silent! lcd %:p:h " Always have the current file's directory as current working directory.
augroup END

augroup ShortTabFiles
    autocmd!
    autocmd FileType tex,html setlocal wrap linebreak nolist tabstop=2 shiftwidth=2
augroup END

au FileType dosbatch setlocal syntax=off


" ===========
" STATUS LINE
" ===========

" Display the status line, always.
set laststatus=2
" Status line colors ! :D (has to be after loading the color scheme).
hi FileName        gui=bold  guibg=PeachPuff4  guifg=#2e2d2b
hi FileType        gui=bold  guibg=PeachPuff3  guifg=#2e2d2b
hi FileFormat      gui=bold  guibg=PeachPuff4  guifg=#2e2d2b
hi PositionLine    gui=bold  guibg=#1b2b74     guifg=#dcc1a9
hi PositionColumn  gui=bold  guibg=#383734     guifg=#dcc1a9
hi FilePercentage  gui=bold  guibg=PeachPuff4  guifg=#2e2d2b
hi DateTime        gui=bold  guibg=#383734     guifg=#dcc1a9
" Set the status line options. Make it show more information.
set statusline=
set statusline+=%#FileName#
set statusline+=\ \ %t%m%r%h\ \ 
set statusline+=%<  " Don't shrink past what is before this point when resizing window.
set statusline+=%*
set statusline+=\ TYPE=%Y\ 
set statusline+=%*
set statusline+=\ FORMAT=%{&ff}\ 
set statusline+=%*  " Back to default color.
set statusline+=%=  " Align right after this point.
set statusline+=%#PositionLine#
set statusline+=\ LIN\ %4l\ 
set statusline+=%#PositionColumn#
set statusline+=\ COL\ %4v\ 
set statusline+=%#FilePercentage#
set statusline+=\ %3p%%\ 
set statusline+=%*
set statusline+=\ \ %{strftime(\"%d/%m/%Y\ -\ %H:%M\")}\ \ 


" ==================
" REMAPPING GOODNESS
" ==================

" Vim. Live it. :D
inoremap <up> <nop>
nnoremap <up> <nop>
inoremap <down> <nop>
nnoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" B A <start> ... lel
" And for good measure...
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

" Toggle search highlight.
map <F3> :set hlsearch!<CR>

" Clear last search highlight
nnoremap <silent> <ESC> :noh \| cclose<CR><ESC>

" Quickly edit/reload the vimrc file
nmap <leader>ev :sp $MYVIMRC<CR>
nmap <leader>sv :wa<bar>bd vimrc<bar>so $MYVIMRC<CR><bar><F11><bar><F11>


" Move to next compilation error.
nmap <M-p> :cp<CR>
" Move to previous compilation error.
nmap <M-n> :cn<CR>

nmap <leader>_ <C-w>_
nmap <leader>- <C-w><bar>
nmap <leader>= <C-w>=


" Need to save before make.
" silent gets rid of shell prompt (Press ENTER to continue... blablabla).
" See the utility function compilation().
"nmap <M-m> :wa \| copen \| wincmd _ \| wincmd w \| silent make<CR>

"function! Compilation()
"    if filereadable('./build.bat')
"        set makeprg=build.bat
"    elseif filereadable('./makefile')
"        set makeprg=nmake
"    elseif (&ft == 'c')
"        set makeprg=gcc\ -Wall\ *.c
"    elseif (&ft == 'cpp')
"        set makeprg=g++\ -std=c++11\ -Wall\ *.cpp
"    endif
"endfunction
"autocmd BufNewFile,BufRead * call <SID>compilation()

function! Compile()
    if filereadable('./build.bat')
        set makeprg=build.bat
    elseif filereadable('./makefile')
        set makeprg=nmake
    elseif (&ft == 'c')
        let files = join( split( globpath( '.', '*.c' ), '\n' ) )
        let &makeprg = 'gcc -Wall ' . files
    elseif (&ft == 'cpp')
        let files = join( split( globpath( '.', '*.cpp' ), '\n' ) )
        let &makeprg = 'g++ -std=c++11 -Wall ' . files
    endif
    execute "wa"
    execute "wincmd\ H"
    execute "copen"
    execute "wincmd\ \_"
    execute "wincmd\ w"
    execute "call setqflist([{'text': 'Compilation started on ' . strftime('%d/%m/%Y\ -\ %H:%M')}], 'r')"
    execute "call setqflist([{'text': ''}], 'a')"
    execute "silent\ make"
    execute "call setqflist([{'text': 'with ' . len(filter(getqflist(), 'v:val.valid')) . ' error(s)'}], 'a')"
endfunction
nnoremap <Leader>; :call Compile()<CR>


" Use make to compile c programs with gcc.
" '%<' is the current filename w/out extension (see :help extension-removal).
" set makeprg=g++\ -Wall\ -Werror\ -o\ %<\ *.cpp


" Windows/splits layouts.
nmap <Leader>1 :on \| vsp<CR>
nmap <Leader>2 :on \| sp \| vsp<CR>
nmap <Leader>3 :on \| sp \| vsp<CR><M-j>:vsp<CR><M-k>

" My File Explorer
let g:treeOpened = 0
function! TreeToggle()
    if g:treeOpened
        execute "wincmd\ h"
        execute "q"
        let g:treeOpened = 0
        execute g:treeReturnToWindow . "wincmd w"
    else
        let g:treeReturnToWindow = winnr()
        execute "Vexplore"
        let g:treeOpened = 1
    endif
endfunction
nmap <Leader>y :call TreeToggle()<CR>

" Move to the window to the left.
nmap <M-h> <C-w>h
" Move to the window to the bottom.
nmap <M-j> <C-w>j
" Move to the window to the top.
nmap <M-k> <C-w>k
" Move to the window to the right.
nmap <M-l> <C-w>l

" Move to the next buffer.
nmap <leader>j :bn<CR>
" Move to the previous buffer.
nmap <leader>k :bp<CR>

nmap <C-j> <C-d>
nmap <C-k> <C-u>

" Open file explorer in horizontal split at current working directory.
"nmap <M-o> :10sp.<CR>


" =================
" UTILITY FUNCTIONS
" =================


" Automatic source file headers.
function! s:insert_header()
    let filename = expand("%:t")
    execute "normal! i/* =========================================================================================="
    execute "normal! oFile Name     : " . filename
    normal! o
    execute "normal! oCreation Date : " . strftime("%d/%m/%Y\ -\ %H:%M")
    execute "normal! oLast Modified : " . strftime("%d/%m/%Y\ -\ %H:%M")
    execute "normal! o=========================================================================================="
    execute "normal! oDescription   : "
    normal! o
    execute "normal! oAuthor        : Mehdi Rouijel"
    execute "normal! o========================================================================================== */"
    normal! o
    normal! o
    normal! k
    normal! o
endfunction


function! s:insert_makefile_header()
    let filename = expand("%:t")
    execute "normal! i#  ==========================================================================================="
    execute "normal! oFile Name     : " . filename
    normal! o
    execute "normal! o  Creation Date : " . strftime("%d/%m/%Y\ -\ %H:%M")
    execute "normal! oLast Modified : " . strftime("%d/%m/%Y\ -\ %H:%M")
    execute "normal! o==========================================================================================="
    execute "normal! oDescription   : "
    normal! o
    execute "normal! o  Author        : Mehdi Rouijel"
    execute "normal! o==========================================================================================="
    normal! o
    normal! o
    normal! k
    normal! o
endfunction
 

" Automatic .h/.hpp file include guards.
function! s:insert_gates()
    let gatename = '__' . substitute(toupper(expand('%:t')), '\.', '_', 'g')
    execute 'normal! i#ifndef ' . gatename
    execute 'normal! o#define ' . gatename
    normal! o
    normal! o
    normal! o
    call s:insert_header()
    normal! o
    execute 'normal! Go#endif // ' . gatename 
    normal! o
    normal! k
    normal! k
    normal! k
    normal! k
    "execute 'normal! i#pragma once'
    "normal! o
    "normal! o
    "normal! o
endfunction


" Automatic header file inclusion (foo.c includes foo.h).
"function! s:insert_header_incl()
"    let filename = expand("%:t")
"    execute 'normal! i#include ' . '\"' . expand("%:r") . '.h\"'
"    normal! o
"    normal! o
"    normal! o
"endfunction
"autocmd BufNewFile *.{c,cpp} call <SID>insert_header_incl()


" Update 'Last Modified' field in file header.
function! s:last_modified()
    let save_cursor = getpos(".")
    call cursor(1, 1) " Go to the first line and column.
    if search("Last Modified : ") " Only do all that if there is a Last Modified field to be changed.
        execute "normal! d$"
        execute "normal! aLast Modified : " . strftime("%d/%m/%Y\ -\ %H:%M")
    endif
    call setpos('.', save_cursor) " Set cursor back to original position.
endfunction


" Delete trailing whitespaces on save.
function! <SID>strip_trailing_whitespaces()
    " Save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business.
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position.
    let @/=_s
    call cursor(l, c)
    normal! zz
endfunction


" List TODO/NOTE/IMPORTANT/IDEA items
command! -nargs=1 TaskList call ShowTaskList(<f-args>)
function! ShowTaskList(ItemToShow)
    let Task = toupper(a:ItemToShow)
    execute "wincmd\ H"
    execute "copen"
    execute "wincmd\ \_"
    execute "wincmd\ w"
    execute "vimgrep |" . Task . "(*.*)*:|g **/*.*"
endfunction
map <Leader>tt <Esc>:TaskList todo<CR>
map <Leader>tn <Esc>:TaskList note<CR>
map <Leader>tm <Esc>:TaskList important<CR>
map <Leader>ts <Esc>:TaskList study<CR>

"function! <SID>vcvars()
"    if !exists('visual_studio_paths_added')
"        let visual_studio_paths_added = 1
"        let $PATH='C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\Common7\\IDE;C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\BIN;C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\Common7\\Tools;C:\\Windows\\Microsoft.NET\\Framework\\v3.5;C:\\Windows\\Microsoft.NET\\Framework\\v2.0.50727;C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\VCPackages;C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\bin;'.$PATH
"        let $INCLUDE='C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\ATLMFC\\INCLUDE;C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\INCLUDE;C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\include;'.$INCLUDE
"        let $LIB='C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\ATLMFC\\LIB;C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\LIB;C:\\Program Files\\Microsoft SDKs\\Windows\\v6.0A\\lib;'.$LIB
"        let $LIBPATH='C:\\Windows\\Microsoft.NET\\Framework\\v3.5;C:\\Windows\\Microsoft.NET\\Framework\\v2.0.50727;C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\ATLMFC\\LIB;C:\\Program Files (x86)\\Microsoft Visual Studio 12.0\\VC\\LIB;'.$LIBPATH
"    endif
"endfunction
"command VCvars call <SID>vcvars()
