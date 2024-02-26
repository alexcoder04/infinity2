
let mapleader=" "

" search highlight
nnoremap / :set<Space>hlsearch<CR>/

" global replace
nnoremap S :%s//g<Left><Left>

" jump to the next placeholder
inoremap ;; <Esc>:set<Space>nohlsearch<CR>/<++><CR>"_c4l
nnoremap <Space><Space> :set<Space>nohlsearch<CR>/<++><CR>"_c4l
inoremap :; ;;

set foldenable foldmethod=marker
set clipboard+=unnamedplus
