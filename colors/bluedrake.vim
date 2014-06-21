" Bluedrake Color Scheme
"
" Designer: Michael Malick
" Updated:  20 Jun 2014 
" Version:  0.06
"
" Bluedrake is a dark color scheme with lots of blue. The palette for this
" scheme was selected using consistent luminance and chroma values (i.e., only
" the hue value was changed) making each color equally visible. 
"
" Chroma    = 100
" Luminance = 55 
"
" The color palette can be created and tweaked using R:
"   xx <- scales::hue_pal(h = c(0, 360) + 15, c = 100, l = 55, h.start = 0, 
"                         direction = 1)
"   barplot(rep(1, 10), col = xx(10), names.arg=xx(10))  
"
" The background/foreground colors were created using:
"   xx <- scales::seq_gradient_pal(low = '#132B43', high = '#56B1F7', 
"                                  space = 'Lab')
"   colors <- xx(seq(0, 1, length = 8))
"   barplot(rep(1, 8), col = colors, names.arg = colors)
"
"
" The function scheme used in this theme was adapted from Chris Kemson's
" Tommorrow Theme available:
" https://github.com/chriskempson/tomorrow-theme/tree/master/vim/colors
"
" There is no background set when vim is running the terminal because the blues
" in the 256 color palette are not adequete. 


set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bluedrake"


if has("gui_running")
    " Blue palette (gradient)
    let s:background = "132b43"   " Blue0
    let s:column     = "16314B"   " Blue1    R code with n=20
    let s:line       = "1b3c5a"   " Blue2
    let s:window     = "2e608b"   " Blue3
    let s:comment    = "3773a4"   " Blue4
    let s:selection  = "4187bf"   " Blue5
    " Multi-color palette (hue)
    let s:foreground = "0096dc"   " Blue
    let s:red        = "da5b51"
    let s:orange     = "bb7600"
    let s:olive      = "888b00"
    let s:green      = "009b00"
    let s:cyan       = "00a5aa"
    let s:purple     = "7a74ef"
    let s:pink       = "ce4ad9" 
    " Other
    let s:grey       = "999999"
    let s:white      = "ffffff"

    function! <SID>X(group, fg, bg, attr)
        if a:fg != ""
            exec "hi " . a:group . " guifg=#" . a:fg 
        endif
        if a:bg != ""
            exec "hi " . a:group . " guibg=#" . a:bg
        endif
        if a:attr != ""
            exec "hi " . a:group . " gui=" . a:attr 
        endif
    endfunction
endif


if !has("gui_running")
    " Blue palette
    let s:background = "none" " Blue0
    let s:column     = 236    " Blue1
    let s:line       = 17     " Blue2
    let s:window     = 24     " Blue3
    let s:comment    = 24     " Blue4
    let s:selection  = 67     " Blue5
    " Multi-color palette
    let s:foreground = 32
    let s:red        = 167
    let s:orange     = 136
    let s:olive      = 100
    let s:green      = 28
    let s:cyan       = 37
    let s:purple     = 93
    let s:pink       = 163
    " Other
    let s:grey       = 246
    let s:spell      = 124
    let s:white      = 15

    function! <SID>X(group, fg, bg, attr)
        if a:fg != ""
            exec "hi " . a:group .  " ctermfg=" . a:fg
        endif
        if a:bg != ""
            exec "hi " . a:group . " ctermbg=" . a:bg
        endif
        if a:attr != ""
            exec "hi " . a:group . " cterm=" . a:attr
        endif
    endfunction
endif


" Vim highlighting
call <SID>X("Normal", s:foreground, s:background, "")
call <SID>X("Cursor", s:background, s:foreground, "")
call <SID>X("CursorLineNr", s:selection, "", "")
call <SID>X("LineNr", s:window, "", "")
call <SID>X("NonText", s:selection, "", "")
call <SID>X("SpecialKey", s:selection, "", "")
call <SID>X("Search", s:column, s:olive, "")
call <SID>X("IncSearch", s:pink, s:column, "")
call <SID>X("TabLine", s:window, s:foreground, "reverse")
call <SID>X("TabLineFill", s:window, s:foreground, "reverse")
call <SID>X("StatusLine", s:selection, s:background, "reverse")
call <SID>X("StatusLineNC", s:window, s:foreground, "reverse")
call <SID>X("VertSplit", s:window, s:window, "none")
call <SID>X("Visual", s:column, s:selection, "")
call <SID>X("Directory", s:cyan, "", "")
call <SID>X("ModeMsg", s:green, "", "")
call <SID>X("MoreMsg", s:green, "", "")
call <SID>X("Question", s:green, "", "")
call <SID>X("WarningMsg", s:red, "", "")
call <SID>X("MatchParen", s:column, s:pink, "")
call <SID>X("FoldColumn", s:line, s:background, "")
call <SID>X("vimCommand", s:pink, "", "none")
call <SID>X("DiffText", s:column, s:pink, "none")
call <SID>X("DiffChange", s:column, s:grey, "none")
call <SID>X("DiffAdd", s:column, s:selection, "none")
call <SID>X("DiffDelete", s:line, s:selection, "none")
if version >= 700
    call <SID>X("CursorColumn", "", s:line, "none")
    call <SID>X("Folded", s:selection, s:background, "")
    call <SID>X("PMenu", s:background, s:foreground, "none")
    call <SID>X("PMenuSel", s:background, s:comment, "")
    call <SID>X("SignColumn", "", s:background, "none")
endif
if version >= 703
    call <SID>X("ColorColumn", "", s:column, "none")
    call <SID>X("Conceal", s:foreground, s:background, "")
endif


" Standard highlighting
call <SID>X("Todo", s:purple, s:background, "none")
call <SID>X("Title", s:cyan, "", "")
call <SID>X("Identifier", s:orange, "", "none")
call <SID>X("Statement", s:grey, "", "")
call <SID>X("Conditional", s:foreground, "", "")
call <SID>X("Repeat", s:foreground, "", "")
call <SID>X("Structure", s:purple, "", "")
call <SID>X("Function", s:cyan, "", "")
call <SID>X("Constant", s:red, "", "")
call <SID>X("Special", s:grey, "", "")
call <SID>X("PreProc", s:purple, "", "")
call <SID>X("Operator", s:olive, "", "none")
call <SID>X("Type", s:cyan, "", "none")
call <SID>X("Define", s:purple, "", "none")
call <SID>X("Include", s:cyan, "", "")


" Terminal and GUI differences (no italics in mac terminal)
if has("gui_running")
    call <SID>X("String", s:green, "", "italic")
    call <SID>X("Comment", s:comment, "", "italic")
    call <SID>X("CursorLine", "", s:column, "none")
else
    call <SID>X("String", s:green, "", "")
    call <SID>X("Comment", s:comment, "", "")
    call <SID>X("SpellBad", s:spell, s:background, "")
    call <SID>X("CursorLine", "", "", "underline")
endif


" Pandoc
call <SID>X("pandocUListItem", s:grey, "", "")
call <SID>X("pandocListItem", s:grey, "", "")
call <SID>X("pandocUListItemBullet", s:grey, "", "")
call <SID>X("pandocAtxHeader", s:orange, "", "")
call <SID>X("AtxStart", s:orange, "", "")
call <SID>X("pandocSetexHeader", s:orange, "", "")
