
setlocal tabstop=4 shiftwidth=4 expandtab

" fill in basic file structure
function PrepareNewCFile()
    if filereadable(@%) == 0
        r ~/Docs/Data/Templates/c/basic.c
        norm ggdd3j
    endif
endfunction
autocmd BufEnter,BufNewFile *.c call PrepareNewCFile()

" save, compile and run
nnoremap <leader>p :w<CR>:!gcc -Wall -Wextra -Wconversion -o .bin-"%" "%" && ./.bin-"%"<CR>

" autowrite {{{
" includes
inoremap ;# #include <#><enter><++><Esc>k0f#s
" functions
inoremap ;n int (<++>){<Enter><++><Enter>return <++>;<Enter>}<Enter><++><Esc>4k0t(a
inoremap ;v void (<++>){<Enter><++><Enter>}<Enter><++><Esc>3k0t(a
" syntax
inoremap ;i if (){<Enter><++><Enter>}<Enter><++><Esc>3k0t)a
inoremap ;f for (int i = 0; i < #; ++i){<Enter><++><Enter>}<Enter><++><Esc>3k0f#s
inoremap ;w while (#){<Enter><++><Enter>}<Enter><++><Esc>3k0f#s
" commands
inoremap ;p printf("#", <++>);<Enter><++><Esc>k0f#s
" }}}

