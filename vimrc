" Set theme
colorscheme dracula

" Enable line numbers
set number relativenumber

" Switch between tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Show tabs
set list
set listchars=tab:>-

" Highlight the active tab.
augroup TabColors
  autocmd!
  autocmd ColorScheme *
        \ highlight TabLineFill
        \   ctermfg=Black
        \   ctermbg=NONE
  autocmd ColorScheme *
        \ highlight TabLine
        \   ctermfg=NONE
        \   ctermbg=NONE
  autocmd ColorScheme *
        \ highlight TabLineSel
        \   ctermfg=NONE
        \   ctermbg=DarkBlue
  autocmd ColorScheme *
        \ highlight Title
        \   ctermfg=NONE
        \   ctermbg=NONE
augroup END
