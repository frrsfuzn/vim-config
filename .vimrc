let g:opamshare = substitute(system('opam var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F9> :w<bar>term ++shell g++ %:p -o %:p:r && %:p:r<CR>
autocmd filetype c nnoremap <F9> :w<bar>term ++shell gcc %:p -o %:p:r && %:p:r<CR>

" go configuration
autocmd filetype go nnoremap <F9> :w<bar>term ++shell go run %:p<CR>
autocmd filetype go inoremap <F9> <Esc>:w<bar>term ++shell go run %:p<CR>
autocmd FileType go nnoremap <buffer> <leader>p i fmt.Println()<Esc>F(a
autocmd FileType go vnoremap <buffer> <leader>p cfmt.Println(<C-r>")<Esc>


set tabstop=2
set shiftwidth=2
set smartindent
set nu rnu

" Use a line cursor (ibeam) in insert mode and a block cursor otherwise
let &t_SI = "\e[6 q" " steady bar/ibeam cursor in Insert mode
let &t_EI = "\e[2 q" " steady block cursor in Normal mode


