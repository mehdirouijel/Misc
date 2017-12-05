" ================================================================================
"                                    NEWKOLOR
"               ...a personnal take on Alessandro Di Martino's kolor
"
" Creation Date : 28/04/2015 - 18:29
" Last Modified : 23/10/2017 - 14:06
" ================================================================================
" Description   : Inspired by the theme kolor by Alessandro Di Martino
"                 (https://github.com/zeis/vim-kolor).
"                 I basically just changed some colors. This file could probably
"                 do with some good clean-up.
"
"                 Instructions from the original kolor.vim :
"                 ----------------------------------------------------------------
"                 INSTALLATION
"                 ----------------------------------------------------------------
"                 Copy newkolor.vim to ~/.vim/colors
"                 (on Win <your-vim-dir>\vimfiles\colors).
"                 Then add the line "colorscheme newkolor" in your vimrc file,
"                 and restart Vim.
"
"                 ----------------------------------------------------------------
"                 OPTIONS
"                 ----------------------------------------------------------------
"                 Options must be set before "colorscheme newkolor" in your vimrc.
"
"                 " Enable italic. Default: 1
"                 let g:newkolor_italic=1
"
"                 " Enable bold. Default: 1
"                 let g:newkolor_bold=1
"
"                 " Enable underline. Default: 0
"                 let g:newkolor_underlined=0
"
"                 " Gray 'MatchParen' color. Default: 0
"                 let g:newkolor_alternative_matchparen=0
"
" Author        : Mehdi Rouijel
" ================================================================================


highlight clear
set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="newkolor"


if !exists("g:newkolor_bold")
  let g:newkolor_bold=1
endif
if !exists("g:newkolor_italic")
  let g:newkolor_italic=1
endif
if !exists("g:newkolor_underlined")
  let g:newkolor_underlined=0
endif
if !exists("g:newkolor_alternative_matchparen")
  let g:newkolor_alternative_matchparen=0
endif

highlight MyTodo          guifg=#ff4b3a    guibg=NONE       gui=bold  
highlight Important       guifg=#f4c804    guibg=NONE       gui=bold  
highlight Note            guifg=#21f24f    guibg=NONE       gui=bold  
highlight Study            guifg=#4689f4    guibg=NONE       gui=bold  
highlight CErrors         guifg=#ff4b3a    guibg=NONE       gui=bold  
highlight NoCErrors       guifg=#21f24f    guibg=NONE       gui=bold  
highlight Normal          guifg=#dcc1a9    guibg=#2e2d2b    gui=NONE
highlight SpecialKey      guifg=#7eaefd    guibg=NONE       gui=NONE
highlight NonText         guifg=#7eaefd    guibg=#2e2d2b    gui=NONE
highlight Directory       guifg=#df9a50    guibg=NONE       gui=NONE
highlight IncSearch       guifg=#000000    guibg=#5b5953    gui=NONE
"highlight LineNr          guifg=#808080    guibg=#242322    gui=NONE
highlight LineNr          guifg=#2e2d2b    guibg=#242322    gui=NONE
highlight StatusLine      guifg=#2e2d2b    guibg=#dcc1a9    gui=bold
highlight StatusLineNC    guifg=#dcc1a9    guibg=#383734    gui=bold
"highlight VertSplit       guifg=#383734    guibg=#383734    gui=NONE
highlight VertSplit       guifg=#2e2d2b    guibg=#2e2d2b    gui=NONE
highlight Visual          guifg=#e2e2e2    guibg=#0000dd    gui=NONE
highlight VisualNOS       guifg=#e2e2e2    guibg=NONE       gui=underline
highlight WildMenu        guifg=#000000    guibg=#75d7d8    gui=NONE
highlight Folded          guifg=#8787af    guibg=#242322    gui=NONE
"highlight FoldColumn      guifg=#8787af    guibg=#32312f    gui=NONE
highlight FoldColumn      guifg=#8787af    guibg=#2e2d2b    gui=NONE
highlight DiffAdd         guifg=NONE       guibg=#005154    gui=NONE
highlight DiffChange      guifg=NONE       guibg=#4f3598    gui=NONE
highlight DiffDelete      guifg=#d96e8a    guibg=#72323f    gui=NONE
highlight DiffText        guifg=#000000    guibg=#75d7d8    gui=NONE
highlight SignColumn      guifg=#808080    guibg=#2e2d2b    gui=NONE
highlight Conceal         guifg=#c6c6c6    guibg=NONE       gui=NONE
highlight SpellBad        guifg=NONE       guibg=NONE       gui=undercurl    guisp=#d96e8a
highlight SpellCap        guifg=NONE       guibg=NONE       gui=undercurl    guisp=#75d7d8
highlight SpellRare       guifg=NONE       guibg=NONE       gui=undercurl    guisp=#8cd991
highlight SpellLocal      guifg=NONE       guibg=NONE       gui=undercurl    guisp=#dbc570
highlight Pmenu           guifg=#c6c6c6    guibg=#242322    gui=NONE
highlight PmenuSel        guifg=#000000    guibg=#7eaefd    gui=NONE
highlight PmenuSbar       guifg=#ff5fd7    guibg=#262626    gui=NONE
highlight PmenuSbar       guifg=#ff5fd7    guibg=#2e2d2b    gui=NONE
highlight PmenuThumb      guifg=#2e2d2b    guibg=#ff5fd7    gui=NONE
highlight TabLine         guifg=#808080    guibg=#242322    gui=NONE
highlight TablineSel      guifg=#000000    guibg=#9e9e9e    gui=NONE
highlight TablineFill     guifg=#808080    guibg=#242322    gui=NONE
highlight CursorColumn    guifg=NONE       guibg=#5b5953    gui=NONE
highlight CursorLine      guifg=NONE       guibg=#1b2b74    gui=NONE
highlight ColorColumn     guifg=NONE       guibg=#5b5953    gui=NONE
"highlight Cursor          guifg=#2e2d2b    guibg=#77ffaa    gui=NONE
highlight Cursor          guifg=#2e2d2b    guibg=#ffffff    gui=NONE
"highlight iCursor          guifg=#2e2d2b    guibg=#77ffaa    gui=NONE
highlight iCursor          guifg=#2e2d2b    guibg=#ffffff    gui=NONE
"highlight lCursor         guifg=#2e2d2b    guibg=#77ffaa    gui=NONE
highlight lCursor         guifg=#2e2d2b    guibg=#5b5953    gui=NONE
"highlight Special         guifg=#dc6825    guibg=NONE       gui=NONE
highlight Special         guifg=#82b74d    guibg=NONE       gui=NONE
highlight Identifier      guifg=#75d7d8    guibg=NONE       gui=NONE
highlight PreProc         guifg=#df9a50    guibg=NONE       gui=NONE
"highlight Number          guifg=NONE       guibg=NONE       gui=NONE
"highlight Number          guifg=NONE       guibg=NONE       gui=bold
highlight Number          guifg=#82b74d    guibg=NONE       gui=NONE
highlight Function        guifg=#df9a50    guibg=NONE       gui=NONE
highlight htmlEndTag      guifg=#88da77    guibg=NONE       gui=NONE
highlight xmlEndTag       guifg=#88da77    guibg=NONE       gui=NONE
highlight EndOfBuffer     guifg=bg         guibg=bg         gui=NONE
if g:newkolor_bold==0
  highlight ErrorMsg        guifg=#dd9f8c    guibg=NONE       gui=NONE
  highlight Search          guifg=#000000    guibg=#5b5953    gui=NONE
  highlight MoreMsg         guifg=#8cd991    guibg=NONE       gui=NONE
  highlight ModeMsg         guifg=#e2e2e2    guibg=NONE       gui=NONE
  highlight CursorLineNr    guifg=#e2e2e2    guibg=#5b5953    gui=NONE
  highlight Question        guifg=#75d7d8    guibg=NONE       gui=NONE
  highlight WarningMsg      guifg=#ff5fd7    guibg=NONE       gui=NONE
  highlight Statement       guifg=#df9a50    guibg=NONE       gui=NONE
  highlight Type            guifg=#df9a50    guibg=NONE       gui=NONE
  highlight Error           guifg=#d96e8a    guibg=NONE       gui=NONE
  highlight Todo            guifg=#fa4724    guibg=NONE       gui=NONE
  highlight Keyword         guifg=#df9a50    guibg=NONE       gui=NONE
  highlight Title           guifg=#a080ea    guibg=NONE       gui=NONE
  if g:newkolor_alternative_matchparen==0
    highlight MatchParen      guifg=#2e2c29    guibg=#ff0000    gui=NONE
  else
    highlight MatchParen      guifg=#2e2c29    guibg=#9e9e9e    gui=NONE
  endif
else
  highlight ErrorMsg        guifg=#df9a50    guibg=NONE       gui=bold
  highlight Search          guifg=#000000    guibg=#5b5953    gui=bold
  highlight MoreMsg         guifg=#8cd991    guibg=NONE       gui=bold
  highlight ModeMsg         guifg=#e2e2e2    guibg=NONE       gui=bold
  highlight CursorLineNr    guifg=#e2e2e2    guibg=#5b5953    gui=bold
  highlight Question        guifg=#75d7d8    guibg=NONE       gui=bold
  highlight WarningMsg      guifg=#ff5fd7    guibg=NONE       gui=bold
  highlight Statement       guifg=#df9a50    guibg=NONE       gui=bold
  highlight Type            guifg=#df9a50    guibg=NONE       gui=bold
  highlight Error           guifg=#d96e8a    guibg=NONE       gui=bold
  highlight Todo            guifg=#fa4724    guibg=NONE       gui=bold
  highlight Keyword         guifg=#df9a50    guibg=NONE       gui=bold
  highlight Title           guifg=#a080ea    guibg=NONE       gui=bold
  if g:newkolor_alternative_matchparen==0
    highlight MatchParen      guifg=#2e2c29    guibg=#ff0000    gui=bold
  else
    highlight MatchParen      guifg=#2e2c29    guibg=#9e9e9e    gui=bold
  endif
endif
if g:newkolor_italic==0
    highlight Comment         guifg=#5b5b5b    guibg=NONE   gui=NONE
    highlight Constant        guifg=#82b74d    guibg=NONE   gui=NONE
    highlight String          guifg=#82b74d    guibg=NONE   gui=NONE
else
    highlight Comment         guifg=#5b5b5b    guibg=NONE   gui=NONE
    highlight Constant        guifg=#82b74d    guibg=NONE   gui=NONE
    highlight String          guifg=#82b74d    guibg=NONE   gui=NONE
endif
if g:newkolor_underlined==0
  highlight Underlined      guifg=#7eaefd    guibg=NONE   gui=NONE
else
  highlight Underlined      guifg=#7eaefd    guibg=NONE   gui=underline
endif

if &t_Co > 255
  highlight Normal          ctermfg=251     ctermbg=235     cterm=NONE
  highlight SpecialKey      ctermfg=111     ctermbg=NONE    cterm=NONE
  highlight NonText         ctermfg=111     ctermbg=235     cterm=NONE
  highlight Directory       ctermfg=180     ctermbg=NONE    cterm=NONE
  highlight IncSearch       ctermfg=0       ctermbg=206     cterm=NONE
  highlight LineNr          ctermfg=244     ctermbg=234     cterm=NONE
  highlight StatusLine      ctermfg=0       ctermbg=247     cterm=NONE
  highlight StatusLineNC    ctermfg=247     ctermbg=238     cterm=NONE
  highlight VertSplit       ctermfg=238     ctermbg=238     cterm=NONE
  highlight Visual          ctermfg=254     ctermbg=240     cterm=NONE
  highlight VisualNOS       ctermfg=254     ctermbg=NONE    cterm=underline
  highlight WildMenu        ctermfg=0       ctermbg=80      cterm=NONE
  highlight Folded          ctermfg=103     ctermbg=234     cterm=NONE
  highlight FoldColumn      ctermfg=103     ctermbg=234     cterm=NONE
  highlight DiffAdd         ctermfg=NONE    ctermbg=23      cterm=NONE
  highlight DiffChange      ctermfg=NONE    ctermbg=56      cterm=NONE
  highlight DiffDelete      ctermfg=168     ctermbg=96      cterm=NONE
  highlight DiffText        ctermfg=0       ctermbg=80      cterm=NONE
  highlight SignColumn      ctermfg=244     ctermbg=235     cterm=NONE
  highlight Conceal         ctermfg=251     ctermbg=NONE    cterm=NONE
  highlight SpellBad        ctermfg=168     ctermbg=NONE    cterm=underline
  highlight SpellCap        ctermfg=80      ctermbg=NONE    cterm=underline
  highlight SpellRare       ctermfg=121     ctermbg=NONE    cterm=underline
  highlight SpellLocal      ctermfg=186     ctermbg=NONE    cterm=underline
  highlight Pmenu           ctermfg=251     ctermbg=234     cterm=NONE
  highlight PmenuSel        ctermfg=0       ctermbg=111     cterm=NONE
  highlight PmenuSbar       ctermfg=206     ctermbg=235     cterm=NONE
  highlight PmenuThumb      ctermfg=235     ctermbg=206     cterm=NONE
  highlight TabLine         ctermfg=244     ctermbg=234     cterm=NONE
  highlight TablineSel      ctermfg=0       ctermbg=247     cterm=NONE
  highlight TablineFill     ctermfg=244     ctermbg=234     cterm=NONE
  highlight CursorColumn    ctermfg=NONE    ctermbg=236     cterm=NONE
  highlight CursorLine      ctermfg=NONE    ctermbg=236     cterm=NONE
  highlight ColorColumn     ctermfg=NONE    ctermbg=236     cterm=NONE
  highlight Cursor          ctermfg=0       ctermbg=254     cterm=NONE
  highlight Comment         ctermfg=244     ctermbg=NONE    cterm=NONE
  highlight Constant        ctermfg=180     ctermbg=NONE    cterm=NONE
  highlight Special         ctermfg=176     ctermbg=NONE    cterm=NONE
  highlight Identifier      ctermfg=80      ctermbg=NONE    cterm=NONE
  highlight PreProc         ctermfg=186     ctermbg=NONE    cterm=NONE
  highlight String          ctermfg=138     ctermbg=NONE    cterm=NONE
  highlight Number          ctermfg=186     ctermbg=NONE    cterm=NONE
  highlight Function        ctermfg=114     ctermbg=NONE    cterm=NONE
  highlight htmlEndTag      ctermfg=114     ctermbg=NONE    cterm=NONE
  highlight xmlEndTag       ctermfg=114     ctermbg=NONE    cterm=NONE
  if g:newkolor_bold==0
    highlight ErrorMsg        ctermfg=168     ctermbg=NONE    cterm=NONE
    highlight Search          ctermfg=208     ctermbg=NONE    cterm=NONE
    highlight MoreMsg         ctermfg=121     ctermbg=NONE    cterm=NONE
    highlight ModeMsg         ctermfg=254     ctermbg=NONE    cterm=NONE
    highlight CursorLineNr    ctermfg=254     ctermbg=236     cterm=NONE
    highlight Question        ctermfg=80      ctermbg=NONE    cterm=NONE
    highlight WarningMsg      ctermfg=206     ctermbg=NONE    cterm=NONE
    highlight Statement       ctermfg=168     ctermbg=NONE    cterm=NONE
    highlight Type            ctermfg=141     ctermbg=NONE    cterm=NONE
    highlight Error           ctermfg=168     ctermbg=NONE    cterm=NONE
    highlight Todo            ctermfg=80      ctermbg=NONE    cterm=NONE
    highlight Keyword         ctermfg=168     ctermbg=NONE    cterm=NONE
    highlight Title           ctermfg=141     ctermbg=NONE    cterm=NONE
    if g:newkolor_alternative_matchparen==0
      highlight MatchParen      ctermfg=235     ctermbg=206     cterm=NONE
    else
      highlight MatchParen      ctermfg=235     ctermbg=247     cterm=NONE
    endif
  else
    highlight ErrorMsg        ctermfg=168     ctermbg=NONE    cterm=bold
    highlight Search          ctermfg=208     ctermbg=NONE    cterm=bold
    highlight MoreMsg         ctermfg=121     ctermbg=NONE    cterm=bold
    highlight ModeMsg         ctermfg=254     ctermbg=NONE    cterm=bold
    highlight CursorLineNr    ctermfg=254     ctermbg=236     cterm=bold
    highlight Question        ctermfg=80      ctermbg=NONE    cterm=bold
    highlight WarningMsg      ctermfg=206     ctermbg=NONE    cterm=bold
    highlight Statement       ctermfg=168     ctermbg=NONE    cterm=bold
    highlight Type            ctermfg=141     ctermbg=NONE    cterm=bold
    highlight Error           ctermfg=168     ctermbg=NONE    cterm=bold
    highlight Todo            ctermfg=80      ctermbg=NONE    cterm=bold
    highlight Keyword         ctermfg=168     ctermbg=NONE    cterm=bold
    highlight Title           ctermfg=141     ctermbg=NONE    cterm=bold
    if g:newkolor_alternative_matchparen==0
      highlight MatchParen      ctermfg=235     ctermbg=206     cterm=bold
    else
      highlight MatchParen      ctermfg=235     ctermbg=247     cterm=bold
    endif
  endif
  if g:newkolor_underlined==0
    highlight Underlined      ctermfg=111     ctermbg=NONE    cterm=NONE
  else
    highlight Underlined      ctermfg=111     ctermbg=NONE    cterm=underline
  endif
end
