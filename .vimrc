set nocompatible
filetype plugin indent on

set nu


packadd minpac
call minpac#init()

call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-scriptease',{'type':'opt'})
call minpac#add('k-takata/minpac',{'type':'opt'})

" need to run install inside fzf?
call minpac#add('junegunn/fzf')
call minpac#add('tpope/vim-projectionist')


command! Pkgupdate call minpac#update()
command! Pkgclean call minpac#clean()

nnoremap <C-p> : <C-u>FZF<CR>
