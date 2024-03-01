"        _                        _            ___  _  _   
"   __ _| | _____  _____ ___   __| | ___ _ __ / _ \| || |  
"  / _` | |/ _ \ \/ / __/ _ \ / _` |/ _ \ '__| | | | || |_ 
" | (_| | |  __/>  < (_| (_) | (_| |  __/ |  | |_| |__   _|
"  \__,_|_|\___/_/\_\___\___/ \__,_|\___|_|   \___/   |_|  
" 
" Copyright (c) 2021-2022, 2024 alexcoder04 <alexcoder04@protonmail.com>
"                                                          
" init.vim for NeoVim

" basic settings {{{
filetype plugin indent on
let mapleader=" "
set autoindent
set clipboard+=unnamedplus " system keyboard
set colorcolumn=80
set cursorline
set fileformat=unix
set foldenable foldmethod=marker
set ignorecase smartcase
set mouse=nv
set number relativenumber
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set termguicolors
set timeoutlen=500
syntax on
" }}}

" colors {{{
colorscheme my

hi ULNormalMode guifg=#f8f8f2 guibg=#6272a4 gui=bold
hi ULInsertMode guifg=#44475a guibg=#50fa7b gui=bold
hi ULVisualMode guifg=#44475a guibg=#f1fa8c gui=bold
hi ULCommandMode guifg=#44475a guibg=#8be9fd gui=bold
hi ULReadonly guifg=#ff5555 guibg=#44475a gui=bold
hi ULDefault guifg=#f8f8f2 guibg=#44475a
hi ULModified guifg=#f1fa8c guibg=#44475a
hi ULLanguage guifg=#44475a guibg=#8be9fd
hi ULPosition guifg=#f8f8f2 guibg=#6272a4
hi UlLine guifg=#f1fa8c guibg=#6272a4
hi UlLines guifg=#8be9fd guibg=#6272a4
" }}}

" keybindings {{{
" working with tabs
nnoremap <leader>g :tabnext<CR>
nnoremap <leader>G :tabprevious<CR>
nnoremap <C-t> :tabnew<Space>
" working with splits
nnoremap <leader>S :split<Space>
nnoremap <leader>s :vsplit<Space>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>H <C-w>H
nnoremap <leader>J <C-w>J
nnoremap <leader>K <C-w>K
nnoremap <leader>L <C-w>L
nnoremap <leader><C-h> :vertical resize -5<CR>
nnoremap <leader><C-j> :resize +5<CR>
nnoremap <leader><C-k> :resize -5<CR>
nnoremap <leader><C-l> :vertical resize +5<CR>

" search highlight
nnoremap / :set<Space>hlsearch<CR>/

" global replace
nnoremap S :%s//g<Left><Left>

" jump to the next placeholder
inoremap ;; <Esc>:set<Space>nohlsearch<CR>/<++><CR>"_c4l
nnoremap <Space><Space> :set<Space>nohlsearch<CR>/<++><CR>"_c4l
inoremap :; ;;

" compile a project
"nnoremap <leader>b :w<CR>:!./build.sh<CR>

" add nice copyright note
nnoremap <leader>cp gg:r<Space>~/Dev/alexcoder04/copyright-note-template<CR>

" build LaTeX and MD, run Python
"autocmd BufEnter *.bm.md nnoremap <leader>P :w<CR>:!md-preview -i "%" -t beamer -e<CR>
"autocmd BufEnter *.bm.md nnoremap <leader>p :w<CR>:!md-preview -i "%" -t beamer<CR>

" line width
nnoremap <leader>ll :set tw=80<CR>

" spelling
nnoremap <leader>r :setlocal spell spelllang=en_us<CR>
nnoremap <leader>R :setlocal spell spelllang=de<CR>
nnoremap <leader><c-r> :setlocal spell!<CR>

" save session
nnoremap <leader><c-s> :mksession ./.vimsession<CR>
nnoremap <leader><c-o> :source ./.vimsession<CR>

" }}}

" other stuff {{{
" my own statusline
source $XDG_CONFIG_HOME/nvim/statusline.vim

" put current line in the middle if typing
autocmd InsertEnter * norm zz

" show syntax highlight group
function! Syn()
  for id in synstack(line("."), col("."))
    echo synIDattr(id, "name")
  endfor
endfunction
nnoremap <leader>h :call Syn()<enter>

" }}}

