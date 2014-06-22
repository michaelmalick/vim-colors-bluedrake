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


hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bluedrake"
" let g:bluedrake_256 = 1

if has("gui_running") 
    let s:base00 = "132b43"
    let s:base01 = "193753" 
    let s:base10 = "3773a4"
    let s:base11 = "4187bf"
    let s:base20 = "808080"
    let s:base21 = "949494"
    let s:base30 = "D5DDE0"
    let s:base31 = "E1ECF0"

    if &background=="dark"
        let s:baseback0  = s:base00
        let s:baseback1  = s:base01
        let s:basecolor0 = s:base10
        let s:basecolor1 = s:base11
        let s:basecolor2 = s:base20
        let s:basecolor3 = s:base21
        let s:basefore0  = s:base30
        let s:basefore1  = s:base31
    endif

    if &background=="light"
        let s:baseback0  = s:base30
        let s:baseback1  = s:base31
        let s:basecolor1 = s:base10
        let s:basecolor0 = s:base21
        let s:basecolor2 = s:base20
        let s:basecolor3 = s:base11
        let s:basefore0  = s:base00
        let s:basefore   = s:base01
    endif

    " Multi-color palette (hue)
    let s:blue   = "0096dc"
    let s:red    = "da5b51"
    let s:orange = "bb7600"
    let s:olive  = "888b00"
    let s:green  = "009b00"
    let s:cyan   = "00a5aa"
    let s:purple = "7a74ef"
    let s:pink   = "ce4ad9"

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
    if !exists("g:bluedrake_256")
        let s:base00 = "0"
        let s:base01 = "8" 
        let s:base10 = "11"
        let s:base11 = "12"
        let s:base20 = "9"
        let s:base21 = "14"
        let s:base30 = "7"
        let s:base31 = "15"
        let s:blue   = "4"
        let s:red    = "1"
        let s:orange = "3"
        let s:olive  = "10"
        let s:green  = "2"
        let s:cyan   = "6"
        let s:purple = "13"
        let s:pink   = "5"
    endif

    if exists("g:bluedrake_256")
        let s:base00 = 235
        let s:base01 = 236 
        let s:base10 = 24
        let s:base11 = 110
        let s:base20 = 245
        let s:base21 = 246
        let s:base30 = 253
        let s:base31 = 254
        let s:blue   = 32
        let s:red    = 167
        let s:orange = 136
        let s:olive  = 100
        let s:green  = 28
        let s:cyan   = 37
        let s:purple = 99
        let s:pink   = 170
    endif

    if &background=="dark"
        let s:baseback0  = s:base00
        let s:baseback1  = s:base01
        let s:basecolor0 = s:base10
        let s:basecolor1 = s:base11
        let s:basecolor2 = s:base20
        let s:basecolor3 = s:base21
        let s:basefore0  = s:base30
        let s:basefore1  = s:base31
    endif

    if &background=="light"
        let s:baseback0  = s:base30
        let s:baseback1  = s:base31
        let s:basecolor1 = s:base10
        let s:basecolor0 = s:base21
        let s:basecolor2 = s:base20
        let s:basecolor3 = s:base11
        let s:basefore0  = s:base00
        let s:basefore   = s:base01
    endif

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
call <SID>X("Normal", s:blue, s:baseback0, "")
call <SID>X("Cursor", s:baseback0, s:basecolor2, "")
call <SID>X("CursorLineNr", s:basecolor3, "", "")
call <SID>X("LineNr", s:basecolor1, s:baseback1, "")
call <SID>X("NonText", s:basecolor3, "", "")
call <SID>X("SpecialKey", s:basecolor3, "", "")
call <SID>X("Search", s:baseback1, s:olive, "")
call <SID>X("IncSearch", s:pink, s:baseback1, "")
call <SID>X("TabLine", s:blue, s:basecolor1, "none")
call <SID>X("TabLineSel", s:baseback1, s:basecolor3, "")
call <SID>X("TabLineFill", s:basecolor1, s:blue, "reverse")
call <SID>X("StatusLine", s:basecolor1, s:baseback0, "reverse")
call <SID>X("StatusLineNC", s:basecolor0, s:baseback0, "reverse")
call <SID>X("VertSplit", s:basecolor1, s:basecolor1, "none")
call <SID>X("Visual", s:baseback1, s:basecolor1, "")
call <SID>X("Directory", s:cyan, "", "")
call <SID>X("ModeMsg", s:green, "", "")
call <SID>X("MoreMsg", s:green, "", "")
call <SID>X("Question", s:green, "", "")
call <SID>X("WarningMsg", s:red, "", "")
call <SID>X("MatchParen", s:baseback1, s:pink, "")
call <SID>X("FoldColumn", s:basecolor0, s:baseback0, "")
call <SID>X("vimCommand", s:pink, "", "none")
call <SID>X("DiffText", s:green, s:baseback1, "none")
call <SID>X("DiffChange", s:orange, s:baseback1, "none")
call <SID>X("DiffAdd", s:cyan, s:baseback1, "none")
call <SID>X("DiffDelete", s:red, s:baseback1, "none")
call <SID>X("WildMenu", s:basecolor1, s:baseback1, "none")
if version >= 700
    call <SID>X("CursorLine", "", s:baseback1, "none")
    call <SID>X("CursorColumn", "", s:basecolor0, "none")
    call <SID>X("Folded", s:basecolor1, s:baseback0, "")
    call <SID>X("PMenu", s:baseback1, s:basecolor1, "none")
    call <SID>X("PMenuSel", s:basecolor1, s:baseback1, "")
    call <SID>X("SignColumn", "", s:baseback0, "none")
endif
if version >= 703
    call <SID>X("ColorColumn", "", s:baseback1, "none")
    call <SID>X("Conceal", s:blue, s:baseback0, "")
endif


" Standard highlighting
call <SID>X("Todo", s:purple, s:baseback0, "none")
call <SID>X("Title", s:green, "", "none")
call <SID>X("Identifier", s:orange, "", "none")
call <SID>X("Statement", s:basecolor3, "", "")
call <SID>X("Conditional", s:blue, "", "")
call <SID>X("Repeat", s:blue, "", "")
call <SID>X("Structure", s:purple, "", "")
call <SID>X("Function", s:cyan, "", "")
call <SID>X("Constant", s:red, "", "")
call <SID>X("Special", s:basecolor3, "", "")
call <SID>X("PreProc", s:purple, "", "")
call <SID>X("Operator", s:olive, "", "none")
call <SID>X("Type", s:cyan, "", "none")
call <SID>X("Define", s:purple, "", "none")
call <SID>X("Include", s:cyan, "", "")


" Terminal and GUI differences (no italics in mac terminal)
if has("gui_running")
    call <SID>X("String", s:green, "", "italic")
    call <SID>X("Comment", s:basecolor0, "", "italic")
else
    call <SID>X("String", s:green, "", "")
    call <SID>X("Comment", s:basecolor0, "", "")
    call <SID>X("SpellBad", s:red, s:baseback0, "")
endif


" Pandoc
call <SID>X("pandocUListItem", s:basecolor3, "", "")
call <SID>X("pandocListItem", s:basecolor3, "", "")
call <SID>X("pandocUListItemBullet", s:basecolor3, "", "")
call <SID>X("pandocAtxHeader", s:orange, "", "")
call <SID>X("AtxStart", s:orange, "", "")
call <SID>X("pandocSetexHeader", s:orange, "", "")
