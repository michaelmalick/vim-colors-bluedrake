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


"" GUI settings --------------------------------------------
if has("gui_running")
    let s:Gbase03 = "002d49"
    let s:Gbase02 = "003951"
    let s:Gbase01 = "2f5468"
    let s:Gbase00 = "577284"
    let s:Gbase0  = "8ea2b0"
    let s:Gbase1  = "b4c3cf"
    let s:Gbase2  = "dae6f0"
    let s:Gbase3  = "edf8ff"

    if &background=="dark"
        let s:base03 = s:Gbase03
        let s:base02 = s:Gbase02
        let s:base01 = s:Gbase01
        let s:base00 = s:Gbase00
        let s:base0  = s:Gbase0
        let s:base1  = s:Gbase1
        let s:base2  = s:Gbase2
        let s:base3  = s:Gbase3
    endif

    if &background=="light"
        let s:base03 = s:Gbase3
        let s:base02 = s:Gbase2
        let s:base01 = s:Gbase1
        let s:base00 = s:Gbase0
        let s:base0  = s:Gbase00
        let s:base1  = s:Gbase01
        let s:base2  = s:Gbase02
        let s:base3  = s:Gbase03
    endif

    let s:yellow  = "768f00"
    let s:orange  = "b67800"
    let s:red     = "d75a69"
    let s:magenta = "d74bb9"
    let s:violet  = "976ce2"
    let s:blue    = "0094d4"
    let s:cyan    = "00a39a"
    let s:green   = "009e3c"

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


"" Terminal settings ---------------------------------------
if !has("gui_running")
    if !exists("g:bluedrake_256")
        let s:Gbase03  = "8"
        let s:Gbase02  = "0"
        let s:Gbase01  = "10"
        let s:Gbase00  = "11"
        let s:Gbase0   = "12"
        let s:Gbase1   = "14"
        let s:Gbase2   = "7"
        let s:Gbase3   = "15"
        let s:yellow   = "3"
        let s:orange   = "9"
        let s:red      = "1"
        let s:magenta  = "13"
        let s:violet   = "5"
        let s:blue     = "4"
        let s:cyan     = "6"
        let s:green    = "2"
    endif

    if exists("g:bluedrake_256")
        let s:Gbase03  = "235"
        let s:Gbase02  = "236"
        let s:Gbase01  = "24"
        let s:Gbase00  = "242"
        let s:Gbase0   = "247"
        let s:Gbase1   = "110"
        let s:Gbase2   = "253"
        let s:Gbase3   = "254"
        let s:yellow   = "100"
        let s:orange   = "136"
        let s:red      = "167"
        let s:magenta  = "170"
        let s:violet   = "99"
        let s:blue     = "32"
        let s:cyan     = "37"
        let s:green    = "28"
    endif

    if &background=="dark"
        let s:base03 = s:Gbase03
        let s:base02 = s:Gbase02
        let s:base01 = s:Gbase01
        let s:base00 = s:Gbase00
        let s:base0  = s:Gbase0
        let s:base1  = s:Gbase1
        let s:base2  = s:Gbase2
        let s:base3  = s:Gbase3
    endif

    if &background=="light"
        let s:base03 = s:Gbase3
        let s:base02 = s:Gbase2
        let s:base01 = s:Gbase1
        let s:base00 = s:Gbase0
        let s:base0  = s:Gbase00
        let s:base1  = s:Gbase01
        let s:base2  = s:Gbase02
        let s:base3  = s:Gbase03
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


"" Standard highlighting -----------------------------------

" *Comment
if has("gui_running")
    call <SID>X("Comment", s:base00, "", "italic")
else
    call <SID>X("Comment", s:base00, "", "")
endif

" *Constant (String, Character, Number, Boolean, Float)
call <SID>X("Constant", s:cyan, "", "none")
if has("gui_running")
    call <SID>X("String", s:cyan, "", "italic")
else
    call <SID>X("String", s:cyan, "", "")
endif

" *Identifier (Function)
call <SID>X("Identifier", s:violet, "", "none")

" *Statement (Conditional, Repeat, Label, Operator, Keyword, Exception)
call <SID>X("Statement", s:yellow, "", "none")

" *PreProc (Include, Define, Macro, PreCondit)
call <SID>X("PreProc", s:orange, "", "none")

" *Type (StorageClass Structure, Typedef)
call <SID>X("Type", s:green, "", "none")

" *Special (SpecialChar, Tag, Delimiter, SpecialComment, Debug)
call <SID>X("Special", s:magenta, "", "none")
call <SID>X("Delimiter", s:base00, "", "none")

" *Underline
call <SID>X("Underlined", s:blue, "", "underline")

" *Ignore
call <SID>X("Ignore", s:blue, "", "none")

" *Error
call <SID>X("Error", s:base03, s:red, "bold")

" *Todo
call <SID>X("Todo", s:base0, s:base03, "bold")


"" Default highlighting ------------------------------------
call <SID>X("Cursor", s:base03, s:base0, "")
call <SID>X("CursorIM", s:base03, s:base0, "")
call <SID>X("Directory", s:violet, "", "")
call <SID>X("DiffAdd", s:green, s:base02, "reverse")
call <SID>X("DiffChange", s:blue, s:base02, "reverse")
call <SID>X("DiffDelete", s:red, s:base02, "reverse")
call <SID>X("DiffText", s:blue, s:base3, "reverse")
call <SID>X("ErrorMsg", s:base03, s:red, "bold")
call <SID>X("VertSplit", s:base01, s:base03, "none")
call <SID>X("Folded", s:base0, s:base03, "")
call <SID>X("FoldColumn", s:base00, s:base02, "")
call <SID>X("SignColumn", s:base00, s:base02, "")
call <SID>X("IncSearch", s:yellow, s:base03, "")
call <SID>X("LineNr", s:base00, s:base02, "")
call <SID>X("ModeMsg", s:green, "", "")
call <SID>X("MoreMsg", s:green, "", "")
call <SID>X("NonText", s:base0, "", "none")
call <SID>X("Normal", s:blue, s:base03, "")
call <SID>X("Question", s:green, "", "")
call <SID>X("Search", s:base03, s:yellow, "")
call <SID>X("SpecialKey", s:base0, "", "")
call <SID>X("StatusLine", s:base02, s:base1, "reverse")
call <SID>X("StatusLineNC", s:base02, s:base01, "reverse")
call <SID>X("Title", s:orange, "", "none")
call <SID>X("Visual", s:base03, s:base0, "")
call <SID>X("VisualNOS", s:base03, s:base0, "")
call <SID>X("WarningMsg", s:red, "", "")
call <SID>X("WildMenu", s:blue, s:base02, "reverse")

if version >= 701
    call <SID>X("CursorColumn", "", s:base01, "none")
    call <SID>X("CursorLine", "", s:base02, "none")
    call <SID>X("MatchParen", s:magenta, s:base01, "bold")
    call <SID>X("PMenu", s:base0, s:base02, "none")
    call <SID>X("PMenuSel", s:base02, s:blue, "")
    call <SID>X("PMenuSbar", s:base00, s:base01, "")
    call <SID>X("PMenuThumb", s:base00, s:base01, "")
    call <SID>X("TabLine", s:base00, s:base02, "none")
    call <SID>X("TabLineFill", s:base02, s:blue, "reverse")
    call <SID>X("TabLineSel", s:base1, s:base03, "")
    if !has("gui_running")
        call <SID>X("SpellBad", s:red, s:base03, "underline")
        call <SID>X("SpellCap", s:magenta, s:base03, "underline")
        call <SID>X("SpellLocal", s:cyan, s:base03, "underline")
        call <SID>X("SpellRare", s:cyan, s:base03, "underline")
    endif
endif

if version >= 703
    call <SID>X("Conceal", s:blue, s:base03, "")
    call <SID>X("ColorColumn", "", s:base02, "none")
endif
    
if version >= 704
    call <SID>X("CursorLineNr", s:base1, s:base02, "none")
endif

if version >= 800
    call <SID>X("EndOfBuffer", s:base00, s:base03, "none")
endif


"" HTML ----------------------------------------------------
call <SID>X("htmlH1", s:orange, "", "bold")
call <SID>X("htmlH2", s:violet, "", "bold")
call <SID>X("htmlH3", s:green, "", "bold")
call <SID>X("htmlH4", s:magenta, "", "bold")
call <SID>X("htmlH5", s:cyan, "", "bold")
call <SID>X("htmlH6", s:yellow, "", "bold")
if has("gui_running")
    call <SID>X("htmlItalic", "", "", "italic")
else
    call <SID>X("htmlItalic", "", "", "underline")
endif


"" Markdown (tpope) ----------------------------------------
call <SID>X("markdownHeadingDelimiter", s:base00, "", "none")
call <SID>X("markdownOrderedListMarker", s:base0, "", "none")
call <SID>X("markdownListMarker", s:base0, "", "none")
call <SID>X("markdownRule", s:base00, "", "none")
call <SID>X("markdownUrl", s:yellow, "", "underline")
call <SID>X("markdownCode", s:cyan, "", "none")


"" Pandoc --------------------------------------------------
call <SID>X("pandocYAMLHeader", s:orange, "", "")
call <SID>X("pandocAtxHeader", s:orange, "", "")
call <SID>X("pandocSetexHeader", s:orange, "", "")
call <SID>X("pandocAtxStart", s:orange, "", "")
call <SID>X("pandocListItemBullet", s:base0, "", "")
call <SID>X("pandocUListItemBullet", s:base0, "", "")
call <SID>X("pandocListItemBulletId", s:base0, "", "")
call <SID>X("pandocPCite", s:cyan, "", "")
call <SID>X("pandocICite", s:cyan, "", "")
call <SID>X("pandocCiteAnchor", s:cyan, "", "")
call <SID>X("pandocCiteKey", s:cyan, "", "")
call <SID>X("pandocCiteLocator", s:violet, "", "")
call <SID>X("pandocDelimitedCodeBlockLanguage", s:base0, "", "")
call <SID>X("pandocDelimitedCodeBlockStart", s:base0, "", "")
call <SID>X("pandocDelimitedCodeBlockEnd", s:base0, "", "")
call <SID>X("pandocReferenceLabel", s:violet, "", "") " wrapped citations
call <SID>X("pandocReferenceURL", s:red, "", "")


"" Unite ---------------------------------------------------
call <SID>X("uniteMarkedLine", s:magenta, "", "bold")
call <SID>X("uniteMarkedIcon", s:magenta, "", "")
call <SID>X("uniteCandidateSourceName", s:red, "", "")
call <SID>X("uniteQuickMatchText", s:red, "", "")
call <SID>X("uniteCandidateIcon", s:red, "", "")
call <SID>X("uniteCandidateInputKeyword", s:yellow, "", "") " matched text
call <SID>X("uniteStatusNormal", s:base0, s:base02, "")
call <SID>X("uniteStatusHead", s:base0, s:base02, "")
call <SID>X("uniteStatusSourceNames", s:base00, s:base02, "")
call <SID>X("uniteStatusSourceCandidates", s:base1, s:base02, "")
call <SID>X("uniteStatusMessage", s:violet, s:base02, "")
call <SID>X("uniteStatusLineNR", s:base0, s:base02, "")
call <SID>X("uniteInputPrompt", s:red, "", "")
call <SID>X("uniteInputLine", s:base1, "", "") "input text
call <SID>X("uniteInputCommand", s:green, "", "")


"" Bibtex --------------------------------------------------
call <SID>X("bibType", s:violet, "", "")
call <SID>X("bibEntryKw", s:blue, "", "")
call <SID>X("bibKey", s:yellow, "", "")
call <SID>X("bibVariable", s:blue, "", "")
call <SID>X("bibNSEntryKw", s:blue, "", "")


"" BufExplorer ---------------------------------------------
call <SID>X("bufExplorerActBuf", s:blue, "", "")
call <SID>X("bufExplorerAltBuf", s:blue, "", "")
call <SID>X("bufExplorerCurBuf", s:yellow, "", "")
call <SID>X("bufExplorerHidBuf", s:blue, "", "")
call <SID>X("bufExplorerLockedBuf", s:blue, "", "")
call <SID>X("bufExplorerModBuf", s:blue, "", "")
call <SID>X("bufExplorerUnlBuf", s:base00, "", "")
call <SID>X("bufExplorerInactBuf", s:base00, "", "")


"" Git commit ----------------------------------------------
call <SID>X("gitcommitSummary", s:orange, "", "")
call <SID>X("gitcommitOnBranch", s:base00, "", "")
call <SID>X("gitcommitBranch", s:violet, "", "")
call <SID>X("gitcommitType", s:blue, "", "")
call <SID>X("gitcommitHeader", s:yellow, "", "")
call <SID>X("gitcommitFile", s:blue, "", "")


"" Git -----------------------------------------------------
call <SID>X("diffAdded", s:green, s:base02, "")
call <SID>X("diffRemoved", s:red, s:base02, "none")
call <SID>X("diffChanged", s:blue, s:base02, "none")
call <SID>X("diffLine", s:violet, "", "bold")
call <SID>X("diffFile", s:magenta, "", "bold")
call <SID>X("diffNewFile", s:blue, "", "")
call <SID>X("diffOldFile", s:blue, "", "")
call <SID>X("diffIndexLine", s:blue, "", "")
call <SID>X("diffSubName", s:blue, "", "")
call <SID>X("gitIdentity", s:blue, "", "")
call <SID>X("gitEmail", s:blue, "", "")
call <SID>X("gitEmailDelimiter", s:base00, "", "")
call <SID>X("gitDate", s:blue, "", "")
call <SID>X("gitDateHeader", s:blue, "", "")
call <SID>X("gitHash", s:cyan, "", "")


"" Make ----------------------------------------------------
call <SID>X("makeTarget", s:orange, "", "")
call <SID>X("makeInclude", s:blue, "", "")


"" Extra StatusLine colors ---------------------------------
call <SID>X("StatusLineBold", s:base1, s:base02, "bold")
call <SID>X("StatusLineRed", s:red, s:base02, "")
call <SID>X("StatusLineOrange", s:orange, s:base02, "")


"" vim -----------------------------------------------------
call <SID>X("vimCommand", s:blue, "", "none")


"" tex -----------------------------------------------------
call <SID>X("texCite", s:cyan, "", "none")
call <SID>X("texRefZone", s:violet, "", "none")


"" ctrlp ---------------------------------------------------
call <SID>X("CtrlPNoEntries", s:red, "", "")
call <SID>X("CtrlPMatch", s:yellow, "", "")
call <SID>X("CtrlPMode1", s:green, s:base02, "")
call <SID>X("CtrlPMode2", s:base00, s:base02, "")

