set nocompatible
filetype plugin indent on

set nu
set ts=4
set shiftwidth=4

packadd minpac
call minpac#init()

call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-scriptease',{'type':'opt'})
call minpac#add('k-takata/minpac',{'type':'opt'})

" need to run install inside fzf?
call minpac#add('junegunn/fzf')
call minpac#add('tpope/vim-projectionist')
nnoremap <C-p> : <C-u>FZF<CR>


" lsp 
call minpac#add('prabirshrestha/vim-lsp')
call minpac#add('prabirshrestha/async.vim')
call minpac#add('prabirshrestha/asyncomplete.vim')
call minpac#add('prabirshrestha/asyncomplete-lsp.vim')
call minpac#add('mattn/vim-lsp-settings')


"" for golang
if executable('gopls')
	augroup LspGo
	au!
	autocmd User lsp_setup call lsp#register_server({
		\ 'name': 'go-lang',
		\ 'cmd': {server_info->['gopls']},
		\ 'whitelist': ['go'],
		\ 'workspace_config': {'gopls': {
		\     'staticcheck': v:true,
		\     'completeUnimported': v:true,
		\     'caseSensitiveCompletion': v:true,
		\     'usePlaceholders': v:true,
		\     'completionDocumentation': v:true,
		\     'watchFileChanges': v:true,
		\     'hoverKind': 'SingleLine',
		\   }},
	\ })
	autocmd FileType go setlocal omnifunc=lsp#complete
	autocmd FileType go nmap <buffer> gd <plug>(lsp-definition)
	autocmd FileType go nmap <buffer> ,n <plug>(lsp-next-error)
	autocmd FileType go nmap <buffer> ,p <plug>(lsp-previous-error)
	augroup END

endif


" pkg update
command! Pkgupdate call minpac#update()
command! Pkgclean call minpac#clean()

