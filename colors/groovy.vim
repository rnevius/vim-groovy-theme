" Name:         Groovy Theme
" Description:  A true color colorscheme with dark and light variants
" Author:       Ryan Nevius <ryanevius@gmail.com>
" Maintainer:   Ryan Nevius <ryanevius@gmail.com>
" Website:      https://ryannevius.com
" License:      Unlicense
" Last Updated: Mon Apr 27 07:43:29 2020

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'groovy'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running')

hi! link QuickFixLine Search
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link lCursor Cursor

if (has('termguicolors') && &termguicolors) || has('gui_running')
  if &background ==# 'dark'
    let g:terminal_ansi_colors = ['#272c35', '#ff0000', '#00ff00', '#986801',
          \ '#0000ff', '#ff00ff', '#00ffff', '#ebebeb', '#4b5263', '#ff6400',
          \ '#64ff00', '#c18401', '#0064ff', '#ff64ff', '#64ffff', '#e0e0ed']
    if get(g:, 'groovy_transp_bg', 0) && !has('gui_running')
      hi Normal guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
      hi Terminal guifg=#ebebeb guibg=NONE guisp=NONE gui=NONE cterm=NONE
    else
      hi Normal guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
      hi Terminal guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    endif
    hi ColorColumn guifg=fg guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi Conceal guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Cursor guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi CursorColumn guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi CursorLine guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi CursorLineNr guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi DiffAdd guifg=#ebebeb guibg=#272c35 guisp=NONE gui=reverse cterm=reverse
    hi DiffChange guifg=#ebebeb guibg=#272c35 guisp=NONE gui=reverse cterm=reverse
    hi DiffDelete guifg=#ebebeb guibg=#272c35 guisp=NONE gui=reverse cterm=reverse
    hi DiffText guifg=#ebebeb guibg=#272c35 guisp=NONE gui=bold,reverse cterm=bold,reverse
    hi Directory guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi EndOfBuffer guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi ErrorMsg guifg=#ebebeb guibg=#272c35 guisp=NONE gui=reverse cterm=reverse
    hi FoldColumn guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi Folded guifg=#ebebeb guibg=#272c35 guisp=NONE gui=italic cterm=italic
    hi IncSearch guifg=#ebebeb guibg=#986801 guisp=NONE gui=standout cterm=standout
    hi LineNr guifg=#4b5263 guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi MatchParen guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi ModeMsg guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi MoreMsg guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi NonText guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi Pmenu guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi PmenuSbar guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi PmenuSel guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi PmenuThumb guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi Question guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi Search guifg=#ebebeb guibg=#c18401 guisp=NONE gui=NONE cterm=NONE
    hi SignColumn guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi SpecialKey guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi SpellBad guifg=#ebebeb guibg=#272c35 guisp=#ff0000 gui=NONE cterm=NONE
    hi SpellCap guifg=#ebebeb guibg=#272c35 guisp=#0000ff gui=NONE cterm=NONE
    hi SpellLocal guifg=#ebebeb guibg=#272c35 guisp=#ff00ff gui=NONE cterm=NONE
    hi SpellRare guifg=#ebebeb guibg=#272c35 guisp=#00ffff gui=reverse cterm=reverse
    hi StatusLine guifg=#ebebeb guibg=#3e4452 guisp=NONE gui=bold cterm=bold
    hi StatusLineNC guifg=#ebebeb guibg=#2b323d guisp=NONE gui=NONE cterm=NONE
    hi TabLine guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi TabLineFill guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi TabLineSel guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi Title guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi VertSplit guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi Visual guifg=#ebebeb guibg=#3e4452 guisp=NONE gui=NONE cterm=NONE
    hi VisualNOS guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi WarningMsg guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi WildMenu guifg=#ebebeb guibg=#272c35 guisp=NONE gui=NONE cterm=NONE
    hi Comment guifg=#ebebeb guibg=NONE guisp=NONE gui=italic cterm=italic
    hi Constant guifg=#ebebeb guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Error guifg=#ebebeb guibg=#272c35 guisp=NONE gui=reverse cterm=reverse
    hi Identifier guifg=#ebebeb guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Ignore guifg=#ebebeb guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi PreProc guifg=#ebebeb guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Special guifg=#ebebeb guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Statement guifg=#ebebeb guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Todo guifg=#ebebeb guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Type guifg=#ebebeb guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Underlined guifg=#ebebeb guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi CursorIM guifg=NONE guibg=fg guisp=NONE gui=NONE cterm=NONE
    hi ToolbarLine guifg=NONE guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
    hi ToolbarButton guifg=#ebebeb guibg=#272c35 guisp=NONE gui=bold cterm=bold
    if !s:italics
      hi Folded gui=NONE cterm=NONE
      hi Comment gui=NONE cterm=NONE
    endif
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  let g:terminal_ansi_colors = ['#494b53', '#ff0000', '#00ff00', '#ffff00',
        \ '#0000ff', '#ff00ff', '#00ffff', '#ebebeb', '#d2d2d2', '#ff6400',
        \ '#64ff00', '#ffff64', '#0064ff', '#ff64ff', '#64ffff', '#ffffff']
  if get(g:, 'groovy_transp_bg', 0) && !has('gui_running')
    hi Normal guifg=#494b53 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Terminal guifg=#494b53 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  else
    hi Normal guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
    hi Terminal guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  endif
  hi ColorColumn guifg=fg guibg=#494b53 guisp=NONE gui=NONE cterm=NONE
  hi Conceal guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi CursorColumn guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi CursorLine guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi CursorLineNr guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi DiffAdd guifg=#494b53 guibg=#ebebeb guisp=NONE gui=reverse cterm=reverse
  hi DiffChange guifg=#494b53 guibg=#ebebeb guisp=NONE gui=reverse cterm=reverse
  hi DiffDelete guifg=#494b53 guibg=#ebebeb guisp=NONE gui=reverse cterm=reverse
  hi DiffText guifg=#494b53 guibg=#ebebeb guisp=NONE gui=bold,reverse cterm=bold,reverse
  hi Directory guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi ErrorMsg guifg=#494b53 guibg=#ebebeb guisp=NONE gui=reverse cterm=reverse
  hi FoldColumn guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi Folded guifg=#494b53 guibg=#ebebeb guisp=NONE gui=italic cterm=italic
  hi IncSearch guifg=#494b53 guibg=#ebebeb guisp=NONE gui=standout cterm=standout
  hi LineNr guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi ModeMsg guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi NonText guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi PmenuSbar guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi PmenuSel guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi PmenuThumb guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi Question guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi Search guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi SignColumn guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi SpecialKey guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi SpellBad guifg=#494b53 guibg=#ebebeb guisp=#ff0000 gui=NONE cterm=NONE
  hi SpellCap guifg=#494b53 guibg=#ebebeb guisp=#0000ff gui=NONE cterm=NONE
  hi SpellLocal guifg=#494b53 guibg=#ebebeb guisp=#ff00ff gui=NONE cterm=NONE
  hi SpellRare guifg=#494b53 guibg=#ebebeb guisp=#00ffff gui=reverse cterm=reverse
  hi StatusLine guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi StatusLineNC guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi TabLine guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi TabLineFill guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi Title guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi VertSplit guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi Visual guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi VisualNOS guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi WildMenu guifg=#494b53 guibg=#ebebeb guisp=NONE gui=NONE cterm=NONE
  hi Comment guifg=#494b53 guibg=NONE guisp=NONE gui=italic cterm=italic
  hi Constant guifg=#494b53 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Error guifg=#494b53 guibg=#ebebeb guisp=NONE gui=reverse cterm=reverse
  hi Identifier guifg=#494b53 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#494b53 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#494b53 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Special guifg=#494b53 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Statement guifg=#494b53 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Todo guifg=#494b53 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Type guifg=#494b53 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#494b53 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi CursorIM guifg=NONE guibg=fg guisp=NONE gui=NONE cterm=NONE
  hi ToolbarLine guifg=NONE guibg=#494b53 guisp=NONE gui=NONE cterm=NONE
  hi ToolbarButton guifg=#494b53 guibg=#ebebeb guisp=NONE gui=bold cterm=bold
  if !s:italics
    hi Folded gui=NONE cterm=NONE
    hi Comment gui=NONE cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 256
  if &background ==# 'dark'
    if get(g:, 'groovy_transp_bg', 0)
      hi Normal ctermfg=255 ctermbg=236 cterm=NONE
      if !has('patch-8.0.0616') " Fix for Vim bug
        set background=dark
      endif
      hi Terminal ctermfg=255 ctermbg=NONE cterm=NONE
    else
      hi Normal ctermfg=255 ctermbg=236 cterm=NONE
      if !has('patch-8.0.0616') " Fix for Vim bug
        set background=dark
      endif
      hi Terminal ctermfg=255 ctermbg=236 cterm=NONE
    endif
    hi ColorColumn ctermfg=fg ctermbg=236 cterm=NONE
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=255 ctermbg=236 cterm=NONE
    hi CursorColumn ctermfg=255 ctermbg=236 cterm=NONE
    hi CursorLine ctermfg=255 ctermbg=236 cterm=NONE
    hi CursorLineNr ctermfg=255 ctermbg=236 cterm=NONE
    hi DiffAdd ctermfg=255 ctermbg=236 cterm=reverse
    hi DiffChange ctermfg=255 ctermbg=236 cterm=reverse
    hi DiffDelete ctermfg=255 ctermbg=236 cterm=reverse
    hi DiffText ctermfg=255 ctermbg=236 cterm=bold,reverse
    hi Directory ctermfg=255 ctermbg=236 cterm=NONE
    hi EndOfBuffer ctermfg=255 ctermbg=236 cterm=NONE
    hi ErrorMsg ctermfg=255 ctermbg=236 cterm=reverse
    hi FoldColumn ctermfg=255 ctermbg=236 cterm=NONE
    hi Folded ctermfg=255 ctermbg=236 cterm=italic
    hi IncSearch ctermfg=255 ctermbg=94 cterm=reverse
    hi LineNr ctermfg=239 ctermbg=236 cterm=NONE
    hi MatchParen ctermfg=255 ctermbg=236 cterm=NONE
    hi ModeMsg ctermfg=255 ctermbg=236 cterm=NONE
    hi MoreMsg ctermfg=255 ctermbg=236 cterm=NONE
    hi NonText ctermfg=255 ctermbg=236 cterm=NONE
    hi Pmenu ctermfg=255 ctermbg=236 cterm=NONE
    hi PmenuSbar ctermfg=255 ctermbg=236 cterm=NONE
    hi PmenuSel ctermfg=255 ctermbg=236 cterm=NONE
    hi PmenuThumb ctermfg=255 ctermbg=236 cterm=NONE
    hi Question ctermfg=255 ctermbg=236 cterm=NONE
    hi Search ctermfg=255 ctermbg=172 cterm=NONE
    hi SignColumn ctermfg=255 ctermbg=236 cterm=NONE
    hi SpecialKey ctermfg=255 ctermbg=236 cterm=NONE
    hi SpellBad ctermfg=255 ctermbg=236 cterm=NONE
    hi SpellCap ctermfg=255 ctermbg=236 cterm=NONE
    hi SpellLocal ctermfg=255 ctermbg=236 cterm=NONE
    hi SpellRare ctermfg=255 ctermbg=236 cterm=reverse
    hi StatusLine ctermfg=255 ctermbg=231 cterm=bold
    hi StatusLineNC ctermfg=255 ctermbg=231 cterm=NONE
    hi TabLine ctermfg=255 ctermbg=236 cterm=NONE
    hi TabLineFill ctermfg=255 ctermbg=236 cterm=NONE
    hi TabLineSel ctermfg=255 ctermbg=236 cterm=NONE
    hi Title ctermfg=255 ctermbg=236 cterm=NONE
    hi VertSplit ctermfg=255 ctermbg=236 cterm=NONE
    hi Visual ctermfg=255 ctermbg=231 cterm=NONE
    hi VisualNOS ctermfg=255 ctermbg=236 cterm=NONE
    hi WarningMsg ctermfg=255 ctermbg=236 cterm=NONE
    hi WildMenu ctermfg=255 ctermbg=236 cterm=NONE
    hi Comment ctermfg=255 ctermbg=NONE cterm=italic
    hi Constant ctermfg=255 ctermbg=NONE cterm=NONE
    hi Error ctermfg=255 ctermbg=236 cterm=reverse
    hi Identifier ctermfg=255 ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=255 ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=255 ctermbg=NONE cterm=NONE
    hi Special ctermfg=255 ctermbg=NONE cterm=NONE
    hi Statement ctermfg=255 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=255 ctermbg=NONE cterm=NONE
    hi Type ctermfg=255 ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=255 ctermbg=NONE cterm=NONE
    hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=255 cterm=NONE
    hi ToolbarButton ctermfg=255 ctermbg=236 cterm=bold
    if !s:italics
      hi Folded cterm=NONE
      hi Comment cterm=NONE
    endif
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  if get(g:, 'groovy_transp_bg', 0) && !has('gui_running')
    hi Normal ctermfg=239 ctermbg=NONE cterm=NONE
    hi Terminal ctermfg=239 ctermbg=NONE cterm=NONE
  else
    hi Normal ctermfg=239 ctermbg=255 cterm=NONE
    hi Terminal ctermfg=239 ctermbg=255 cterm=NONE
  endif
  hi ColorColumn ctermfg=fg ctermbg=239 cterm=NONE
  hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=239 ctermbg=255 cterm=NONE
  hi CursorColumn ctermfg=239 ctermbg=255 cterm=NONE
  hi CursorLine ctermfg=239 ctermbg=255 cterm=NONE
  hi CursorLineNr ctermfg=239 ctermbg=255 cterm=NONE
  hi DiffAdd ctermfg=239 ctermbg=255 cterm=reverse
  hi DiffChange ctermfg=239 ctermbg=255 cterm=reverse
  hi DiffDelete ctermfg=239 ctermbg=255 cterm=reverse
  hi DiffText ctermfg=239 ctermbg=255 cterm=bold,reverse
  hi Directory ctermfg=239 ctermbg=255 cterm=NONE
  hi EndOfBuffer ctermfg=239 ctermbg=255 cterm=NONE
  hi ErrorMsg ctermfg=239 ctermbg=255 cterm=reverse
  hi FoldColumn ctermfg=239 ctermbg=255 cterm=NONE
  hi Folded ctermfg=239 ctermbg=255 cterm=italic
  hi IncSearch ctermfg=239 ctermbg=255 cterm=reverse
  hi LineNr ctermfg=239 ctermbg=255 cterm=NONE
  hi MatchParen ctermfg=239 ctermbg=255 cterm=NONE
  hi ModeMsg ctermfg=239 ctermbg=255 cterm=NONE
  hi MoreMsg ctermfg=239 ctermbg=255 cterm=NONE
  hi NonText ctermfg=239 ctermbg=255 cterm=NONE
  hi Pmenu ctermfg=239 ctermbg=255 cterm=NONE
  hi PmenuSbar ctermfg=239 ctermbg=255 cterm=NONE
  hi PmenuSel ctermfg=239 ctermbg=255 cterm=NONE
  hi PmenuThumb ctermfg=239 ctermbg=255 cterm=NONE
  hi Question ctermfg=239 ctermbg=255 cterm=NONE
  hi Search ctermfg=239 ctermbg=255 cterm=NONE
  hi SignColumn ctermfg=239 ctermbg=255 cterm=NONE
  hi SpecialKey ctermfg=239 ctermbg=255 cterm=NONE
  hi SpellBad ctermfg=239 ctermbg=255 cterm=NONE
  hi SpellCap ctermfg=239 ctermbg=255 cterm=NONE
  hi SpellLocal ctermfg=239 ctermbg=255 cterm=NONE
  hi SpellRare ctermfg=239 ctermbg=255 cterm=reverse
  hi StatusLine ctermfg=239 ctermbg=255 cterm=NONE
  hi StatusLineNC ctermfg=239 ctermbg=255 cterm=NONE
  hi TabLine ctermfg=239 ctermbg=255 cterm=NONE
  hi TabLineFill ctermfg=239 ctermbg=255 cterm=NONE
  hi TabLineSel ctermfg=239 ctermbg=255 cterm=NONE
  hi Title ctermfg=239 ctermbg=255 cterm=NONE
  hi VertSplit ctermfg=239 ctermbg=255 cterm=NONE
  hi Visual ctermfg=239 ctermbg=255 cterm=NONE
  hi VisualNOS ctermfg=239 ctermbg=255 cterm=NONE
  hi WarningMsg ctermfg=239 ctermbg=255 cterm=NONE
  hi WildMenu ctermfg=239 ctermbg=255 cterm=NONE
  hi Comment ctermfg=239 ctermbg=NONE cterm=italic
  hi Constant ctermfg=239 ctermbg=NONE cterm=NONE
  hi Error ctermfg=239 ctermbg=255 cterm=reverse
  hi Identifier ctermfg=239 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=239 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=239 ctermbg=NONE cterm=NONE
  hi Special ctermfg=239 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=239 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=239 ctermbg=NONE cterm=NONE
  hi Type ctermfg=239 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=239 ctermbg=NONE cterm=NONE
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=239 cterm=NONE
  hi ToolbarButton ctermfg=239 ctermbg=255 cterm=bold
  if !s:italics
    hi Folded cterm=NONE
    hi Comment cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 8
  if &background ==# 'dark'
    if get(g:, 'groovy_transp_bg', 0)
      hi Normal ctermfg=LightGrey ctermbg=Black cterm=NONE
      hi Terminal ctermfg=LightGrey ctermbg=NONE cterm=NONE
    else
      hi Normal ctermfg=LightGrey ctermbg=Black cterm=NONE
      hi Terminal ctermfg=LightGrey ctermbg=Black cterm=NONE
    endif
    hi ColorColumn ctermfg=fg ctermbg=Black cterm=NONE
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi CursorColumn ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi CursorLine ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi CursorLineNr ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi DiffAdd ctermfg=LightGrey ctermbg=Black cterm=reverse
    hi DiffChange ctermfg=LightGrey ctermbg=Black cterm=reverse
    hi DiffDelete ctermfg=LightGrey ctermbg=Black cterm=reverse
    hi DiffText ctermfg=LightGrey ctermbg=Black cterm=bold,reverse
    hi Directory ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi EndOfBuffer ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi ErrorMsg ctermfg=LightGrey ctermbg=Black cterm=reverse
    hi FoldColumn ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi Folded ctermfg=LightGrey ctermbg=Black cterm=italic
    hi IncSearch ctermfg=LightGrey ctermbg=DarkYellow cterm=reverse
    hi LineNr ctermfg=DarkGrey ctermbg=Black cterm=NONE
    hi MatchParen ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi ModeMsg ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi MoreMsg ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi NonText ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi Pmenu ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi PmenuSbar ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi PmenuSel ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi PmenuThumb ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi Question ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi Search ctermfg=LightGrey ctermbg=LightYellow cterm=NONE
    hi SignColumn ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi SpecialKey ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi SpellBad ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi SpellCap ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi SpellLocal ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi SpellRare ctermfg=LightGrey ctermbg=Black cterm=reverse
    hi StatusLine ctermfg=LightGrey ctermbg=LightGrey cterm=bold
    hi StatusLineNC ctermfg=LightGrey ctermbg=DarkGrey cterm=NONE
    hi TabLine ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi TabLineFill ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi TabLineSel ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi Title ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi VertSplit ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi Visual ctermfg=LightGrey ctermbg=LightGrey cterm=NONE
    hi VisualNOS ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi WarningMsg ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi WildMenu ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi Comment ctermfg=LightGrey ctermbg=NONE cterm=italic
    hi Constant ctermfg=LightGrey ctermbg=NONE cterm=NONE
    hi Error ctermfg=LightGrey ctermbg=Black cterm=reverse
    hi Identifier ctermfg=LightGrey ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=LightGrey ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=LightGrey ctermbg=NONE cterm=NONE
    hi Special ctermfg=LightGrey ctermbg=NONE cterm=NONE
    hi Statement ctermfg=LightGrey ctermbg=NONE cterm=NONE
    hi Todo ctermfg=LightGrey ctermbg=NONE cterm=NONE
    hi Type ctermfg=LightGrey ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=LightGrey ctermbg=NONE cterm=NONE
    hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=LightGrey cterm=NONE
    hi ToolbarButton ctermfg=LightGrey ctermbg=Black cterm=bold
    if !s:italics
      hi Folded cterm=NONE
      hi Comment cterm=NONE
    endif
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  if get(g:, 'groovy_transp_bg', 0) && !has('gui_running')
    hi Normal ctermfg=Black ctermbg=NONE cterm=NONE
    hi Terminal ctermfg=Black ctermbg=NONE cterm=NONE
  else
    hi Normal ctermfg=Black ctermbg=LightGrey cterm=NONE
    hi Terminal ctermfg=Black ctermbg=LightGrey cterm=NONE
  endif
  hi ColorColumn ctermfg=fg ctermbg=Black cterm=NONE
  hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi CursorColumn ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi CursorLine ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi CursorLineNr ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi DiffAdd ctermfg=Black ctermbg=LightGrey cterm=reverse
  hi DiffChange ctermfg=Black ctermbg=LightGrey cterm=reverse
  hi DiffDelete ctermfg=Black ctermbg=LightGrey cterm=reverse
  hi DiffText ctermfg=Black ctermbg=LightGrey cterm=bold,reverse
  hi Directory ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi EndOfBuffer ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi ErrorMsg ctermfg=Black ctermbg=LightGrey cterm=reverse
  hi FoldColumn ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi Folded ctermfg=Black ctermbg=LightGrey cterm=italic
  hi IncSearch ctermfg=Black ctermbg=LightGrey cterm=reverse
  hi LineNr ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi MatchParen ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi ModeMsg ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi MoreMsg ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi NonText ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi Pmenu ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi PmenuSbar ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi PmenuSel ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi PmenuThumb ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi Question ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi Search ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi SignColumn ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi SpecialKey ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi SpellBad ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi SpellCap ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi SpellLocal ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi SpellRare ctermfg=Black ctermbg=LightGrey cterm=reverse
  hi StatusLine ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi StatusLineNC ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi TabLine ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi TabLineFill ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi TabLineSel ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi Title ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi VertSplit ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi Visual ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi VisualNOS ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi WarningMsg ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi WildMenu ctermfg=Black ctermbg=LightGrey cterm=NONE
  hi Comment ctermfg=Black ctermbg=NONE cterm=italic
  hi Constant ctermfg=Black ctermbg=NONE cterm=NONE
  hi Error ctermfg=Black ctermbg=LightGrey cterm=reverse
  hi Identifier ctermfg=Black ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=Black ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=Black ctermbg=NONE cterm=NONE
  hi Special ctermfg=Black ctermbg=NONE cterm=NONE
  hi Statement ctermfg=Black ctermbg=NONE cterm=NONE
  hi Todo ctermfg=Black ctermbg=NONE cterm=NONE
  hi Type ctermfg=Black ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=Black ctermbg=NONE cterm=NONE
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=Black cterm=NONE
  hi ToolbarButton ctermfg=Black ctermbg=LightGrey cterm=bold
  if !s:italics
    hi Folded cterm=NONE
    hi Comment cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi ColorColumn term=reverse
  hi Conceal term=NONE
  hi Cursor term=NONE
  hi CursorColumn term=reverse
  hi CursorLine term=underline
  hi CursorLineNr term=bold,italic,reverse,underline
  hi DiffAdd term=reverse,underline
  hi DiffChange term=reverse,underline
  hi DiffDelete term=reverse,underline
  hi DiffText term=bold,reverse,underline
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi ErrorMsg term=bold,italic,reverse
  hi FoldColumn term=reverse
  hi Folded term=italic,reverse,underline
  hi IncSearch term=bold,italic,reverse
  hi LineNr term=reverse
  hi MatchParen term=bold,underline
  hi ModeMsg term=NONE
  hi MoreMsg term=NONE
  hi NonText term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=NONE
  hi PmenuSel term=NONE
  hi PmenuThumb term=NONE
  hi Question term=standout
  hi Search term=italic,underline
  hi SignColumn term=reverse
  hi SpecialKey term=bold
  hi SpellBad term=italic,underline
  hi SpellCap term=italic,underline
  hi SpellLocal term=italic,underline
  hi SpellRare term=italic,underline
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=reverse
  hi TabLine term=italic,reverse,underline
  hi TabLineFill term=reverse,underline
  hi TabLineSel term=bold
  hi Title term=bold
  hi VertSplit term=reverse
  hi Visual term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold
  hi Comment term=italic
  hi Constant term=bold,italic
  hi Error term=reverse
  hi Identifier term=italic
  hi Ignore term=NONE
  hi PreProc term=italic
  hi Special term=bold,italic
  hi Statement term=bold
  hi Todo term=bold,underline
  hi Type term=bold
  hi Underlined term=underline
  hi CursorIM term=NONE
  hi ToolbarLine term=reverse
  hi ToolbarButton term=bold,reverse
  if !s:italics
    hi CursorLineNr term=bold,reverse,underline
    hi ErrorMsg term=bold,reverse
    hi Folded term=reverse,underline
    hi IncSearch term=bold,reverse
    hi Search term=underline
    hi SpellBad term=underline
    hi SpellCap term=underline
    hi SpellLocal term=underline
    hi SpellRare term=underline
    hi TabLine term=reverse,underline
    hi Comment term=NONE
    hi Constant term=bold
    hi Identifier term=NONE
    hi PreProc term=NONE
    hi Special term=bold
  endif
  unlet s:t_Co s:italics
  finish
endif

" Background: dark
" Color: black                #272c35                ~        Black
" Color: red                  rgb(255,   0,   0)     ~        DarkRed
" Color: green                rgb(  0, 255,   0)     ~        DarkGreen
" Color: yellow               #986801                ~        DarkYellow
" Color: blue                 rgb(  0,   0, 255)     ~        DarkBlue
" Color: magenta              rgb(255,   0, 255)     ~        DarkMagenta
" Color: cyan                 rgb(  0, 255, 255)     ~        DarkCyan
" Color: white                rgb(235, 235, 235)     ~        LightGrey
" Color: brightblack          #4b5263                ~        DarkGrey
" Color: brightred            rgb(255, 100,   0)     ~        LightRed
" Color: brightgreen          rgb(100, 255,   0)     ~        LightGreen
" Color: brightyellow         #c18401                ~        LightYellow
" Color: brightblue           rgb(  0, 100, 255)     ~        LightBlue
" Color: brightmagenta        rgb(255, 100, 255)     ~        LightMagenta
" Color: brightcyan           rgb(100, 255, 255)     ~        LightCyan
" Color: brightwhite          #e0e0ed                231      White
" Color: brightgray           #3e4452                231      LightGrey
" Color: ebonyclay            #2b323d                231      DarkGrey
" Color: yellowBg             #fef6e1                ~        White
" Term colors: black red green yellow blue magenta cyan white
" Term colors: brightblack brightred brightgreen brightyellow
" Term colors: brightblue brightmagenta brightcyan brightwhite
" Background: light
" Color: black                #494b53                ~        Black
" Color: red                  rgb(255,   0,   0)     ~        DarkRed
" Color: green                rgb(  0, 255,   0)     ~        DarkGreen
" Color: yellow               rgb(255, 255,   0)     ~        DarkYellow
" Color: blue                 rgb(  0,   0, 255)     ~        DarkBlue
" Color: magenta              rgb(255,   0, 255)     ~        DarkMagenta
" Color: cyan                 rgb(  0, 255, 255)     ~        DarkCyan
" Color: white                rgb(235, 235, 235)     ~        LightGrey
" Color: brightblack          rgb(210, 210, 210)     ~        DarkGrey
" Color: brightred            rgb(255, 100,   0)     ~        LightRed
" Color: brightgreen          rgb(100, 255,   0)     ~        LightGreen
" Color: brightyellow         rgb(255, 255, 100)     ~        LightYellow
" Color: brightblue           rgb(  0, 100, 255)     ~        LightBlue
" Color: brightmagenta        rgb(255, 100, 255)     ~        LightMagenta
" Color: brightcyan           rgb(100, 255, 255)     ~        LightCyan
" Color: brightwhite          #ffffff                231      White
" Term colors: black red green yellow blue magenta cyan white
" Term colors: brightblack brightred brightgreen brightyellow
" Term colors: brightblue brightmagenta brightcyan brightwhite
" Background: any
" vim: et ts=2 sw=2
