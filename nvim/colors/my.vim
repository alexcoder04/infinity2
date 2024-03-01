"        _                        _            ___  _  _   
"   __ _| | _____  _____ ___   __| | ___ _ __ / _ \| || |  
"  / _` | |/ _ \ \/ / __/ _ \ / _` |/ _ \ '__| | | | || |_ 
" | (_| | |  __/>  < (_| (_) | (_| |  __/ |  | |_| |__   _|
"  \__,_|_|\___/_/\_\___\___/ \__,_|\___|_|   \___/   |_|  
" 
" Copyright (c) 2022, 2024 alexcoder04 <alexcoder04@protonmail.com>
" 
" My nvim colorscheme

hi clear

" general {{{
hi Boolean guifg=#ff5555
hi Character guifg=#f1fa8c
hi link Number Boolean
hi link String Character
hi Conditional guifg=#ff5555 gui='bold'
hi Constant guifg=#ff5555 gui='bold'
hi Cursor guifg=#44475a guibg=#f8f8f2
hi link iCursor Cursor
hi Debug guifg=#6272a4 gui='bold'
hi Define guifg=#50fa7b
hi link Delimiter Debug
hi Directory guifg=#6272a4 gui='bold'
hi Error guifg=#f1fa8c guibg=#44475a
hi ErrorMsg guifg=#ff5555 guibg=#44475a gui='bold'
hi Exception guifg=#50fa7b gui='bold'
hi Float guifg=#8be9fd
hi Folded guifg=#f1fa8c guibg=#44475a
hi link FoldColumn Folded
hi Function guifg=#50fa7b
hi Identifier guifg=#f1fa8c
hi Ignore guifg=#6272a4
hi IncSearch guifg=#f1fa8c guibg=#44475a
hi Keyword guifg=#ff5555 gui='bold'
hi Label guifg=#f1fa8c
hi Macro guifg=#f1fa8c gui='italic'
hi SpecialKey guifg=#50fa7b gui='italic'
hi MatchParen guifg=#f1fa8c guibg=#44475a gui='bold'
hi ModeMsg guifg=#f1fa8c
hi MoreMsg guifg=#f1fa8c
hi Operator guifg=#ff5555
hi Pmenu guifg=#50fa7b guibg=#44475a
"hi PmenuSel guifg='' guibg=#6272a4
"hi PmenuSbar guifg='' guibg=#44475a
hi PmenuThumb guifg=#50fa7b
hi PreCondit guifg=#50fa7b gui='bold'
hi PreProc guifg=#50fa7b
hi Question guifg=#50fa7b
hi Repeat guifg=#ff5555 gui='bold'
hi Search guifg=#44475a guibg=#f1fa8c
hi SignColumn guifg=#50fa7b guibg=#6272a4
hi SpecialChar guifg=#ff5555 gui='bold'
hi SpecialComment guifg=#6272a4 gui='bold'
hi Special guifg=#50fa7b gui='italic'
if has('spell')
  hi SpellBad guifg=#ff5555 gui='undercurl,bold'
  hi SpellCap guifg=#8be9fd gui='undercurl,bold'
  hi SpellLocal guifg=#50fa7b gui='undercurl,bold'
  hi SpellRare guifg=#ff5555 gui='undercurl,bold'
endif
hi Statement guifg=#ff5555 gui='bold'
hi StorageClass guifg=#ff5555 gui='italic'
hi Structure guifg=#50fa7b
hi Tag guifg=#ff5555 gui='italic'
hi Title guifg=#f1fa8c
hi Todo guifg=#f8f8f2 guibg=#44475a gui='italic,bold'
hi Typedef guifg=#50fa7b
hi link Type Typedef
hi Underlined guifg=#6272a4 gui='underline'
hi VertSplit guifg=#6272a4 guibg=#44475a gui='bold'
"hi Visual guifg='' guibg=#44475a
hi link VisualNOS Visual
hi WarningMsg guifg=#f8f8f2 guibg=#44475a gui='bold'
hi WildMenu guifg=#50fa7b guibg=#44475a
hi TabLineFill guifg=#44475a guibg=#44475a
hi TabLine guifg=#6272a4 guibg=#44475a
hi Normal guifg=#f8f8f2 guibg='NONE'
hi Comment guifg=#6272a4 gui='italic'
"hi CursorLine guifg='' guibg=#6272a4
hi CursorLineNr guifg=#f1fa8c
"hi CursorColumn guifg='' guibg=#6272a4
"hi ColorColumn guifg='' guibg=#6272a4
hi LineNr guifg=#6272a4
hi NonText guifg=#6272a4 guibg='NONE'
hi SpecialKey guifg=#6272a4

" }}}

" languages {{{

" Go
hi goDecimalInt guifg=#6272a4
hi goFunction guifg=#50fa7b gui='bold'
hi goFunctionCall guifg=#8be9fd gui='bold'
hi goHexadecimalInt guifg=#6272a4
hi goOperator guifg='#ffffff'
hi goPredefinedIdentifiers guifg=#ff5555 gui='italic'
hi goStatement guifg=#ff5555 gui='italic,bold'
hi goType guifg=#8be9fd gui='italic'
hi link goConditional goStatement
hi link goDeclaration goStatement
hi link goFloat goDecimalInt
hi link goFloats goType
hi link goRepeat goStatement
hi link goSignedInts goType
hi link goTypeConstructor goType
hi link goTypeName goType
hi link goExtraType goType
hi link goReceiverType goType
hi link goUnsignedInts goType

" Vim
hi vimGroup guifg=#8be9fd gui='italic'
hi vimAutoCmdSfxList guifg=#8be9fd gui='italic'
hi vimEnvvar guifg=#6272a4
hi vimMapLhs guifg=#f1fa8c
hi vimFileType guifg=#50fa7b gui='bold'
hi link vimAutoEvent vimGroup
hi link vimSynType vimFileType

" Python -> Go
hi link pythonBuiltin goFunctionCall
hi link pythonConditional goStatement
hi link pythonFunction goFunctionCall
hi link pythonNumber goDecimalInt
hi link pythonRepeat goStatement
hi link pythonStatement goStatement

" SH -> Go
hi link shConditional shLoop
hi link shFunction goFunctionCall
hi link shLoop goStatement
hi link shRange shLoop
hi link shSet goStatement
hi link shStatement goStatement
hi link shCaseBar Statement

" TeX
hi texTypeSize guifg=#8be9fd gui='italic'
hi texTypeStyle guifg=#8be9fd gui='bold'
hi texStatement guifg=#f1fa8c gui='bold'

" Markdown
hi markdownBold guifg=#f1fa8c gui='bold'
hi markdownCode guifg=#f8f8f2 guibg=#44475a
hi markdownCodeDelimiter guifg=#8be9fd gui='bold'
hi markdownError guifg=#f1fa8c
hi markdownH1 guifg=#ff5555 gui='bold'
hi markdownH2 guifg=#ff5555 gui='bold'
hi markdownH3 guifg=#ff5555 gui='bold'
hi markdownItalic guifg=#f1fa8c gui='italic'
hi markdownLinkDelimiter guifg=#f1fa8c
hi markdownLinkText guifg=#50fa7b gui='underline'
hi markdownListMarker guifg=#50fa7b gui='bold'
hi markdownRule guifg=#8be9fd gui='bold'
hi link markdownCodeBlock markdownCode
hi link markdownLinkTextDelimiter markdownLinkDelimiter

" Cron
hi crontabCmd guifg=#f8f8f2

" dosini
hi dosiniLabel guifg=#8be9fd gui='italic'

" i3config
hi i3ConfigFocusWrappingType guifg=#50fa7b gui='bold'
hi i3ConfigGapStyleKeyword guifg=#f1fa8c gui='italic'
hi i3ConfigVariable guifg=#8be9fd gui='italic'
hi i3ConfigWindowCommandSpecial guifg=#50fa7b gui='italic'
hi link i3ConfigAction i3ConfigVariable
hi link i3ConfigFontContent i3ConfigFontNamespace
hi link i3ConfigUnitOr goOperator


" Yaml
hi yamlBlockCollectionItemStart guifg=#f1fa8c gui='bold'
hi yamlBlockMappingKey guifg=#50fa7b

" Muttrc
hi muttrcColor guifg=#8be9fd gui='italic'

" Toml
hi tomlTable guifg=#50fa7b gui='bold'

" Roff
hi link nroffReqName nroffReqLeader

" HTML -> Markdown
hi htmlArg guifg=#50fa7b gui='italic'
hi link htmlLink markdownLinkText
hi link htmlEndTag htmlTag

" Lua -> Go
hi link luaCond luaStatement
hi link luaFunction goFunctionCall
hi link luaNumber goDecimalInt
hi link luaRepeat luaStatement
hi link luaStatement goStatement

hi luaNspireGc guifg=#f1fa8c
hi link luaNspireEvent luaNspireGc
hi link luaNspirePlatform luaNspireGc

" Make -> Go
hi makeIdent guifg=#6272a4
hi makeCommands guifg=#ff5555
hi link makeTarget goFunctionCall

" Diff/Gitcommit
hi DiffFile guifg=#6272a4 gui='bold'
hi DiffRemoved guifg=#ff5555 gui='italic'
hi DiffAdded guifg=#50fa7b
hi gitcommitSelected guifg=#8be9fd gui='bold'

" SASS
hi sassClass guifg=#6272a4 gui='bold'

" C -> Go
hi link cType goType
hi link cPreCondit cDefine

" CS -> Go
hi link csType goType
hi link csClassType csType

" xml
hi link xmlAttrib htmlArg

" fstab
hi fsTypeKeyword guifg=#6272a4 gui='bold'
hi fsOptionsGeneral guifg=#ff5555 gui='bold'

" }}}

" statusline {{{
hi ULNormalMode guifg=#f8f8f2 guibg=#6272a4 gui='bold'
hi ULInsertMode guifg=#44475a guibg=#50fa7b gui='bold'
hi ULVisualMode guifg=#44475a guibg=#f1fa8c gui='bold'
hi ULCommandMode guifg=#f8f8f2 guibg=#8be9fd gui='bold'
hi ULReadonly guifg=#ff5555 guibg=#44475a gui='bold'
hi ULDefault guifg=#f8f8f2 guibg=#44475a
hi ULModified guifg=#f1fa8c guibg=#44475a
hi ULLanguage guifg=#f8f8f2 guibg=#8be9fd
hi ULPosition guifg=#f8f8f2 guibg=#6272a4
hi UlLine guifg=#f1fa8c guibg=#6272a4
hi UlLines guifg=#8be9fd guibg=#6272a4
" }}}
