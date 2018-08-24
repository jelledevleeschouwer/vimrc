""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc
" -----
"
" author: Jelle De Vleeschouwer
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make 'space' the leader
let mapleader="\<Space>"

" Execute all vimrc's in all sub-directories of ~/.vim/
function! s:SourceConfigFilesIn(directory)
   	let directory_splat = '~/.vim/' . a:directory . '/*'
 	for config_file in split(glob(directory_splat), '\n')
		if filereadable(config_file)
			execute 'source' config_file
		endif
	endfor
endfunction

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins are in their own file, go figure
filetype off
syntax on

call plug#begin('~/.vim/plugged')
call s:SourceConfigFilesIn('plugins')
call plug#end()

filetype plugin indent on

" Parse all vim configurations
call s:SourceConfigFilesIn('config')
