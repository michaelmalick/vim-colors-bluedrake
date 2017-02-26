"" bluedrake.vim
""
"" Designer: Michael Malick
"" Version:  0.10
""
"" For details of highlight groups see :h syntax
"" To inspect filetype syntax files use :e $VIMRUNTIME/syntax/html.vim


hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bluedrake"
" let g:bluedrake_256 = 1



" GUI colors -----------------------------------------------
let s:GSbase03  = "002d49"
let s:GSbase02  = "003951"
let s:GSbase01  = "2f5468"
let s:GSbase00  = "577284"
let s:GSbase0   = "8ea2b0"
let s:GSbase1   = "b4c3cf"
let s:GSbase2   = "dae6f0"
let s:GSbase3   = "edf8ff"

let s:Gyellow  = "768f00"
let s:Gorange  = "b67800"
let s:Gred     = "d75a69"
let s:Gmagenta = "d74bb9"
let s:Gviolet  = "976ce2"
let s:Gblue    = "0094d4"
let s:Gcyan    = "00a39a"
let s:Ggreen   = "009e3c"

if &background=="dark"
    let s:Gbase03 = s:GSbase03
    let s:Gbase02 = s:GSbase02
    let s:Gbase01 = s:GSbase01
    let s:Gbase00 = s:GSbase00
    let s:Gbase0  = s:GSbase0
    let s:Gbase1  = s:GSbase1
    let s:Gbase2  = s:GSbase2
    let s:Gbase3  = s:GSbase3
endif

if &background=="light"
    let s:Gbase03 = s:GSbase3
    let s:Gbase02 = s:GSbase2
    let s:Gbase01 = s:GSbase1
    let s:Gbase00 = s:GSbase0
    let s:Gbase0  = s:GSbase00
    let s:Gbase1  = s:GSbase01
    let s:Gbase2  = s:GSbase02
    let s:Gbase3  = s:GSbase03
endif


" Terminal colors ------------------------------------------
if !exists("g:bluedrake_256")
    let s:TSbase03   = "8"
    let s:TSbase02   = "0"
    let s:TSbase01   = "10"
    let s:TSbase00   = "11"
    let s:TSbase0    = "12"
    let s:TSbase1    = "14"
    let s:TSbase2    = "7"
    let s:TSbase3    = "15"

    let s:Tyellow   = "3"
    let s:Torange   = "9"
    let s:Tred      = "1"
    let s:Tmagenta  = "13"
    let s:Tviolet   = "5"
    let s:Tblue     = "4"
    let s:Tcyan     = "6"
    let s:Tgreen    = "2"
endif

if exists("g:bluedrake_256")
    let s:TSbase03   = "235"
    let s:TSbase02   = "236"
    let s:TSbase01   = "24"
    let s:TSbase00   = "242"
    let s:TSbase0    = "247"
    let s:TSbase1    = "110"
    let s:TSbase2    = "253"
    let s:TSbase3    = "254"

    let s:Tyellow   = "100"
    let s:Torange   = "136"
    let s:Tred      = "167"
    let s:Tmagenta  = "170"
    let s:Tviolet   = "99"
    let s:Tblue     = "32"
    let s:Tcyan     = "37"
    let s:Tgreen    = "28"
endif

if &background=="dark"
    let s:Tbase03 = s:TSbase03
    let s:Tbase02 = s:TSbase02
    let s:Tbase01 = s:TSbase01
    let s:Tbase00 = s:TSbase00
    let s:Tbase0  = s:TSbase0
    let s:Tbase1  = s:TSbase1
    let s:Tbase2  = s:TSbase2
    let s:Tbase3  = s:TSbase3
endif

if &background=="light"
    let s:Tbase03 = s:TSbase3
    let s:Tbase02 = s:TSbase2
    let s:Tbase01 = s:TSbase1
    let s:Tbase00 = s:TSbase0
    let s:Tbase0  = s:TSbase00
    let s:Tbase1  = s:TSbase01
    let s:Tbase2  = s:TSbase02
    let s:Tbase3  = s:TSbase03
endif

if has('nvim')
    let g:terminal_color_0  = '#'.s:Gbase02
    let g:terminal_color_1  = '#'.s:Gred
    let g:terminal_color_2  = '#'.s:Ggreen
    let g:terminal_color_3  = '#'.s:Gyellow
    let g:terminal_color_4  = '#'.s:Gblue
    let g:terminal_color_5  = '#'.s:Gviolet
    let g:terminal_color_6  = '#'.s:Gcyan
    let g:terminal_color_7  = '#'.s:Gbase2
    let g:terminal_color_8  = '#'.s:Gbase03
    let g:terminal_color_9  = '#'.s:Gorange
    let g:terminal_color_10 = '#'.s:Gbase01
    let g:terminal_color_11 = '#'.s:Gbase00
    let g:terminal_color_12 = '#'.s:Gbase0
    let g:terminal_color_13 = '#'.s:Gmagenta
    let g:terminal_color_14 = '#'.s:Gbase1
    let g:terminal_color_15 = '#'.s:Gbase3
endif


"" Functions -----------------------------------------------
function! s:bluedrake_color(color)
    "" return a list of length two giving [term_color, gui_color]
    if a:color == "yellow"
        let s:col = [s:Tyellow, s:Gyellow]
    elseif a:color == "orange"
        let s:col = [s:Torange, s:Gorange]
    elseif a:color == "red"
        let s:col = [s:Tred, s:Gred]
    elseif a:color == "magenta"
        let s:col = [s:Tmagenta, s:Gmagenta]
    elseif a:color == "violet"
        let s:col = [s:Tviolet, s:Gviolet]
    elseif a:color == "blue"
        let s:col = [s:Tblue, s:Gblue]
    elseif a:color == "cyan"
        let s:col = [s:Tcyan, s:Gcyan]
    elseif a:color == "green"
        let s:col = [s:Tgreen, s:Ggreen]
    elseif a:color == "base03"
        let s:col = [s:Tbase03, s:Gbase03]
    elseif a:color == "base02"
        let s:col = [s:Tbase02, s:Gbase02]
    elseif a:color == "base01"
        let s:col = [s:Tbase01, s:Gbase01]
    elseif a:color == "base00"
        let s:col = [s:Tbase00, s:Gbase00]
    elseif a:color == "base0"
        let s:col = [s:Tbase0, s:Gbase0]
    elseif a:color == "base1"
        let s:col = [s:Tbase1, s:Gbase1]
    elseif a:color == "base2"
        let s:col = [s:Tbase2, s:Gbase2]
    elseif a:color == "base3"
        let s:col = [s:Tbase3, s:Gbase3]
    endif
    return s:col
endfunction


function! <SID>X(group, fg, bg, attr)
    if a:fg != ""
        exec "hi " . a:group . " ctermfg=" . s:bluedrake_color(a:fg)[0]
        exec "hi " . a:group . " guifg=#" . s:bluedrake_color(a:fg)[1]
    endif
    if a:bg != ""
        exec "hi " . a:group . " ctermbg=" . s:bluedrake_color(a:bg)[0]
        exec "hi " . a:group . " guibg=#" . s:bluedrake_color(a:bg)[1]
    endif
    if a:attr != ""
        exec "hi " . a:group . " cterm=" . a:attr
        exec "hi " . a:group . " gui=" . a:attr
    endif
endfunction



"" Standard highlighting -----------------------------------

" *Comment
if has("gui_running")
    call <SID>X("Comment", "base00", "", "italic")
else
    call <SID>X("Comment", "base00", "", "")
endif

" *Constant (String, Character, Number, Boolean, Float)
call <SID>X("Constant", "cyan", "", "none")
if has("gui_running")
    call <SID>X("String", "cyan", "", "italic")
else
    call <SID>X("String", "cyan", "", "")
endif

" *Identifier (Function)
call <SID>X("Identifier", "violet", "", "none")

" *Statement (Conditional, Repeat, Label, Operator, Keyword, Exception)
call <SID>X("Statement", "yellow", "", "none")

" *PreProc (Include, Define, Macro, PreCondit)
call <SID>X("PreProc", "orange", "", "none")

" *Type (StorageClass Structure, Typedef)
call <SID>X("Type", "green", "", "none")

" *Special (SpecialChar, Tag, Delimiter, SpecialComment, Debug)
call <SID>X("Special", "magenta", "", "none")
call <SID>X("Delimiter", "base00", "", "none")

" *Underline
call <SID>X("Underlined", "blue", "", "underline")

" *Ignore
call <SID>X("Ignore", "blue", "", "none")

" *Error
call <SID>X("Error", "base03", "red", "bold")

" *Todo
call <SID>X("Todo", "base0", "base03", "bold")


"" Default highlighting ------------------------------------
call <SID>X("Cursor", "base03", "base0", "")
call <SID>X("CursorIM", "base03", "base0", "")
call <SID>X("Directory", "violet", "", "")
call <SID>X("DiffAdd", "green", "base02", "reverse")
call <SID>X("DiffChange", "blue", "base02", "reverse")
call <SID>X("DiffDelete", "red", "base02", "reverse")
call <SID>X("DiffText", "blue", "base3", "reverse")
call <SID>X("ErrorMsg", "base03", "red", "bold")
call <SID>X("VertSplit", "base01", "base03", "none")
call <SID>X("Folded", "base0", "base03", "")
call <SID>X("FoldColumn", "base00", "base02", "")
call <SID>X("SignColumn", "base00", "base02", "")
call <SID>X("IncSearch", "yellow", "base03", "")
call <SID>X("LineNr", "base00", "base02", "")
call <SID>X("ModeMsg", "green", "", "")
call <SID>X("MoreMsg", "green", "", "")
call <SID>X("NonText", "base0", "", "none")
call <SID>X("Normal", "blue", "base03", "")
call <SID>X("Question", "green", "", "")
call <SID>X("Search", "base03", "yellow", "")
call <SID>X("SpecialKey", "base0", "", "")
call <SID>X("StatusLine", "base02", "base1", "reverse")
call <SID>X("StatusLineNC", "base02", "base01", "reverse")
call <SID>X("Title", "orange", "", "none")
call <SID>X("Visual", "base03", "base0", "")
call <SID>X("VisualNOS", "base03", "base0", "")
call <SID>X("WarningMsg", "red", "", "")
call <SID>X("WildMenu", "blue", "base02", "reverse")

if version >= 701
    call <SID>X("CursorColumn", "", "base01", "none")
    call <SID>X("CursorLine", "", "base02", "none")
    call <SID>X("MatchParen", "magenta", "base01", "bold")
    call <SID>X("PMenu", "base0", "base02", "none")
    call <SID>X("PMenuSel", "base02", "blue", "")
    call <SID>X("PMenuSbar", "base00", "base01", "")
    call <SID>X("PMenuThumb", "base00", "base01", "")
    call <SID>X("TabLine", "base00", "base02", "none")
    call <SID>X("TabLineFill", "base02", "blue", "reverse")
    call <SID>X("TabLineSel", "base1", "base03", "")
    if !has("gui_running")
        call <SID>X("SpellBad", "red", "base03", "underline")
        call <SID>X("SpellCap", "magenta", "base03", "underline")
        call <SID>X("SpellLocal", "cyan", "base03", "underline")
        call <SID>X("SpellRare", "cyan", "base03", "underline")
    endif
endif

if version >= 703
    call <SID>X("Conceal", "blue", "base03", "")
    call <SID>X("ColorColumn", "", "base02", "none")
endif

if version >= 704
    call <SID>X("CursorLineNr", "base1", "base02", "none")
endif

if version >= 800
    call <SID>X("EndOfBuffer", "base00", "base03", "none")
endif


"" HTML ----------------------------------------------------
call <SID>X("htmlH1", "orange", "", "bold")
call <SID>X("htmlH2", "violet", "", "bold")
call <SID>X("htmlH3", "green", "", "bold")
call <SID>X("htmlH4", "magenta", "", "bold")
call <SID>X("htmlH5", "cyan", "", "bold")
call <SID>X("htmlH6", "yellow", "", "bold")
if has("gui_running")
    call <SID>X("htmlItalic", "", "", "italic")
else
    call <SID>X("htmlItalic", "", "", "underline")
endif


"" Markdown (tpope) ----------------------------------------
call <SID>X("markdownHeadingDelimiter", "base00", "", "none")
call <SID>X("markdownOrderedListMarker", "base0", "", "none")
call <SID>X("markdownListMarker", "base0", "", "none")
call <SID>X("markdownRule", "base00", "", "none")
call <SID>X("markdownUrl", "yellow", "", "underline")
call <SID>X("markdownCode", "cyan", "", "none")


"" Pandoc --------------------------------------------------
call <SID>X("pandocYAMLHeader", "orange", "", "")
call <SID>X("pandocAtxHeader", "orange", "", "")
call <SID>X("pandocSetexHeader", "orange", "", "")
call <SID>X("pandocAtxStart", "orange", "", "")
call <SID>X("pandocListItemBullet", "base0", "", "")
call <SID>X("pandocUListItemBullet", "base0", "", "")
call <SID>X("pandocListItemBulletId", "base0", "", "")
call <SID>X("pandocPCite", "cyan", "", "")
call <SID>X("pandocICite", "cyan", "", "")
call <SID>X("pandocCiteAnchor", "cyan", "", "")
call <SID>X("pandocCiteKey", "cyan", "", "")
call <SID>X("pandocCiteLocator", "violet", "", "")
call <SID>X("pandocDelimitedCodeBlockLanguage", "base0", "", "")
call <SID>X("pandocDelimitedCodeBlockStart", "base0", "", "")
call <SID>X("pandocDelimitedCodeBlockEnd", "base0", "", "")
call <SID>X("pandocReferenceLabel", "violet", "", "") " wrapped citations
call <SID>X("pandocReferenceURL", "red", "", "")


"" Unite ---------------------------------------------------
call <SID>X("uniteMarkedLine", "magenta", "", "bold")
call <SID>X("uniteMarkedIcon", "magenta", "", "")
call <SID>X("uniteCandidateSourceName", "red", "", "")
call <SID>X("uniteQuickMatchText", "red", "", "")
call <SID>X("uniteCandidateIcon", "red", "", "")
call <SID>X("uniteCandidateInputKeyword", "yellow", "", "") " matched text
call <SID>X("uniteStatusNormal", "base0", "base02", "")
call <SID>X("uniteStatusHead", "base0", "base02", "")
call <SID>X("uniteStatusSourceNames", "base00", "base02", "")
call <SID>X("uniteStatusSourceCandidates", "base1", "base02", "")
call <SID>X("uniteStatusMessage", "violet", "base02", "")
call <SID>X("uniteStatusLineNR", "base0", "base02", "")
call <SID>X("uniteInputPrompt", "red", "", "")
call <SID>X("uniteInputLine", "base1", "", "") "input text
call <SID>X("uniteInputCommand", "green", "", "")


"" Bibtex --------------------------------------------------
call <SID>X("bibType", "violet", "", "")
call <SID>X("bibEntryKw", "blue", "", "")
call <SID>X("bibKey", "yellow", "", "")
call <SID>X("bibVariable", "blue", "", "")
call <SID>X("bibNSEntryKw", "blue", "", "")


"" BufExplorer ---------------------------------------------
call <SID>X("bufExplorerActBuf", "blue", "", "")
call <SID>X("bufExplorerAltBuf", "blue", "", "")
call <SID>X("bufExplorerCurBuf", "yellow", "", "")
call <SID>X("bufExplorerHidBuf", "blue", "", "")
call <SID>X("bufExplorerLockedBuf", "blue", "", "")
call <SID>X("bufExplorerModBuf", "blue", "", "")
call <SID>X("bufExplorerUnlBuf", "base00", "", "")
call <SID>X("bufExplorerInactBuf", "base00", "", "")


"" Git commit ----------------------------------------------
call <SID>X("gitcommitSummary", "orange", "", "")
call <SID>X("gitcommitOnBranch", "base00", "", "")
call <SID>X("gitcommitBranch", "violet", "", "")
call <SID>X("gitcommitType", "blue", "", "")
call <SID>X("gitcommitHeader", "yellow", "", "")
call <SID>X("gitcommitFile", "blue", "", "")


"" Git -----------------------------------------------------
call <SID>X("diffAdded", "green", "base02", "")
call <SID>X("diffRemoved", "red", "base02", "none")
call <SID>X("diffChanged", "blue", "base02", "none")
call <SID>X("diffLine", "violet", "", "bold")
call <SID>X("diffFile", "magenta", "", "bold")
call <SID>X("diffNewFile", "blue", "", "")
call <SID>X("diffOldFile", "blue", "", "")
call <SID>X("diffIndexLine", "blue", "", "")
call <SID>X("diffSubName", "blue", "", "")
call <SID>X("gitIdentity", "blue", "", "")
call <SID>X("gitEmail", "blue", "", "")
call <SID>X("gitEmailDelimiter", "base00", "", "")
call <SID>X("gitDate", "blue", "", "")
call <SID>X("gitDateHeader", "blue", "", "")
call <SID>X("gitHash", "cyan", "", "")


"" Make ----------------------------------------------------
call <SID>X("makeTarget", "orange", "", "")
call <SID>X("makeInclude", "blue", "", "")


"" Extra StatusLine colors ---------------------------------
call <SID>X("StatusLineBold", "base1", "base02", "bold")
call <SID>X("StatusLineRed", "red", "base02", "")
call <SID>X("StatusLineOrange", "orange", "base02", "")


"" vim -----------------------------------------------------
call <SID>X("vimCommand", "blue", "", "none")


"" tex -----------------------------------------------------
call <SID>X("texCite", "cyan", "", "none")
call <SID>X("texRefZone", "violet", "", "none")


"" ctrlp ---------------------------------------------------
call <SID>X("CtrlPNoEntries", "red", "", "")
call <SID>X("CtrlPMatch", "yellow", "", "")
call <SID>X("CtrlPMode1", "green", "base02", "")
call <SID>X("CtrlPMode2", "base00", "base02", "")

"" YAML ----------------------------------------------------
call <SID>X("yamlDocumentStart", "base00", "", "")
call <SID>X("yamlKeyValueDelimiter", "base00", "", "")

"" vim-better-whitespace
call <SID>X("ExtraWhitespace", "", "red", "")

