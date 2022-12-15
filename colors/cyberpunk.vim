" highlight clear

if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "cyberpunk"

function! HighlightFor(group, ...)
  execute "hi ".a:group
        \ ." guifg=".a:1
        \ ." guibg=".a:2
        \ ." gui=".a:3
endfunction

function! HighlightForGui(group, ...)
  execute "hi ".a:group
        \ ." guisp=".a:1
        \ ." cterm=".a:2
        \ ." gui=".a:3
endfunction

" general 
call HighlightFor("Normal",      "#FF0055", "#120b10", "NONE") " old bg: #1a1018
call HighlightFor("Visual",      "NONE",    "#563466", "NONE")
call HighlightFor("ColorColumn", "NONE",    "#182333", "NONE")
call HighlightFor("LineNr",      "#FF0055", "NONE",    "NONE")
call HighlightFor("SignColumn",  "#00F5F5", "NONE",    "NONE")

call HighlightFor("DiffAdd",    "NONE", "NONE",    "NONE")
call HighlightFor("DiffDelete", "NONE", "#ff1745", "NONE" )
call HighlightFor("DiffText",   "NONE", "#00ff84", "NONE")
call HighlightFor("DiffChange", "NONE", "NONE",    "NONE")

call HighlightFor("VertSplit", "#FF0055", "#101116", "NONE")

call HighlightFor("IncSearch",  "NONE", "#283593", "NONE")
call HighlightFor("Search",     "NONE", "#283593", "NONE")
call HighlightFor("Substitute", "NONE", "#283593", "NONE")

call HighlightFor("MatchParen", "#F500F5", "NONE", "bold")
call HighlightFor("NonText",    "#2B3E5A", "NONE", "NONE")
call HighlightFor("Whitespace", "#2B3E5A", "NONE", "NONE")

call HighlightFor("WildMenu",  "#00FFC8", "NONE", "bold")
call HighlightFor("Directory", "#00FFC8", "NONE", "NONE")
call HighlightFor("Title",     "#c592ff", "NONE", "NONE")

" Cursor {{{
call HighlightFor("Cursor",       "#00FFC8", "NONE",    "NONE")
call HighlightFor("CursorLineNr", "#00F5F5", "NONE", "NONE")

" Cursorline type
if exists("g:cyberpunk_cursorline") && g:cyberpunk_cursorline == "black"
  call HighlightFor("CursorLine",   "NONE", "#000000", "NONE")
else
  call HighlightFor("CursorLine",   "#140007", "#FF0055", "NONE")
endif

call HighlightFor("CursorColumn", "NONE",    "NONE",    "NONE")
" }}}

" Code {{{
" The following groups are not builtin but are defined commonly in syntax files
call HighlightFor("Comment",   "#005900", "NONE", "italic") " #6766b3
call HighlightFor("String",    "#E1D014", "NONE", "NONE")
call HighlightFor("Number",    "#E1D014",  "NONE", "NONE")
call HighlightFor("Float",     "#E1D014",  "NONE", "NONE")
call HighlightFor("Boolean",   "#E1D014",  "NONE", "NONE")
call HighlightFor("Character", "#E1D014",  "NONE", "NONE") " #fffc58

call HighlightFor("Conditional",  "#C80000", "NONE", "NONE") " #76C1FF
call HighlightFor("Repeat",       "#C80000", "NONE", "NONE") " #FE514B
call HighlightFor("Label",        "#76C1FF", "NONE", "NONE")
call HighlightFor("Exception",    "#F50000", "NONE", "NONE")
call HighlightFor("Operator",     "#76C1FF", "NONE", "NONE")
call HighlightFor("Keyword",      "#76C1FF", "NONE", "NONE")
call HighlightFor("StorageClass", "#76C1FF", "NONE", "NONE")
call HighlightFor("Statement",    "#76C1FF", "NONE", "NONE")
call HighlightFor("Constant",    "#76C1FF", "NONE", "bold")

call HighlightFor("Bracket",    "#76C1FF", "NONE", "NONE")
call HighlightFor("Delimiter",    "#76C1FF", "NONE", "NONE")

call HighlightFor("Function",   "#F50000", "NONE", "NONE") " #d57bff
call HighlightFor("@keyword.function",   "#7BF500", "NONE", "NONE") " #d57bff
call HighlightFor("Identifier", "#00DFDF", "NONE", "NONE") " #EEFFFF
call HighlightFor("@variable.builtin", "#7BF500", "NONE", "NONE") " #EEFFFF
call HighlightFor("@property", "#00B2B2", "NONE", "NONE") " #EEFFFF

call HighlightFor("PreProc", "#00FF9C", "NONE", "NONE")

call HighlightFor("Type",      "#00D560", "NONE", "bold") " #00FF9C
call HighlightFor("@type.qualifier", "#B20000", "NONE", "NONE") " #EEFFFF
call HighlightFor("Structure", "#00D560", "NONE", "NONE")
call HighlightFor("Typedef",   "#00D560", "NONE", "NONE")

call HighlightFor("Underlined", "NONE",    "NONE",    "NONE")
call HighlightFor("Todo",       "#00FF9C", "#770501 ", "italic") " #372963
call HighlightFor("Error",      "#ff3270", "NONE",   "undercurl")
call HighlightFor("WarningMsg", "#009550", "NONE",   "NONE")
call HighlightFor("Special",    "#00FF9C", "NONE",   "italic")
call HighlightFor("Tag",        "#00FF9C", "NONE",    "undercurl")
" }}}

" Pmenu {{{
call HighlightFor("Pmenu",      "#ff0055", "#140007", "NONE")
call HighlightFor("PmenuSel",   "#140007", "#ff0055", "NONE")
call HighlightFor("PmenuSbar",  "NONE",    "#ff0055", "NONE")
call HighlightFor("PmenuThumb", "NONE",    "NONE",    "NONE")
" }}}


" Diagnostics  {{{
call HighlightFor("DiagnosticError",      "#B200B2", "NONE", "NONE")
call HighlightFor("DiagnosticWarn",   "#F57A00", "NONE", "NONE")
call HighlightFor("DiagnosticInfo",  "#00C8C8",    "NONE", "NONE")
call HighlightFor("DiagnosticHint", "#00C8C8",    "NONE",    "NONE")
call HighlightForGui("DiagnosticUnderlineError",      "#B200B2", "NONE", "underline")
call HighlightForGui("DiagnosticUnderlineWarn",   "#F57A00", "NONE", "underline")
call HighlightForGui("DiagnosticUnderlineInfo",  "#00C8C8",    "NONE", "underline")
call HighlightForGui("DiagnosticUnderlineHint", "#00C8C8",    "NONE",    "underline")
" }}}
" Git {{{
call HighlightFor("GitSignsAdd",   "#00C8C8", "NONE", "bold")
call HighlightFor("GitSignsDelete",   "#F50000", "NONE", "bold")
call HighlightFor("GitSignsChange",   "#E1D014", "NONE", "bold")
call HighlightFor("NeoTreeGitConflict",   "#B200B2", "NONE", "bold")
call HighlightFor("NeoTreeGitUntracked",   "#005900", "NONE", "bold")
" }}}

" Status line {{{
call HighlightFor("StatusLine",   "#ff0055", "#1d000a", "bold")
call HighlightFor("StatusLineNC", "#ff0055", "#000000", "NONE")
" }}}

" Tab pages {{{
call HighlightFor("TabLine",     "#FF4081", "NONE", "NONE")
call HighlightFor("TabLineFill", "NONE",    "NONE", "NONE")
call HighlightFor("TabLineSel",  "#FF4081", "NONE", "bold")
" }}}

" Folds {{{
call HighlightFor("Folded",     "#00FFC8", "NONE", "italic")
call HighlightFor("FoldColumn", "#00FFC8", "NONE", "NONE")
" }}}
" '

call HighlightFor("CmpItemKindEnumDefault", "#E1D014", "NONE", "NONE")
call HighlightFor("CmpItemKindValueDefault", "#F57A00", "NONE", "NONE")
call HighlightFor("CmpItemKindFunctionDefault", "#F50000", "NONE", "NONE")
call HighlightFor("CmpItemKindSnippetDefault", "#00DFDF", "NONE", "NONE")

call HighlightFor("Directory", "#00DFDF", "NONE", "NONE")
